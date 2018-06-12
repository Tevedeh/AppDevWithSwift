/*:
 ## App Exercise - Activity Challenge
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracking app shows users a list of possible challenges, grouped by activity type (i.e. walking challenges, running challenges, calisthenics challenges, weightlifting challenges, etc.) A challenge could be as simple as "Walk 3 miles a day" or as intense as "Run 5 times a week." 
 
 Using arrays of type `String`, create at least two lists, one for walking challenges, and one for running challenges. Each should have at least two challenges and should be initialized using an array literal. Feel free to create more lists for different activities.
 */
var runningChallenges: [String] = ["Run fast", "Run slow"]
var walkingChallenges: [String] = ["Walk fast", "Walk slow"]

/*:
 All of the challenges will reset at the end of the month. Use the `removeAll` to remove everything from `challenges`. Print `challenges`.
 */
print(runningChallenges)
print(walkingChallenges)

runningChallenges.removeAll()
walkingChallenges.removeAll()

print(walkingChallenges)
print(runningChallenges)

/*:
 Create a new array of type `String` that will represent challenges a user has committed to instead of available challenges. It can be an empty array or have a few items in it.
 */
var myChallenges = [String]()

/*:
 Write an if statement that will use `isEmpty` to check if there is anything in the array. If there is not, print a statement asking the user to commit to a challenge. Add an else-if statement that will print "The challenge you have chosen is <INSERT CHOSEN CHALLENGE>" if the array count is exactly 1. Then add an else statement that will print "You have chosen multiple challenges."
 */
func check(){
    if(myChallenges.isEmpty){
        print("Commit")
    } else if(myChallenges.count == 1){
        print("The challenge you have chosen is " +  myChallenges[0])
    } else{
        print("You have chosen mutliple challenges")
    }
}

myChallenges += ["walk"]

check()

myChallenges += ["walk"]

check()

//: [Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Dictionaries](@next)
