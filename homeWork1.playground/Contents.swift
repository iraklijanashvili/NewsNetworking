import Foundation

//1. შექმენით ორი მუდმივა (let) და ორი ცვლადი (var) სხვადასხვა ტიპის (Int, Double, String, Bool). მიანიჭეთ მათ მნიშვნელობები და დაბეჭდეთ.

let age: Int = 25
let decimal: Double = 25.123456789012345
var name: String = "ირაკლი"
var isStudent: Bool = true

print("ასაკი: \(age)")
print("ათწილადი: \(decimal)")
print("სახელი: \(name)")
print("არის სტუდენტი: \(isStudent)")

//2. შექმენით Int ტიპის ცვლადი და გამოიყენეთ არითმეტიკული ოპერატორები (+, -, *, /) სხვადასხვა ოპერაციების შესასრულებლად. დაბეჭდეთ შედეგები.

var n: Int = 5
n += 2
print(n)
n -= 2
print(n)
n *= 2
print(n)
n /= 5
print(n)

//3. შექმენით ორი Double ტიპის ცვლადი და გამოიყენეთ შედარების ოპერატორები (==, !=, >, <, >=, <=) მათ შესადარებლად. დაბეჭდეთ შედარების შედეგები.

let a: Double = 1.11
let b: Double = 2.22
print(a == b)
print(a != b)
print(a > b)
print(a < b)
print(a >= b)
print(a <= b)

//4. შექმენით String ტიპის ცვლადი თქვენი სახელით და Character ტიპის მუდმივა თქვენი სახელის პირველი ასოთი. გამოიყენეთ სტრინგის ინტერპოლაცია ორივე მნიშვნელობის დასაბეჭდად ერთ წინადადებაში.

let myName: String = "ირაკლი"
let firstLetter: Character = "ი"
print("ჩემი სახელია \(myName) და ჩემი სახელის პირველი ასო არის \(firstLetter).")

//5. შექმენით Optional String ტიპის ცვლადი. გამოიყენეთ optional binding (if let), რომ უსაფრთხოდ ამოიღოთ მნიშვნელობა და დაბეჭდოთ ის.

let optionalName: String? = "ირაკლი"

if let name = optionalName {
    print("გამარჯობა, \(name)!")
} else {
    print("სახელი არ არის მითითებული.")
}

//6. დაწერეთ for-in ციკლი, რომელიც დაბეჭდავს რიცხვებს 1-დან 10-მდე.

for number in 1...10 {
    print(number)
}

//7. შექმენით Int ტიპის ცვლადი და გამოიყენეთ while ციკლი, რომ დაბეჭდოთ მისი მნიშვნელობა 0-მდე (ყოველ იტერაციაზე აკლებთ 1-ს).

var x: Int = 10

while x > 0 {
    print(x)
    x -= 1
}

//თუ გვინდა 0 ჩათვლით

//var x: Int = 10
//
//while x >= 0 {
//    print(x)
//    x -= 1
//}

//8. დაწერეთ if-else if-else სტრუქტურა, რომელიც შეამოწმებს Int ტიპის ცვლადის მნიშვნელობას და დაბეჭდავს შესაბამის შეტყობინებას (მაგალითად, დადებითია, უარყოფითია თუ ნულის ტოლი).

let y: Int = 5

if y > 0 {
    print("რიცხვი \(y) არის დადებითი.")
}else if y == 0 {
    print("რიცხვი \(y) არის ნულის ტოლი.")
}else {
    print("რიცხვი \(y) არის უარყოფითი.")
}

//9. შექმენით ორი Int ტიპის ცვლადი: number და sum. გამოიყენეთ while ციკლი number-ის ციფრების ჯამის გამოსათვლელად და შედეგი შეინახეთ sum-ში. მაგალითად, თუ number არის 1234, sum უნდა იყოს 10 (1+2+3+4). დაბეჭდეთ საწყისი რიცხვი და მიღებული ჯამი.

var number = 5678
var sum = 0
var originalNumber = number


while number > 0 {
    sum += number % 10
    number /= 10
}

print("რიცხვი \(originalNumber)-ის ციფრების ჯამია: \(sum)")

//10. შექმენით String ტიპის ცვლადი სიტყვით და Int ტიპის ცვლადი სახელით count ნულის მნიშვნელობით. გამოიყენეთ for-in ციკლი სიტყვაში ხმოვნების (a, e, i, o, u) დასათვლელად. ყოველი ხმოვნის შემთხვევაში გაზარდეთ count ერთით. ციკლის დასრულების შემდეგ დაბეჭდეთ საწყისი სიტყვა და მასში ნაპოვნი ხმოვნების რაოდენობა.

var word: String = "ირაკლი"
var count: Int = 0
for char in word {
    switch char {
    case "ა", "ე", "ი", "ო", "უ":
        count += 1
    default:
        continue
    }
}
print("სიტყვაში '\(word)' არის \(count) ხმოვანი.")
//11. შექმენით სტრინგ ტიპის ცვლადი და მიანიჭეთ მნიშვნელობა, დაბეჭდეთ მისი შებრუნებული მნიშვნელობა, მაგ: “xCode” -> “”edoCx”

var originalString: String = "xCode"
var reversedString = ""

for char in originalString {
    reversedString = "\(char)" + reversedString
}

print("შებრუნებული მნიშვნელობა: \(reversedString)")

//12. შქმენით Int ტიპის ცვლადი და მიანიჭეთ მას ორნიშნა მნიშვნელობა, შეამოწმეთ შედგება თუ არა ეს რიცხვი ერთი და იგივე ციფრებისგან.

let z: Int = 31
let number1 = z / 10
let number2 = z % 10

if number1 == number2 {
    print("რიცხვი \(z) შედგება ერთი და იგივე ციფრებისგან.")
} else {
    print("რიცხვი \(z) არ შედგება ერთი და იგივე ციფრებისგან.")
}
