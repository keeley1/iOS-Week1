import Foundation

/*
 Optional chaining = a process for querying and calling
 properties, methods, etc on an optional that might
 currently be nil.
 
 Optional chaining allows for failures to occur without
 causing a runtime error like force unwrapping would.
 */

// ---------- OPTIONAL CHAINING EXAMPLE ----------
// Define person and residence classes:
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let keeley = Person()

func testOptionalChaining() {
    print("Testing optional chaining:")

    if let roomCount = keeley.residence?.numberOfRooms {
        print("Keeley's residence has \(roomCount) room(s)")
    } else {
        print("Cannot retrieve number of rooms")
    }
    
    print("")
}
