{getClass, flatten} = require './helpers'

ATTRIBUTES = [ [ 'from', 'to' ], [ 'start', 'end' ], [ 'a', 'b' ] ]

###
Public: The {Interval} class represents a line segment on the
  the number line.

An [interval](http://mathworld.wolfram.com/Interval.html)
is a connected portion of the real line.

Also see [A Small Set of Formal Topological Relationships Suitable
  for End User Interaction](http://www.gdmc.nl/oosterom/atti.pdf)

A couple of definitions:
  * The boundary of an {Interval} is set of its two endpoints.
  * The interior of an {Interval} is the set of all points
    in the {Interval} less its boundary (endpoints).
###
module.exports = class Interval

  Object.defineProperty @prototype, 'a',
    get : -> @_a

  Object.defineProperty @prototype, 'b',
    get : -> @_b

  Object.defineProperty @prototype, 'degenerate',
    get : -> @_a is @_b

  Object.defineProperty @prototype, 'endpoints',
    get : -> [ @_a, @_b ]

  ###
  Public: Create a immutable {Interval} object

  Accepts the following types of inputs:
  * a {String} "<number> <sep> <number>" where sep can be any one of
    a comma, semicolon, or a space
  * a {Array<Number>} of two numbers
  * an {Object} with one of these key combinations:
    * obj.from, obj.to
    * obj.start, obj.end
    * obj.a, obj.b
  * or 2 {Numbers}
  
  ###
  constructor : ( args ) ->
    @_open = [ false, false ]
    @_init.apply @, arguments
    throw new Error 'b < a' if @b < @a

  ###
  Public: Checks if this {Interval} contains the other.

  * `other` the other {Interval} 
  
  Returns {Boolean}. True if this {Interval} `contains` the other other.

  ###
  contains : ( other ) =>
    x = @difference(other)
    return true if Array.isArray(x)
    false

  ###
  Public: Checks if this {Interval} overlaps another.
  
  For two {Interval}s to overlap they must have some points 
  but not all points.

  * `other` the other {Interval}
  
  Returns {Boolean}. True if this {Interval} overlaps the other.
  
  ###
  overlaps : ( other ) =>
    return false if @equals other
    x = @intersection(other)
    return false unless x
    !x?.degenerate

  ###
  Public: Checks if this {Interval} is fully within another.
  
  {Interval} X is said to be within another {Interval} Y if 
  X is completely within Y and neither of their endpoints touch.

  * `other` the other {Interval}

  Returns {Boolean}. True if this {Interval} is within the other.

  ###
  within : ( other ) =>
    return false unless @intersection(other)?.equals @
    new Set(@endpoints.concat other.endpoints).size is 4

  ###
  Public: Checks if this {Interval} touches anothe.

  Two line segments touch, if:
    * one their endpoints touch
    * their interiors do not share any common points

  * `other` the other {Interval}

  Returns {Boolean}. True if this {Interval} touches the other.

  ###
  touches : ( other ) =>
    x = @intersection(other)
    x?.degenerate

  ###
  Public: Checks if this {Interval} is `disjoint` with another.
  
  Two {Interval}s are disjoint if they have no points in common, 
  i.e. if their intersection is the empty set. 

  * `other` the other {Interval}

  Returns {Boolean}. True if this {Interval} is disjoint with the other.

  ###
  disjoint : ( other ) =>
    @intersection(other) is undefined

  ###
  Public: Calculates the union of the given {Intervals}
  
  A union of intervals can result in an array of unconnected parts.
  
  * `others` {Array{Interval}} One or more intervals
  
  Returns {Interval}
  Returns {Array} of {Interval}
  ###
  union : ( others... ) =>
    @_process 1, Number.MAX_VALUE, others...

  ###
  Public: Calculates the intersection, i.e. the points where they concur.
  
  * `other` the other {Interval}
  
  Returns an {Interval} with the intersection or `undefined` if the two do not intersect.
  
  ###
  intersection : ( other ) =>
    @_process 2, 2, other

  ###
  Public: Calculates the difference between this {Interval} and another.
  
  The difference between {Interval} X and Y is all of the points
  in X which are not in Y. 

  * `other` the other {Interval}
  
  Returns the difference which is one of:
    * {Interval} 
    * {Array{Interval}}
    * undefined
  
  ###
  difference : ( other ) =>
    res = @_process 1, 1, other
    # clip results to this location's extents
    res = [ res ] unless Array.isArray res
    items = []
    items = (r for r in res when (r.a >= @a) and (r.b <= @b))
    if items.length is 1 then items[ 0 ] else items

  ###
  Public: Compute an XOR with the given {Interval}
  
  The set of elements belonging to one but not both of two given sets.
  It is therefore the union of the complement of A with respect to
  B and B with respect to  A, and corresponds to the XOR operation in
  Boolean logic.
  
  * `other` the other {Interval}
  
  Returns the difference which is one of:
    * {Interval} 
    * {Array{Interval}}
    * undefined
  
  ###
  xor : ( other ) =>
    res = []
    x = @difference(other)
    res.push x if x?
    x = other.difference(@)
    res.push x if x?
    res = flatten res
    return undefined unless res.length > 0
    res


  ###
  Public: Check if both {Interval}s are equal.
  
  Two intervals are equal if their line segments are equal,
  i.e same start and end points.
  
  * `other` the other {Interval}
  
  Returns {Boolean}. True if the {Interval}s are equal.
  
  ###
  equals : ( other ) =>
    @_a is other._a and
      @_b is other._b

  ###
  Public: Get a {String} representation of this {Interval}
  
  Return {String}
  
  ###
  toString : =>
    "[#{@_a},#{@_b}]"

  _process : ( min, max, others... ) =>
    points = [ [ @a, 1 ], [ @b, -1 ] ]
    points.push [ o.a, 1 ], [ o.b, -1 ] for o in others
    points.sort ( x, y ) ->
      d = x[ 0 ] - y[ 0 ]
      if d is 0 then y[ 1 ] - x[ 1 ] else d

    acc = 0
    seg = []
    items = []
    for p in points
      acc += p[ 1 ]
      inside = (min <= acc) and (max >= acc)
      if (inside and !wasInside) or (!inside and wasInside)
        items.push p[ 0 ]
        if items.length is 2
          seg.push new Interval items
          items = []
      wasInside = inside

    switch seg.length
      when 0 then undefined
      when 1 then seg[ 0 ]
      else
        seg

  _fromString : ( str ) =>
    [a,b] = str.split /[, ;:]+/
    [@_a,@_b] = [ Number(a), Number(b) ]

  _fromArray : ( arr ) =>
    [@_a,@_b] = arr

  _fromNumber : ( num... ) =>
    [@_a,@_b] = num

  _fromObject : ( obj ) =>
    for attr in ATTRIBUTES
      if obj[ attr[ 0 ] ]
        [@_a,@_b] = [ obj[ attr[ 0 ] ], obj[ attr[ 1 ] ] ]
        return

  _init : ( arg ) =>
    type = getClass arg
    handler = @[ "_from#{type}" ]
    unless handler
      throw new Error "Can't create {Interval} from '#{arg}' (type #{type})"
    handler.apply @, arguments

      
      