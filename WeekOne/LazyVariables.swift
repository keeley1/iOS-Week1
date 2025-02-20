import Foundation

/*
 Lazy variables = enables just-in-time calculation of expensive work.
 
 These variables are created using a function you specify only when
 that variable is first requested - if it is never requested, the function
 never runs, saving processing time.
 */

// ---------- LAZY VARIABLE EXAMPLE - DATA FETCHER ----------
// Create a lazy variable, only to be initialised when first accessed:
class DataFetcher {
    lazy var largeDataSet: [Int] = {
        print("Fetching data...")
        return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    }()
    
    func fetchData() {
        // Initialise large data set when fetchData is called:
        print(largeDataSet)
    }
}

func testLazyVar() {
    print("Testing lazy vars:")
    
    let dataFetcher = DataFetcher()
    
    // fetch data and trigger lazy variable to be initialised:
    dataFetcher.fetchData()
    
    print("")
}
