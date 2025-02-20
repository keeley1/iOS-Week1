import Foundation

/*
 Closure = self contained block of code that can be passed
 around and used in code.
 
 Closures are similar to lambdas in other languages.
 
 Types of closures:
 - Global functions: named functions that do not capture any values.
 - Nested functions: named functions that can capture values from their surrouding
 context.
 - Closure expressions: anonymous closures, often used for short-lived situations
*/

// ---------- BASIC CLOSURE EXAMPLE ----------
let simpleClosure: (Int, Int) -> Int = { (a, b) in
    return a + b
}

func testSimpleClosure() {
    print("Testing simple closure:")
    print("Simple closure result: \(simpleClosure(15, 5))")
    print("")
}

// ---------- CLOSURES AS FUNCTION ARGUMENTS ----------
let numbers: [Int] = [1, 2, 3, 4, 5]

/*
 sorted function takes a closure as an argument - the closure determines how elements should
 be sorted
 */
let sortedNumbers = numbers.sorted { (a, b) -> Bool in
    return a < b
}

func testClosureAsFuncArg() {
    print("Testing closure as a function argument:")
    print("Sorted numbers: \(sortedNumbers)")
    print("")
}

// ---------- CLOSURES AS RETURN TYPES ----------
func makeMultiplier(multiplier: Int) -> (Int) -> Int {
    let multiplierClosure: (Int) -> Int = { value in
        return value * multiplier
    }
    return multiplierClosure
}

func testClosureAsReturnType() {
    print("Testing closure as a return type:")
    
    let multiplyByThree = makeMultiplier(multiplier: 3)
    print("Multiplied number: ", multiplyByThree(20))
    
    print("")
}
