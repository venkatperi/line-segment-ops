Interval = require './lib/Interval'

interval = ( arg... ) -> new Interval arg...
interval.Interval = Interval

module.exports = interval
