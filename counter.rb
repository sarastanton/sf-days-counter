#!/usr/local/bin/ruby

require 'date'

start_date = Date.new(2019,4,16)

today = Date.today

# days_num = (today - start_date).to_i
days_num = 40
weeks_num = (days_num / 7).floor
months_num = (days_num / 30.417).floor
years_num = (days_num / 365).floor

leftover_months = ((days_num % 365) / 30) > 0 ? ((days_num % 365) / 30).floor : 0
leftover_weeks = (((days_num / 365) % 30) / 7) > 0 ? (((days_num / 365) % 30) / 7).floor : 0
leftover_days = (((days_num / 365) / 30) % 7).floor

puts "You have been at ScaleFactor for #{days_num} days! 🥳"

if days_num > 365
  months_num =
  weeks_num =
  leftover_days_num =
  puts "That's #{years_num} years, #{leftover_months} months, #{leftover_weeks} weeks, and #{leftover_days_num} days!"

elsif days_num > 30
  puts "That's #{months_num} months, #{leftover_weeks} weeks, and #{leftover_days} days!"

elsif days_num > 7

  puts "That's #{weeks_num} weeks and #{leftover_days} days!"
end

puts "days_num - #{days_num}"
puts "weeks_num - #{weeks_num}"
puts "months_num - #{months_num}"
puts "years_num - #{years_num}"

puts "leftover_months - #{leftover_months}"
puts "leftover_weeks  - #{leftover_weeks}"
puts "leftover_days  - #{leftover_days}"
