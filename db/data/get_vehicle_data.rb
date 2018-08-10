#!/usr/bin/env ../../bin/rails runner
require 'smarter_csv'
filename = 'new-adas-trims.csv'
data = SmarterCSV.process( filename )

data.each do |record|
  
  puts record[:year]
end