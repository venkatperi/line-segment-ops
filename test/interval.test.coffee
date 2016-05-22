assert = require 'assert'
should = require 'should'
I = require '../index'

describe 'Interval', ->

  describe 'create', ->
    it 'from string', ->
      make = -> I '1,2'
      make.should.not.throw
      i = make()
      i.a.should.equal 1
      i.b.should.equal 2

    it 'from array', ->
      make = -> I [ 1, 2 ]
      make.should.not.throw
      i = make()
      i.a.should.equal 1
      i.b.should.equal 2

    it 'from two numbers', ->
      make = -> I 1, 2
      make.should.not.throw
      i = make()
      i.a.should.equal 1
      i.b.should.equal 2

    it 'from {from:, to:}', ->
      make = -> I from : 1, to : 2
      make.should.not.throw
      i = make()
      i.a.should.equal 1
      i.b.should.equal 2

    it 'from {start:, end:}', ->
      make = -> I start : 1, end : 2
      make.should.not.throw
      i = make()
      i.a.should.equal 1
      i.b.should.equal 2

    it 'from {a:, b:}', ->
      make = -> I a : 1, b : 2
      make.should.not.throw
      i = make()
      i.a.should.equal 1
      i.b.should.equal 2

    it 'disallow reversed', ->
      (-> I 2, 1).should.throw

  describe 'degenerate', ->
    it 'when a and b are the same', ->
      assert I(1, 1).degenerate

    it 'not when when a and b are different', ->
      assert !I(1, 2).degenerate

  describe 'equality', ->
    it 'when (a,b) of both are the same', ->
      assert I(1, 1).equals(I(1, 1))
      assert !I(1, 1).equals(I(1, 2))

  describe 'spatial relationships', ->
    describe 'X within Y', ->
      it 'X is fully within Y, no touching endpoints', ->
        assert I(2, 8).within(I(1, 10))

      it 'not when X is fully within Y, with touching endpoints', ->
        assert !I(1, 8).within(I(1, 10))

      it 'not when they partially overlap', ->
        assert !I(1, 8).within(I(0, 6))

      it 'not when they nothing in common', ->
        assert !I(1, 8).within(I(-1, 0))

    describe 'X touches Y', ->
      it 'they have only one point in common', ->
        assert I(1, 15).touches(I(15, 20))

      it 'but no more', ->
        assert !I(1, 15).touches(I(10, 15))

      it 'or no less', ->
        assert !I(1, 15).touches(I(16, 17))

  describe 'X overlaps Y', ->

    it 'when they have some points in common, but not all', ->
      assert I(10, 15).overlaps(I(12, 19))

    it 'not when they are the same', ->
      assert !I(10, 15).overlaps(I(10, 15))

    it 'but not when when they have only ONE point in common (touching)', ->
      assert !I(10, 15).overlaps(I(1, 10)) # degenreate
      assert !I(10, 15).overlaps(I(15, 19)) # degenerate

    it 'and certainly not when when they have NO points in common', ->
      assert !I(10, 15).overlaps(I(16, 19)) # right
      assert !I(10, 15).overlaps(I(1, 9)) # left

  describe 'X disjoint Y', ->
    it 'when they have no points in common', ->
      assert I(10, 15).disjoint(I(17, 19))

  describe 'set theory', ->
    describe 'union', ->
      it 'when two intervals overlap, the result is is a single large' +
          ' interval', ->
        r = I(1, 10).union I(6, 13)
        assert r.equals I(1, 13)

      it 'extend to many overlapping intervals', ->
        r = I(1, 10).union I(6, 13), I(3, 9)
        assert r.equals I(1, 13)

      it 'when two intervals don\'t overlap, the union is a list of' +
          ' intervals', ->
        r = I(1, 10).union I(12, 15)
        r.length.should.equal 2
        assert r[ 0 ].equals(I 1, 10)
        assert r[ 1 ].equals(I 12, 15)

    describe 'intersection', ->
      it 'right overlap', ->
        r = I(1, 10).intersection I(6, 13)
        assert r.equals I(6, 10)

      it 'contain and touch', ->
        r = I(1, 10).intersection I(6, 10)
        assert r.equals I(6, 10)

      it 'overlap on the left', ->
        r = I(1, 10).intersection I(-1, 13)
        assert r.equals I(1, 10)

      it 'touching on the left => degenerate', ->
        r = I(1, 10).intersection I(-1, 1)
        assert r.equals I(1, 1)

      it 'no overlap => undefined', ->
        r = I(1, 10).intersection I(11, 13)
        should(r).not.exist

      it 'no overlap on left => undefined', ->
        r = I(1, 10).intersection I(-4, -1)
        should(r).not.exist

    describe 'difference', ->

      it 'right overlap => left part of a', ->
        r = I(1, 10).difference I(6, 12)
        assert r.equals(I 1, 6)

      it 'left overlap => right part of a', ->
        r = I(1, 10).difference I(-4, 5)
        assert r.equals(I 5, 10)

      it 'a fully includes b => two intervals', ->
        r = I(1, 10).difference I(4, 5)
        r.length.should.equal 2
        assert r[ 0 ].equals(I 1, 4)
        assert r[ 1 ].equals(I 5, 10)

      it 'a and b do not intersect => a', ->
        r = I(1, 10).difference I(11, 12)
        assert r.equals(I 1, 10)

      it 'b fully overlaps a => undefined', ->
        r = I(1, 10).difference I(-1, 12)
        should(r).not.exist

    describe 'xor', ->

      it 'some overlap', ->
        r = I(1, 10).xor I(6, 12)
        r.length.should.equal 2
        assert r[ 0 ].equals(I 1, 6)
        assert r[ 1 ].equals(I 10, 12)

      it 'no overlap', ->
        r = I(1, 10).xor I(12, 15)
        r.length.should.equal 2
        assert r[ 0 ].equals(I 1, 10)
        assert r[ 1 ].equals(I 12, 15)

      it 'same => undefined', ->
        r = I(1, 10).xor I(1, 10)
        should(r).not.exist

      it 'only touching', ->
        r = I(1, 10).xor I(10, 15)
        r.length.should.equal 2
        assert r[ 0 ].equals(I 1, 10)
        assert r[ 1 ].equals(I 10, 15)

      it 'fully within', ->
        r = I(1, 10).xor I(2, 8)
        r.length.should.equal 2
        assert r[ 0 ].equals(I 1, 2)
        assert r[ 1 ].equals(I 8, 10)

