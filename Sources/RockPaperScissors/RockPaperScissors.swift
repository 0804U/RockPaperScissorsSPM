#if os(Linux) || os(Android)
import Glibc
#else
import Foundation
#endif

enum GameItem: Int {
    case rock
    case paper
    case scissors
    case lizard
    case spock

    static let count: Int = {
        var maxValue: GameItem.RawValue = 0 // assumes our enum starts with 0
        while let _ = GameItem(rawValue: maxValue) {
            maxValue += 1
        }
        return maxValue
    }()


    static func createRandomItem() -> GameItem {
        let randomRawValue = getRandomNumberBetweenZero(and: GameItem.count)
        guard let randomGameItem = GameItem(rawValue: randomRawValue) else {
            fatalError("could not produce random item")
        }
        return randomGameItem
    }
}

#if os(Linux) || os(Android)

private func getRandomNumberBetweenZero(and max: Int) -> Int {
    var number = 0
    let stime = UInt32(time(&number))
    srand (stime)
    return random() % GameItem.count
}

#else

private func getRandomNumberBetweenZero(and max: Int) -> Int {
    return Int(arc4random_uniform(UInt32(max)))
}

#endif
