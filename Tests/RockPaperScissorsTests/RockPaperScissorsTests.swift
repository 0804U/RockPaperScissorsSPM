import XCTest
@testable import RockPaperScissors

class RockPaperScissorsTests: XCTestCase {
    func testGameItemCount() {
        XCTAssertEqual(GameItem.count, 5)
    }
}


//  provide a list with all test methods in the test class as a static variable
#if os(Linux)
extension RockPaperScissorsTests {
	static var allTests : [(String, (RockPaperScissorsTests) -> () throws -> Void)] {
		return [
			("testGameItemCount", testGameItemCount),
		]
	}
}
#endif