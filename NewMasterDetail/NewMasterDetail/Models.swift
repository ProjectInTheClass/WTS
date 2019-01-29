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
}

struct Liked {
    // Singleton
    static var shared = Liked()
    
    var saves : [Item] = []
    
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

