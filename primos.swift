import Foundation

func isPrime(number: Int) -> Bool {
    if number < 2 && number > -2 {
        return false
    } else {
        var divisor = number - 1
        while divisor > 1 {
            if number % divisor == 0 {
                return false
            } else {
                divisor -= 1
            }
        }
        return true
    }
}

for number in [-1,0,1,2,3,4,5,6,7,8,9,10] {
    let isOrIsNotStatement = isPrime(number: number) ? " é " : " não é "

    print("Numero \(number)\(isOrIsNotStatement)primo!")
}
