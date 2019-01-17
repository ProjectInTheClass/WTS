// 아래 제시된 총 과일의 종류 수 보다 많은 과일 종류와 갯수만 출력하여라.(20)

var fruits : [String:Int] = ["Apple" : 4, "Banana" : 3, "Pear" : 9, "Strawberry" : 20, "Lime" : 6, "Peach" : 14, "Orange" : 2]

var fruitCount = fruits.count
//var values : [String:Int]
for (fruit,number) in fruits {
    if number > fruitCount{
        print("\(fruit),\(number)")
    }
}
