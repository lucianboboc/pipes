import XCTest
@testable import Pipes

func double(a:Int) -> Int {
    return a * 2
}

class PipesTests: XCTestCase {
    
    func testDouble() {
        XCTAssertEqual(6 |> double, 12)
    }
}

extension PipesTests {
    static var allTests : [(String, (PipesTests) -> () throws -> Void)] {
        return [
            ("testDouble", testDouble),
        ]
    }
}
