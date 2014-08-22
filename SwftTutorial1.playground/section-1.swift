let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1

let tutorialTeamInferred = -19
let tutorialTeamExplicit: Int = -19

let priceInferred = -19.99
let priceExplicit:Double = -19.99

let priceFloatInferred = -19.99
let priceFloatExplicit:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie"


var shoppingListExplist = [String]()
shoppingListExplist = ["Enggs","Milk"]
//var shoppingListExplist: [String] = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("the shopping list contains \(shoppingList.count) items")
shoppingList.append("Flour")
shoppingList += "Baking Power"
shoppingList += ["Chocolat Spread" , "Cheese" , "Butter"]
var firtItem = shoppingList[0]
shoppingList[0...3] = ["Bananas" , "Apples"]
shoppingList


shoppingList += ["Baking Powder"]
//shoppingList now contains 4 item

shoppingList += ["chocolate spread" , "Cheese" , "Batter"]
//shoppingList now contains 7 item

shoppingList.insert("Maple Syrup" , atIndex:0)
//shoppingList now contains 7 item
//"Maple syrup" is now the first item in the List

shoppingList.append("Flour")
//shoppingList now contains 3 item , and someone is making panckes

shoppingList += ["Baking Power"]

var firstItem = shoppingList[0]
//FirstItem is equal ti "eggs"

shoppingList [4...6] = ["Bananas" , "Apples"]
//shopinglist now contain 6 items



let array: Array<Int> = [1,2,3,45]
let dictionary = ["dog": 6,"elephant": 2]
//dictionary["dog"]


