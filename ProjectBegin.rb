=begin
in this project you will be creating a program that tells people what grade they will need on a test to get a particular overall grade in the class. Look at the pseudocode below as an example of how the the UI is and how the calculation works
=end


=begin
desiredpoints = .9 x total + testworth
pointsontest= desiredpoints - earnedpoints
gradeontest= earnedpoints /testworth
=end


#Example 1

#My current overall grade is 80/100
# my next test is worth 20 points
# I want to know what grade I will need on the test in order to keep a C in the class
# I know that the overall points in the class will be 120
# and that 120*.7 is 84 so I will need a 4/20, or 20% on the next test to maintain a 70% in the class.


#Example 2

# my current grade is 45/50, a 90%
# I want to know how to move to a 95% if my next test is worth 25 points
# I know that my overall grade will be out of 75 points, and .95 of 75 is 71.25
# so the person will need 71.25-45=26.5 points on the next test or 106% to get a 95%

puts "What is your grade in this class out of 100, in decimal format? (50% = .50)" #asks the user this question
overallpercent = gets.to_f #takes information the user enters and stores it

overallpercent = overallpercent*100 #transforms the grade from decimal format to a percentage

puts "What are the total number of points in your class?" #asks the user this question
totalpoints = gets.to_f #takes information the user enters and stores it

gradepoints = totalpoints*overallpercent #takes your grade out of a 100, and multiplys it by the number of points in the class. so if you have a 90 in a class(out of a 100 points), but the class has 200 points, the computer needs to multiply the the total points(200) by the overall percent(.9). This shows that you have 180/200 points in the class.

puts "How many points is the test you took worth?" #asks the user this question
testpoints = gets.to_f #takes information the user enters and stores it

puts "What overall grade do you want in this class as a percent?" #asks the user this question
goalgrade = gets.to_f #takes information the user and stores it

new_class_total = testpoints + totalpoints #the new_class_total equals the worth of the test you took (testpoints) and the total points within your class (totalpoints) added together
goalgrade = goalgrade / 100 * new_class_total #goalgrade(what grade you want in the class) is equal to goalgrade times 100. This makes the decimal into a percent, and then the computer takes this percent and multiplys it by the new_class_total. This number will equal the amount of points that your total grade will need to equal for you to reach the goal grade.
goalgrade= (goalgrade - gradepoints) /testpoints # goalgrade equals your goalgrade minus the gradepoints you already have, to get the difference between the two sets of points. When the computer gets that number, it will divide it by the number of points on the test, to get the percent you will need to get your "goalgrade"
puts "The grade you need on this test is #{goalgrade}" #prints the percent you will need to get on this grade to reach goalgrade. 
