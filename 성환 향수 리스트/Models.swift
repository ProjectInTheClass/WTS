//
//  Models.swift
//  exan2
//
//  Created by linc on 17/01/2019.
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

//클래스로 만들기(생략, 필요할때 제작)
