#!/usr/bin/env ruby

output = ""
IO.popen('swiftlint').each do |line|
  if line.chomp.match(/(\serror:\s)/)
    puts line.chomp
    output << line.chomp
  end
end
abort unless output.empty?
