# RockPaperScissors: Swift on Linux Show & Tell

### Setup

```
mkdir RockPaperScissors && cd RockPaperScissors
touch main.swift RockPaperScissors.swift
```

Paste code from Gist: https://gist.github.com/rikner/1b964f54fbd25afdd1701f6ff75e3c62




#### make code for linux compatible for macOS
- introduce swiftc
- get gist "main.swift" and "RockPaperScissors.swift" and make it Darwin-compatible

#### create swift package
- intruduce swift package:

    `swift package init type --executable`

- add Commander dep
- add CRandom
- add Tests