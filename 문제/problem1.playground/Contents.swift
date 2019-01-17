/* problem1 (30)

 철수의 장보기 문제
 
 철수는 동국마트에 장을 보러갔다. 철수는 동국마트의 VIP 회원이라서 쿠폰을 가지고 있다.
 쿠폰은 다음과 같이 품목별로 할인율이 정해져 있고
 쿠폰으로 할인 받기 위해 구매해야되는 최소 개수가 정해져 있다.
 
 과일 : 10% / 과자 : 20% / 육류 : 30% / 수산물 : 40%
 과일 : 3개 / 과자 : 6개 / 육류 : 2개 / 수산물 : 4개
 
 철수가 장을 보는 물건들의 목록을 보고 얼마나 할인받을 수 있을지 계산하는 함수를 적어보시오
 
*/



import Foundation

class Market {
    let fruit = [ "딸기","사과","바나나","수박","참외"]
    let snack = [ "홈런볼", "콘칩", "스윙칩", "깐쵸", "프링글스", "자갈치", "오레오", "꼬북칩"]
    let meet = [ "소", "돼지", "양", "닭"]
    let fish = [ "광어","고등어","도미","연어","참치"]

    
    class func calculate(_ source:[String: [String]]) -> Double {
        var result:Double = 0
        let discount = ["fruit": 3 , "snack" : 6, "meet" : 2, "fish" : 4]
        let discountarr = source.values.count
        
        return result
    }
}

let product = [ "과일" : ["딸기","사과","바나나"],
                 "과자" : ["홈런볼", "콘칩", "스윙칩", "깐쵸"],
                 "육류" : ["소", "돼지"],
                 "수산물" : ["광어","고등어"]]
let result = Market.calculate(product)

print(result)
