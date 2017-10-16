import XCTest
@testable import RockPaperScissors

class RockPaperScissorsTests: XCTestCase {
    func testGameItemCount() throws {
        XCTAssertEqual(GameItem.count, 5)
    }

	static var allTests: [(String, (RockPaperScissorsTests) -> () throws -> Void)] {
		return [
			("testGameItemCount", testGameItemCount),
		]
	}
}