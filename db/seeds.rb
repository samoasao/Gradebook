# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Students
andre = Student.create(name: 'Andre')
natasha = Student.create(name: 'Natasha')
sonya = Student.create(name: 'Sonya')
pierre = Student.create(name: 'Pierre')
anatole = Student.create(name: 'Anatole')

#Objectives
notHere_obj = Objective.create(description: "Isn't here")
isYoung_obj = Objective.create(description: "Is young")
isGood_obj = Objective.create(description: "Is good")
isOld_obj = Objective.create(description: "Is old school")
isHot_obj = Objective.create(description: "Is hot")

#add objectives
andre.objectives << notHere_obj << isYoung_obj
natasha.objectives << isYoung_obj << isGood_obj
sonya.objectives << isGood_obj << isYoung_obj
pierre.objectives << isOld_obj << isGood_obj
anatole.objectives << isHot_obj << isYoung_obj


#Subjects
math = Subject.create(name: 'Math')
english = Subject.create(name: 'English')
science = Subject.create(name: 'Science')
history = Subject.create(name: 'History')

#Schedule Items



