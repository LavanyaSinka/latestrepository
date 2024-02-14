#
# Cookbook:: ThirdCookBook
# Recipe:: StringProgram
#
# Copyright:: 2024, The Authors, All Rights Reserved.

def check_string(str,n)
str= str[n...-1]
return str
end

print check_string("Delhi",2)
print "\n",check_string("Besant technologies",5)
print "\n",check_string("javascript",4)
print "\n",check_string("india",1)
print "\n",check_string("unitedstates",7)
print "\n",check_string("Demo@5432!",3)
print "\n",check_string("bangalore",2)
print "\n",check_string("marathalli",6)

#the the output of first is "lhi"
#t  technologies
#script
#ndia
#tates
#o@5432!
#ngalore
#alli
