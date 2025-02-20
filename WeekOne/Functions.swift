import Foundation

/*
 Variadic parameters = accepts zero or more values of a specified
 type.
 
 Values passed into a variadic parameter are made available within
 the function body as an array of the appropriate type.
 */

// ---------- VARIADIC PARAMETER EXAMPLE ----------
func calculateMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}

func testVariadicParams() {
    print("Testing variadic parameters:")
    
    print("Testing with values: ", calculateMean(1, 2, 3, 4))
    print("Testing with different values: ", calculateMean(5.5, 4.5, 8.5))
    
    print("")
}

/*
 In-Out parameters = has a value that is passed in to a function, is
 modified by the function, and is passed back out by the function to
 replace the original value.
 
 An ampersand (&) is placed before a variable name when it is passed
 as an argument to an in-out parameter.
 */

// ---------- IN-OUT PARAMETER EXAMPLE ----------
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func testInOutParam() {
    var numOne = 6
    var numTwo = 10
    
    swapTwoInts(&numOne, &numTwo)
    
    print("Testing in-out params:")
    print("numOne was 6 and is now \(numOne), numTwo was 10 and is now \(numTwo)")
    print("")
}
