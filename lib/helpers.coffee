getClass = ( obj ) ->
  Object::toString.call(obj).match(/^\[object\s(.*)\]$/)[ 1 ]

flatten = ( obj ) ->
  items = []
  for x in obj
    if Array.isArray x
      items.push.apply items, flatten x
    else
      items.push x
  items

module.exports =
  getClass : getClass
  flatten : flatten
