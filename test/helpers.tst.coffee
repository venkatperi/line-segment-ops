should = require 'should'
{flatten} = require '../lib/helpers'

describe 'helpers', ->

  describe 'flatten', ->
    it 'flatten', ->
      x = [ 1, [ 2 ], 3, [ 4, 5 ] ]
      flatten(x).should.eql [ 1, 2, 3, 4, 5 ]

