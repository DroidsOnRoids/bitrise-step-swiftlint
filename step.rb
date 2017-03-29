#!/usr/bin/env ruby

output = ""
IO.popen('swiftlint').each do |line|
  puts line.chomp
  output << line.chomp if line.chomp.match(/(error:)/)
end
abort unless output.empty?
