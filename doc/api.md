## API

### Interval <sub><sup><code>CLASS</code></sup></sub> <sub><sup><code>PUBLIC</code></sup></sub>
The [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) class represents a line segment on the
  the number line.

An [interval](http://mathworld.wolfram.com/Interval.html)
is a connected portion of the real line.

Also see [A Small Set of Formal Topological Relationships Suitable
  for End User Interaction](http://www.gdmc.nl/oosterom/atti.pdf)

A couple of definitions:

* The boundary of an [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is set of its two endpoints.
* The interior of an [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is the set of all points
  in the [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) less its boundary (endpoints).


#### Methods <sub><sup><code>Interval</code></sup></sub>


<code>Interval::**constructor(****)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**


Create a immutable [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) object

Accepts the following types of inputs:

* a [{String}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String) "<number> <sep> <number>" where sep can be any one of
  a comma, semicolon, or a space
* a {Array<Number>} of two numbers
* an [{Object}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object) with one of these key combinations:
  * obj.from, obj.to
  * obj.start, obj.end
  * obj.a, obj.b
* or 2 `{Numbers}`



<hr/>

<code>Interval::**contains(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) 

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) contains the other.

<em>Returns</em>
* <code>Boolean:</code> Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) `contains` the other other.


<hr/>

<code>Interval::**overlaps(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) overlaps another.

For two [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)s to overlap they must have some points 
but not all points.

<em>Returns</em>
* <code>Boolean:</code> Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) overlaps the other.


<hr/>

<code>Interval::**within(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is fully within another.

[{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) X is said to be within another [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) Y if 
X is completely within Y and neither of their endpoints touch.

<em>Returns</em>
* <code>Boolean:</code> Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is within the other.


<hr/>

<code>Interval::**touches(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) touches anothe.

Two line segments touch, if:

* one their endpoints touch
* their interiors do not share any common points

<em>Returns</em>
* <code>Boolean:</code> Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) touches the other.


<hr/>

<code>Interval::**disjoint(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is `disjoint` with another.

Two [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)s are disjoint if they have no points in common, 
i.e. if their intersection is the empty set. 

<em>Returns</em>
* <code>Boolean:</code> Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is disjoint with the other.


<hr/>

<code>Interval::**union(**others**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>others:</code> {Array[{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)} One or more intervals

Calculates the union of the given `{Intervals}`

A union of intervals can result in an array of unconnected parts.

<em>Returns</em>
* <code>Interval:</code> Returns [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)
* <code>Array:</code> Returns [{Array}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array) of [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)


<hr/>

<code>Interval::**intersection(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Calculates the intersection, i.e. the points where they concur.

<em>Returns</em>
* <code>Interval:</code> Returns an [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) with the intersection or `` if the two do not intersect.


<hr/>

<code>Interval::**difference(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Calculates the difference between this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) and another.

The difference between [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) X and Y is all of the points
in X which are not in Y. 

<em>Returns</em>
* <code>Interval:</code> Returns the difference which is one of:

* [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) 
* {Array[{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)}
*


<hr/>

<code>Interval::**xor(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Compute an XOR with the given [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

The set of elements belonging to one but not both of two given sets.
It is therefore the union of the complement of A with respect to
B and B with respect to  A, and corresponds to the XOR operation in
Boolean logic.

<em>Returns</em>
* <code>Interval:</code> Returns the difference which is one of:

* [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) 
* {Array[{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)}
*


<hr/>

<code>Interval::**equals(**other**)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**

* <code>other:</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Check if both [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)s are equal.

Two intervals are equal if their line segments are equal,
i.e same start and end points.

<em>Returns</em>
* <code>Boolean:</code> Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if the [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)s are equal.


<hr/>

<code>Interval::**toString(****)**</code> **<sub><sup><code>PUBLIC</code></sup></sub>**


Get a [{String}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String) representation of this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Return [{String}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)





