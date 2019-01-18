
// 아래 제시된 금액들의 부가세 총 합을 구하고 그 값보다 작은 금액들만 출력하여라.(20)
var transactions = [560.0, 320.5, 684.2, 128.6, 450.0]

let vatMapPrices = transactions.map({ $0 * 1.1})

let sumReduce = vatMapPrices.reduce(0.0, +)

let smallTransactions = transactions.filter {$0 < sumReduce}

for tr in smallTransactions {
    print("\(tr)")
}

