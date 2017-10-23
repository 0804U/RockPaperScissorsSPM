import CRandom

enum GameItem: Int {
    case rock = 0
    case lizard
    case spock
    case scissors
    case paper

    static let count: Int = {
        var maxValue: GameItem.RawValue = 0 // assumes our enum starts with 0
        while let _ = GameItem(rawValue: maxValue) {
            maxValue += 1
        }
        return maxValue
    }()


    static func createRandomItem() -> GameItem {
        let max = Int32(GameItem.count)
        let randomRawValue = Int(CRandom.createRandomNumber(max))
        guard let randomGameItem = GameItem(rawValue: randomRawValue) else {
            fatalError("could not produce random item")
        }
        return randomGameItem
    }

    static func compare(_ item1: GameItem, _ item2: GameItem) -> GameItem? {
        if item1 == item2 { return nil }        
        let winner = (((item1.rawValue - item2.rawValue) % GameItem.count == 1)) ? item2 : item1
        return winner
    }
}