//
//  Models.swift
//  NewMasterDetail
//
//  Created by linc on 21/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import Foundation

//튜플로 노트 정보 다루기
typealias Note = (t: String, m: String, b: String)

//구조체로 만들기
struct Item {
    var name: String
    var image: String? // 이미지 정보는 없을 수도 있다.
    var main: String
    var note: Note? // 노트 정보는 없을 수도 있다.
    var brand: String
    var accord: String
    var long: String
    var distance: String
}

struct  ReserveItem {
    static let items = [
        Item(name: "게스 걸 EDT", image: "1",
             main: "라즈베리, 난초, 백합", note: Note(t: "라즈베리, 멜론, 베르가못", m: "난초, 백합, 아카시아", b: "샌달우드, 바닐라"),
             brand: "게스", accord: "스위트", long: "중", distance: "소"),
        
        Item(name: "게스 데어 EDT", image: "2",
             main: "금귤, 배꽃, 레몬꽃", note: Note(t: "금귤, 레몬꽃, 배꽃", m: "선인장꽃, 장미, 자스민", b: "머스크, 나무, 코코넛"),
             brand: "게스", accord: "시트러스", long: "중", distance: "중"),
        
        Item(name: "게스 시덕티브 EDT", image: "3",
             main: "바닐라, 배, 캐시미어", note: Note(t: "베르가못, 블랙커런트, 배", m: "자스민, 오렌지꽃, 오리스", b: "바닐라, 유향, 캐시미어"),
             brand: "게스", accord: "플로랄", long: "중", distance: "중"),
        
        Item(name: "플라워바이겐조 EDT", image: "4",
             main: "라즈베리, 난초, 백합", note: Note(t: "블랙커런트, 산사나무, 장미, 만다린오렌지", m: "오포파낙스, 자스민, 제비꽃, 장미", b: "바닐라, 화이트머스크, 향"),
             brand: "겐조", accord: "플로랄", long: "상", distance: "중"),
        
        Item(name: "아쿠아 겐조 뿌르 팜므 EDT", image: "5",
             main: "라즈베리, 난초, 백합", note: Note(t: "만다린오렌지, 라즈베리, 레몬", m: "목련, 장미, 자스민, 풀, 사과", b: "패스츄리, 베티버, 샌달우드, 바닐라, 캐시미어"),
             brand: "겐조", accord: "프루티", long: "상", distance: "중"),
        
        Item(name: "로 겐조 뿌르 팜므 EDT", image: "6",
             main: "연꽃, 레몬, 장미", note: Note(t: "레몬, 배", m: "연꽃, 프리지아, 장미", b: "머스크, 백향목"),
             brand: "겐조", accord: "플로랄", long: "중", distance: "소"),
        
        Item(name: "겐조 월드 EDT", image: "7",
             main: "모란, 배", note: Note(t: "배, 베르가못", m: "아몬드꽃, 모란, 장미", b: "오리스, 샌달우드, 바닐라, 제비꽃, 화이트머스크"),
             brand: "겐조", accord: "플로랄", long: "중", distance: "중"),
        
        Item(name: "겐조 월드 EDP", image: "8",
             main: "붉은 열매, 모란", note: Note(t: "붉은 열매", m: "모란, 꽃, 자스민", b: "암브로시안"),
             brand: "겐조", accord: "스위트", long: "중", distance: "소"),
        
        Item(name: "구찌 블룸 EDP", image: "9",
             main: "튜베로즈, 자스민, 허니써클", note: Note(t: "오렌지, 풀", m: "튜베로즈, 자스민, 허니써클", b: "오리스, 샌달우드, 바닐라"),
             brand: "구찌", accord: "플로랄", long: "중", distance: "중")
    ]

}

struct Liked {
    // Singleton
    static var shared = Liked()
    
    var saves : [Item] = []
    
    var AccordArr : [Item] = []
    
    func isLiked(_ item: Item) -> Bool {
        for one in saves {
            // 제품 이름으로 같다고 비교한다. TODO : equal operator 작성
            if one.name == item.name {
                return true
            }
        }
        return false
    }
    
    mutating func add(_ item: Item) {
        self.saves.append(item)
    }
    
    mutating func remove(_ item: Item) {
        for (index, one) in saves.enumerated() {
            // 제품 이름으로 같다고 비교한다. TODO : equal operator 작성
            if one.name == item.name {
                saves.remove(at: index)
                return
            }
        }
    }
}

