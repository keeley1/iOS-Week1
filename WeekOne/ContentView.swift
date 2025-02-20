import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            // variables
            testWeakVar()
            testLazyVar()
            
            // closures
            testSimpleClosure()
            testClosureAsFuncArg()
            testClosureAsReturnType()
            
            // functions
            testVariadicParams()
            testInOutParam()
            
            // optional chaining
            testOptionalChaining()
            
            // calculate factorial
            var number = 5
            print("Factorial: ", calculateFactorial(&number))
        }
    }
}

/*
 - write a program to calculate the factorial of a number
 - write a program to take in an array of integers and return sum of all elements
 */

#Preview {
    ContentView()
}
