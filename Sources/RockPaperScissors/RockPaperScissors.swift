import Glibc

enum GameItem: Int {
    case rock
    case paper
    case scissors
    case lizard
    case spock

    static let count: Int = {
        var maxValue: GameItem.RawValue = 0
        while let _ = GameItem(rawValue: maxValue) { 
            maxValue += 1
        }
        return maxValue
    }()


    static func getRandom() -> GameItem {
        var number: Int = 0
        let stime = UInt32(time(&number))
        srand (stime)
        let randomRawValue = (random() % GameItem.count)
        guard let randomGameItem = GameItem(rawValue: randomRawValue) else {
            print("could not produce random item")
            return .rock
        }
        return randomGameItem
    }
}