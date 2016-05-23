## API

 Class |  Summary
 ------| ------------
 <code>[Interval](#class-Interval)</code> | The [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) class represents a line segment on the   the number line.

### <a name="class-Interval">Interval</a> <b><sub><sup><code>CLASS  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="Back to Class List" height= "16px">](#classes)

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

######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


#### Properties

<code><a href="#class-Interval">Interval::</a>**a</code>** <b><sub><sup><code>PUBLIC  </code></sup></sub></b>

[{Number}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number) The start/left endpoint of this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) 

######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>



<code><a href="#class-Interval">Interval::</a>**b</code>** <b><sub><sup><code>PUBLIC  </code></sup></sub></b>

[{Number}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number) The end/right endpoint of this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) 

######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>



<code><a href="#class-Interval">Interval::</a>**degenerate</code>** <b><sub><sup><code>PUBLIC  </code></sup></sub></b>

[{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean) True if this `{Instance}` has the same start and end points 


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


#### Methods


<code><a href="#class-Interval">Interval::</a></a>**constructor(**arg1[, arg2]**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L55)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>arg1</code> can be a [{String}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String) or an [{Array}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array) or [{Object}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object) or a [{Number}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)
* <code>arg2</code> [{Number}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)

Creates a immutable [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) object

`arg1` can be a:

* [{String}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String): `<number> <sep> <number>` where sep
  can be any one of a comma, semicolon, or a space
* [{Array}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)  of two [{Number}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)s
* [{Object}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object) with one of these key combinations:
    `{from, to}` `{start, end}`  `{a, b}`
* a [{Number}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number), in which case `arg2` must be defined



######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**contains(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L68)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) contains the other.

<em>Returns</em>
* Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) `contains` the other other.


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**overlaps(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L84)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) overlaps another.

For two [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)s to overlap they must have some points
but not all points.

<em>Returns</em>
* Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) overlaps the other.


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**within(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L101)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is fully within another.

[{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) X is said to be within another [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) Y if
X is completely within Y and neither of their endpoints touch.

<em>Returns</em>
* Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is within the other.


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**touches(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L117)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) touches anothe.

Two line segments touch, if:

* one their endpoints touch
* their interiors do not share any common points

<em>Returns</em>
* Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) touches the other.


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**disjoint(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L132)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Checks if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is `disjoint` with another.

Two [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)s are disjoint if they have no points in common,
i.e. if their intersection is the empty set.

<em>Returns</em>
* Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) is disjoint with the other.


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**union(**others**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L145)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>others</code> {Array[{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)} One or more intervals

Calculates the union of the given `{Intervals}`

A union of intervals can result in an array of unconnected parts.

<em>Returns</em>
* Returns [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)
* Returns [{Array}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array) of [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**intersection(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L157)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Calculates the intersection, i.e. the points where they concur.

<em>Returns</em>
* Returns an [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) with the intersection or `` if the two do
not intersect.


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**difference(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L174)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Calculates the difference between this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) and another.

The difference between [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20) X and Y is all of the points
in X which are not in Y.

<em>Returns</em>
* Returns the difference which is one of:

* [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)
* {Array[{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)}
*


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**xor(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L198)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Compute an XOR with the given [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

The set of elements belonging to one but not both of two given sets.
It is therefore the union of the complement of A with respect to
B and B with respect to  A, and corresponds to the XOR operation in
Boolean logic.

<em>Returns</em>
* Returns the difference which is one of:

* [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)
* {Array[{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)}
*


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**equals(**other**)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L220)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)

* <code>other</code> the other [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Check if both [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)s are equal.

Two intervals are equal if their line segments are equal,
i.e same start and end points.

<em>Returns</em>
* Returns [{Boolean}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean). True if the [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)s are equal.


######<a href="#" target="_blank"><img src="https://rawgit.com/venkatperi/atomdoc-md/master/assets/line.png" width="100%" height="1px"></a>


<code><a href="#class-Interval">Interval::</a></a>**toString(****)**</code> <b><sub><sup><code>PUBLIC  </code></sup></sub></b> [<img src="https://cdn.rawgit.com/github/octicons/master/svg/code.svg" alt="" height= "16px">](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L230)
 [<img src="https://cdn.rawgit.com/github/octicons/master/svg/arrow-up.svg" alt="" height= "16px">](#class-Interval)


Get a [{String}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String) representation of this [{Interval}](https://github.com/venkatperi/line-segment-ops/blob/v0.1.0/lib/Interval.coffee#L20)

Return [{String}](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)








