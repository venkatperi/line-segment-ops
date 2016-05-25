# line-segment-ops
Set Theory and Topological Relationships on Line Segments

# Installation
Install with npm.

```
npm install --save line-segment-ops
```

# Examples
## Create Interval
```coffeescript
Interval = require('line-interval-ops')

i = new Interval("1,2")             #from string
i = new Interval("1 2")             #from string
i = new Interval("1;2")             #from string

i = new Interval([1,2])             #from array

i = new Interval from: 1, to:2      #object
i = new Interval start: 1, end:2    #object
i = new Interval a: 1, b:2          #object

i = new Interval(1,2)               #from two numbers
```

##Spatial Relationships
```coffeescript
I = require('line-interval-ops')

I(2, 8).within(I(1, 10))    #true
I(2, 8).within(I(1, 10))    #false, endpoints touching

I(1,1)                      #degenerate => true

I(2, 8).within(I(1, 10))    #disjoint => true

```

#Set Operations
### Union
```coffeescript
I(1, 10).union I(6, 13), I(3, 9)
# => I(1, 13)
```

```coffeescript
I(1, 10).union I(12, 15)
# => [I(1, 10), I(12, 15)]
```

### XOR
```coffeescript
I(1, 10).xor I(6, 12)
# => [ I(1, 6), I(10, 12)]
```

