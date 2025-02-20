import Foundation

// Calculate factorial with while loop
func calculateFactorial(_ number: inout Int) -> Int {
    var total = 1
    
    while number > 0 {
        total *= number
        number -= 1
    }
    return total
}
