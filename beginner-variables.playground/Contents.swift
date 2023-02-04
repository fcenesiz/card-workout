import UIKit

// var - let
var highscore = 0

highscore = 55

let myName = "Fatih"

var currentActiveUsers = 124

currentActiveUsers = 1458

// array

var ages = [21, 55, 19, 46, 51, 44, 76, 14]

var lessons: [Int] = []

lessons.append(5)
lessons.append(51)
lessons.remove(at: 0)


lessons.insert(12, at: 0)

lessons.reverse()

ages.shuffle()

// set -> unordered, no duplicates, performance, hashing

var students = [14,56,67,68,43,78,55,47,14]

var personsSet: Set<Int> = []

var studentsSet = Set(students)

studentsSet.contains(14)

studentsSet.insert(23)

print(studentsSet)

// dictionary

let devices: [String: String] = [
    "phone": "iPhone X",
    "laptop": "2016 Macbook Pro",
    "tablet": "2018 iPad Pro",
    "desktop": "2017 iMac Pro"
]

devices["laptop"]

// functions

func printInstructorsName(name: String, surname: String){
    print(name + " " + surname)
}

printInstructorsName(
    name: "Fatih",
    surname: "Çenesiz"
)

func add(n1: Int, bunaEkle n2: Int) -> Int {
    let sum = n1 + n2
    return sum
}

add(n1: 15, bunaEkle: 48)

// if/else

var isDarkModeOn = false

if isDarkModeOn == true {
    print("That's how it shoult be.")
}else {
    print("That is not true")
}

var myHighscore = 555
var yourHightscore = 444

if myHighscore <= yourHightscore {
    print("I win")
}else {
    print("You win.")
}

if highscore > 50 {
    print("You are the best")
} else if highscore > 100 {
    print("You need improvement")
} else{
    print("Yikes")
}

// for loops

let allStars = ["James", "Davis", "Harden", "Doncic", "Leonard"]

for player in allStars{
    print(player)
}

for player in allStars where player == "Harden"{
    print(player)
}

for i in 0...25{
    print(i)
}

for i in 0..<25{
    print(i)
}

var randomInts : [Int] = []

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print(randomInts)

// enum

enum Phone {
    case iPhone11Pro
    case iPhoneSE
    case pixel
    case nokia
}

enum CellPhone: String {
    case iPhone11Pro = "apple new"
    case iPhoneSE = "apple new cheap"
    case pixel = "google cheap"
    case nokia = "nokia cheap"
}

func getSeasansOpinion(on phone: CellPhone){
    print(phone.rawValue)
}

getSeasansOpinion(on: .iPhone11Pro)

// switch  statement

func getSeasansOpinionWithSwitch(on phone: Phone){
    switch phone {
    case .iPhone11Pro:
        print(phone)
    case .nokia:
        print("nokia")
    default :
        print("default")
    }
}

getSeasansOpinionWithSwitch(on: .nokia)

// operators + - / % ...

// optionals ---------------

var apples: [Int] = [32,45,61,77,15,35,22]
apples.sort()

// if let
if let oldestApple = apples.last{
   print("The oldest apple is \(oldestApple)")
}else {
    print("There is no oldest apple. You must have no students.")
}

// nil coalescing
//let oldestapple = apples.last ?? 999

//guard statement
func getOldestApple(){
    guard let oldestApple = apples.last else {
        return
    }
    
    // a lot of code
    print("\(oldestApple) is the oldest apple.")
}
getOldestApple()

// force unwrap - danger! dont use it if u not sure.
let oldestApple = apples.last!

// self ----------------------
// selt like in java this letter

// class ---------------------
class Developer{
    var name: String?
    var jobTitle: String
    var yearsExp: Int
    
    init(){
        jobTitle = "Developer"
        yearsExp = 1
    }
    
    init(name: String, jobTitle: String, yearsExp: Int){
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func speakName(){
        print(self.name ?? "Unnamed")
    }
}

let fatih = Developer(name: "Fatih", jobTitle: "Android Developer", yearsExp: 9)

fatih.speakName()

// inheritance

class AndroidDeveloper : Developer{
    
    override init(name: String, jobTitle: String = "Android Developer", yearsExp: Int) {
        super.init(name: name, jobTitle: jobTitle, yearsExp: yearsExp)
    }
    
    override func speakName() {
        print("\(name!) - \(jobTitle)")
    }
}

let kazim = AndroidDeveloper(name: "Kazim", yearsExp: 5)
kazim.speakName()

// struct, liteweight type of class includes value types

var osman = Developer(name: "Osman", jobTitle: "Ios Developer", yearsExp: 4)

var melih = osman

melih.name = "Melih"
osman.name

struct Teacher{
    var name: String?
    var jobTitle: String
    var yearsExp: Int
}

var yasin = Teacher(name: "Yasin", jobTitle: "Math", yearsExp: 15)

var selim = yasin
selim.name = "Selim"
yasin.name
selim.name

// extension

extension String{
    func removeWhitespace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

let alphabet = "A B C D E F"
print(alphabet.removeWhitespace())
