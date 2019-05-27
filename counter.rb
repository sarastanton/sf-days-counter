#!/usr/local/bin/ruby

require 'date'
require 'active_support/inflector'

start_date = Date.new(2019,4,16)

today = Date.today

initial_days_num = (today - start_date).to_i

years_count = 0
days_num = initial_days_num
until (365 - days_num) > 0
  years_count += 1
  days_num -= 365
end

months_count = 0
until (30 - days_num) > 0
  months_count += 1
  days_num -= 30
end

weeks_count = 0
until (7 - days_num) > 0
  weeks_count += 1
  days_num -= 7
end
  days_count = days_num

year_label = years_count > 1 || years_count == 0 ? "years" : "year"
month_label = months_count > 1 || months_count == 0 ? "months" : "month"
week_label = weeks_count > 1 || weeks_count == 0 ? "weeks" : "week"
day_label = days_count > 1 || days_count == 0 ? "days" : "day"

puts "You have been at ScaleFactor for #{initial_days_num} days! 🥳"

if initial_days_num > 365
  puts "That's #{years_count} #{year_label}, #{months_count} #{month_label}, #{weeks_count} #{week_label}, and #{days_count} #{day_label}!"

elsif initial_days_num > 30
  puts "That's #{months_count} #{month_label}, #{weeks_count} #{week_label}, and #{days_count} #{day_label}!"

elsif initial_days_num > 7
  puts "That's #{weeks_count} #{week_label}, and #{days_count} #{day_label}!"

end
