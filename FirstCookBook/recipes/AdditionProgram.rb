#
# Cookbook:: FirstCookBook
# Recipe:: AdditionProgram
#
# Copyright:: 2024, The Authors, All Rights Reserved.


=begin
program to add two numbers
=end
#insert the numbers and add it
puts "enter the first value"
num1=gets.chomp.to_i
puts "enter the second value"
num2=gets.chomp.to_i
#add these two numbers
sum=num1+num2
#print the sum
puts "the sum is #{sum}"
