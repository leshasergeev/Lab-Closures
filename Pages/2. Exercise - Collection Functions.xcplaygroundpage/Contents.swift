/*:
 ## Exercise - Passing Closures as Arguments and Syntactic Sugar

 Define a function `forward` that has two `String` arguments, `name1` and `name2`, and returns a `Bool`. Within the definition of the function, print each of the arguments, then return whether `name1` is less than `name2`. You can use comparison operators, such as `<` and `>`, to compare alphabetical order in strings.
 */
let forward = {(name1: String, name2: String) -> Bool in
//    print(name1)
//    print(name2)
    return name1 < name2
}

/*:
 Create a `[String]` collection using names of your friends and family. Call the collection's `sorted(by:)` function, passing in `forward` as the argument. Store the result into `sortedCollection1`, then print the result. This should sort your collection alphabetically.
 */
var names = ["Mary", "Victoria", "Anna", "Alex"]

do {
    var sortedNames = names.sorted(by: forward)
    print(sortedNames)
} catch {
    print(error)
}
/*:
 Using your initial collection of unsorted friend and family names, call the collection's `sorted(by:)` function, but pass in your own closure instead of the `forward` function. The closure should sort the collection in the same way as `forward`. Be sure to include parameter names, parameter types, and the `return` statement within your closure. Store the result in `sortedCollection2`, then print the result.
 */


/*:
 Similar to the previous exercise, call the collection's `sorted(by:)` function, but remove as much of the unnecessary closure syntax as you can. Store the result in `sortedCollection3`, then print the result.
 */
let sortedNames = names.sorted(by: >)
print(sortedNames)

//: [Previous](@previous)  |  page 2 of 3  |  [Next: Exercise - Collection Functions](@next)
