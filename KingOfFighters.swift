import Foundation

struct Character {
    var name: String
    var element: String
    var hp: Int

    init(name: String, element: String, hp: Int) {
        self.name = name
        self.element = element
        self.hp = hp
    }

    mutating func getDamage(_ damage: Int) {
        self.hp -= damage 
    }

    mutating func isDead() -> Bool{
        return self.hp < 1 
    }

    mutating func attack(_ enemy: inout Character) {
        print("Attacking with \(self.element)")
        enemy.getDamage(10)
    }
}

var iori = Character(name: "Iori Yagami", element: "Orochi", hp:200)
var kyo = Character(name: "Kyo Kusanagi", element: "Fire", hp: 200)

while (!iori.isDead() && !kyo.isDead()) {    
    iori.attack(&kyo)
    kyo.attack(&iori)
} 

print("END!") 