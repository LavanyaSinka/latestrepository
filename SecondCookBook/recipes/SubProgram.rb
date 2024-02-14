#
# Cookbook:: SecondCookBook
# Recipe:: SubProgram
#
# Copyright:: 2024, The Authors, All Rights Reserved.

#sort the strings alphabetically
def check_string(str)
return str.chars.sort.join
end
print check_string("Python")
#output of the above string should be hnopty
print "\n",check_string("Delhi")
print "\n",check_string("html")
print "\n",check_string("css")
print "\n",check_string("javascript")
print "\n",check_string("India")
print "\n",check_string("golang")
