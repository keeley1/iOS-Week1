import Foundation

// By default, all swift variables are strong:
var myNumber = 12

/*
 This means that they will not be removed from the RAM until
 whatever owns them is removed from the RAM. A weak variable is a
 reference to an object that does not keep a strong hold on that object.
 
 Weak variables are used to avoid retain cycles and prevent memory leaks.
 
 When the object a weak reference points to is deallocated, the weak reference
 is set to nil.
 */

// ---------- WEAK VARIABLE EXAMPLE - DELEGATE PATTERN ----------
// Define a protocol that specifies methods the delegate must implement:
protocol MyDelegate: AnyObject {
    func didPerformAction()
}

// Define a delegating class:
class MyClass {
    // Mark delegate property as weak to avoid retain cycle:
    weak var delegate: MyDelegate?
    
    func performAction() {
        print("Performing action")
        
        // Notify the delegate when the action is performed:
        delegate?.didPerformAction()
    }
}

// Define class that conforms to MyDelegate protocol:
class MySecondClass: MyDelegate {
    func didPerformAction() {
        print("Action performed!")
    }
}

func testWeakVar() {
    print("Testing weak vars:")
    
    // Use delegate pattern:
    let myClass = MyClass()
    let mySecondClass = MySecondClass()

    myClass.delegate = mySecondClass
    myClass.performAction()
    
    print("")
}

/*
 The delegate pattern is used when one object needs to communicate with
 another without creating a strong dependency.
 
 MyClass is used to send messages (via didPerformAction()) to MySecondClass
 - the weak reference ensures that MyClass doesn't keep mySecondClass alive, and
 vice versa.
 */

/*
 Example:
 Imagine you’re building a UI app. The ViewController (e.g., MyClass) might have a delegate property for handling actions (e.g., MySecondClass is responsible for updating the UI after an action). You don’t want the ViewController to keep alive the delegate indefinitely, because the delegate is simply responding to actions. If you used a strong reference here, the delegate might never be deallocated, even if the user navigates away from the view.
 */
