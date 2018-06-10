/*:
 ## Exercise - Parameters and Argument Labels
 
 Write a new introduction function called `introduction`. It should take two `String` parameters, `name` and `home`, and one `Int` parameter, `age`. The function should print a brief introduction. I.e. if "Mary," "California," and 32 were passed into the function, it might print "Mary, 32, is from California." Call the function and observe the printout.
 */
func introduction(me name: String, house home: String, old age: Int){
    print("I am \(name) from \(home) and I am \(age)")
}
introduction(me: "hello", house: "eagan", old: 21)

func introduction2(_ name: String, _ home: String, _ age: Int = 30){
    print("I am \(name) from \(home) and I am \(age)")
}
introduction2("hello", "eagan")
/*:
 Write a function called `almostAddition` that takes two `Int` arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.
 */
func almostAddition(_ one: Int, _ two: Int){
    print(one+two-2)
}
almostAddition(5, 3)
/*:
 Write a function called `multiply` that takes two `Double` arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, "by", that differs from the internal label. Call the function and observe the printout.
 */
func multiply(_ one: Double, by two: Double){
    print(one*two)
}

multiply(5, by: 3)

//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Progress Updates](@next)
