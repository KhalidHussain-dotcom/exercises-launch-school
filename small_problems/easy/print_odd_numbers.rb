(1..99).each { |num| puts num if num.odd? }

puts (1..99).select { |num| num.odd? }
