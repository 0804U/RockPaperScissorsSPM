#if os(Linux) || os(Android)
import Glibc
#else
import Darwin
#endif


import Commander

for count in 1...4 {
    print(count)
    sleep(1)
}

let main = command { (item:String) in
    guard let number = Int(item) else {
        print("no number")
        return
    }

    guard let item = GameItem(rawValue: number) else {
        print("number must be 0 ..< " + String(describing: GameItem.count))
        return
    }

    let randomItem = GameItem.createRandomItem()

    print(String(describing: item) + " vs. " + String(describing: randomItem))

    print("And the Winner is: " + String(describing: GameItem.compare(randomItem, item)))
}

main.run()

