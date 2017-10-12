import Glibc
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

    let randomItem = GameItem.getRandom();
    print(String(describing: item) + " vs. " + String(describing: randomItem))
}

main.run()
