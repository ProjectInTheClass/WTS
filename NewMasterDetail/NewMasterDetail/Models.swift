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
<<<<<<< HEAD
//    static let items = [
//        Item(name: "게스 걸 EDT", image: "1",
//             main: "라즈베리, 난초, 백합", note: Note(t: "라즈베리, 멜론, 베르가못", m: "난초, 백합, 아카시아", b: "샌달우드, 바닐라"),
//             brand: "게스", accord: "스위트", long: "중", distance: "소"),
//
//        Item(name: "게스 데어 EDT", image: "2",
//             main: "금귤, 배꽃, 레몬꽃", note: Note(t: "금귤, 레몬꽃, 배꽃", m: "선인장꽃, 장미, 자스민", b: "머스크, 나무, 코코넛"),
//             brand: "게스", accord: "시트러스", long: "중", distance: "중"),
//
//        Item(name: "게스 시덕티브 EDT", image: "3",
//             main: "바닐라, 배, 캐시미어", note: Note(t: "베르가못, 블랙커런트, 배", m: "자스민, 오렌지꽃, 오리스", b: "바닐라, 유향, 캐시미어"),
//             brand: "게스", accord: "플로랄", long: "중", distance: "중"),
//
//        Item(name: "플라워바이겐조 EDT", image: "4",
//             main: "라즈베리, 난초, 백합", note: Note(t: "블랙커런트, 산사나무, 장미, 만다린오렌지", m: "오포파낙스, 자스민, 제비꽃, 장미", b: "바닐라, 화이트머스크, 향"),
//             brand: "겐조", accord: "플로랄", long: "상", distance: "중"),
//
//        Item(name: "아쿠아 겐조 뿌르 팜므 EDT", image: "5",
//             main: "라즈베리, 난초, 백합", note: Note(t: "만다린오렌지, 라즈베리, 레몬", m: "목련, 장미, 자스민, 풀, 사과", b: "패스츄리, 베티버, 샌달우드, 바닐라, 캐시미어"),
//             brand: "겐조", accord: "프루티", long: "상", distance: "중"),
//
//        Item(name: "로 겐조 뿌르 팜므 EDT", image: "6",
//             main: "연꽃, 레몬, 장미", note: Note(t: "레몬, 배", m: "연꽃, 프리지아, 장미", b: "머스크, 백향목"),
//             brand: "겐조", accord: "플로랄", long: "중", distance: "소"),
//
//        Item(name: "겐조 월드 EDT", image: "7",
//             main: "모란, 배", note: Note(t: "배, 베르가못", m: "아몬드꽃, 모란, 장미", b: "오리스, 샌달우드, 바닐라, 제비꽃, 화이트머스크"),
//             brand: "겐조", accord: "플로랄", long: "중", distance: "중"),
//
//        Item(name: "겐조 월드 EDP", image: "8",
//             main: "붉은 열매, 모란", note: Note(t: "붉은 열매", m: "모란, 꽃, 자스민", b: "암브로시안"),
//             brand: "겐조", accord: "스위트", long: "중", distance: "소"),
//
//        Item(name: "구찌 블룸 EDP", image: "9",
//             main: "튜베로즈, 자스민, 허니써클", note: Note(t: "오렌지, 풀", m: "튜베로즈, 자스민, 허니써클", b: "오리스, 샌달우드, 바닐라"),
//             brand: "구찌", accord: "플로랄", long: "중", distance: "중")
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
 brand: "구찌", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "구찌엔비미 EDT", image: "10",
 main: "모란, 리치, 장미", note: Note(t: "모란, 파인애플, 홍후추, 계피, 복숭아, 자스민, 망고", m: "모란, 머스크, 백차, 석류, 리치, 자스민, 장미", b: "티크우드, 샌달우드, 통카빈, 머스크, 담배잎"),
 brand: "구찌", accord: "프루티", long: "중", distance: "중"),
 Item(name: "끌로에 EDP", image: "11",
 main: "장미, 모란, 리치", note: Note(t: "모란, 프리지아, 리치", m: "장미, 은방울꽃, 목련", b: "앰버, 소나무"),
 brand: "끌로에", accord: "프루티", long: "상", distance: "중"),
 Item(name: "노마드 EDP", image: "12",
 main: "오크모스, 미라벨, 프리지아", note: Note(t: "미라벨, 베르가못, 레몬, 오렌지", m: "프리지아, 자스민, 복숭아, 장미", b: "오크모스, 호박나무, 패스츄리, 샌달우드, 머스크"),
 brand: "끌로에", accord: "우디", long: "상", distance: "중"),
 Item(name: "플레르 EDP", image: "13",
 main: "장미, 마편초, 베르가못", note: Note(t: "마편초, 베르가못, 그레이프프루트", m: "장미, 벚꽃, 블랙커런트, 복숭아", b: "쌀, 백향목, 머스크"),
 brand: "끌로에", accord: "시트러스", long: "중", distance: "중"),
 Item(name: "끌로에 NEW EDT", image: "14",
 main: "장미, 프리지아, 아이리스", note: Note(t: "만다린오렌지, 수박, 홍후추", m: "프리지아, 장미", b: "아이리스, 샌달우드, 통카빈"),
 brand: "끌로에", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "로즈 드 끌로에 EDT", image: "15",
 main: "", note: Note(t: "베르가못, 타라곤, 리치, 레몬", m: "장미, 목련, 백향목, 사과, 블랙커런트, 복숭아", b: "머스크, 앰버, 나무"),
 brand: "끌로에", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "로드리게즈 나르시소 EDT", image: "16",
 main: "머스크, 모란, 장미, 백향목", note: Note(t: "장미, 모란", m: "머스크", b: "백향목, 베티버"),
 brand: "나르시소", accord: "우디", long: "상", distance: "중"),
 Item(name: "로드리게즈 포 허 EDT", image: "17",
 main: "머스크, 오렌지꽃, 오스만투스", note: Note(t: "오스만투스, 오렌지꽃, 베르가못", m: "머스크, 앰버", b: "베티버, 바닐라, 패스츄리"),
 brand: "나르시소", accord: "머스키", long: "상", distance: "중"),
 Item(name: "로드리게즈 포 허 플레르 머스크 EDP", image: "18",
 main: "장미, 머스크", note: Note(t: "홍후추", m: "장미, 모란, 머스크", b: "패스츄리, 앰버, 제비꽃"),
 brand: "나르시소", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "로드리게즈 포 허 EDP", image: "19",
 main: "머스크, 장미, 패스츄리", note: Note(t: "장미, 복숭아", m: "머스크, 앰버", b: "샌달우드, 패스츄리"),
 brand: "나르시소", accord: "머스키", long: "상", distance: "중"),
 Item(name: "로드리게즈 나르시소 EDP", image: "20",
 main: "치자, 머스크, 백향목", note: Note(t: "치자, 장미", m: "머스크", b: "베티버, 백향목"),
 brand: "나르시소", accord: "우디", long: "상", distance: "중"),
 Item(name: "로드리게즈 나르시소 푸드레 EDP", image: "21",
 main: "머스크, 자스민, 쿠마린", note: Note(t: "장미, 자스민, 오렌지꽃", m: "머스크", b: "베티버, 백향목, 쿠마린, 패스츄리"),
 brand: "나르시소", accord: "플로랄", long: "상", distance: "중"),
 Item(name: "로드리게즈 나르시소 루즈 EDP", image: "22",
 main: "머스크, 장미, 아이리스", note: Note(t: "아이리스, 장미", m: "머스크, 오렌지꽃, 튜베로즈", b: "베티버, 백향목, 쿠마린, 바닐라, 샌달우드"),
 brand: "나르시소", accord: "우디", long: "중", distance: "중"),
 Item(name: "라이트블루 EDT", image: "23",
 main: "레몬, 사과, 백향목", note: Note(t: "사과, 백향목, 초롱꽃, 레몬", m: "장미, 대나무, 자스민", b: "앰버, 머스크, 백향목"),
 brand: "돌체앤가바나", accord: "시트러스", long: "중", distance: "중"),
 Item(name: "돌체 로사 엑스첼사 EDP", image: "24",
 main: "장미, 머스크, 수련", note: Note(t: "파파야꽃, 네롤리", m: "아마릴리스, 수련, 수선화, 장미", b: "머스크, 샌달우드, 캐시미어"),
 brand: "돌체앤가바나", accord: "플로랄", long: "중", distance: "소"),
 Item(name: "더원 EDT", image: "25",
 main: "바닐라, 복숭아, 리치", note: Note(t: "리치, 만다린오렌지, 복숭아, 베르가못", m: "백합, 자두, 자스민, 은방울꽃", b: "앰버, 머스크, 바닐라, 베티버"),
 brand: "돌체앤가바나", accord: "프루티", long: "상", distance: "중"),
 Item(name: "라이트블루 오 인텐스 EDT", image: "26",
 main: "레몬, 사과, 머스크", note: Note(t: "레몬, 사과", m: "금잔화, 자스민", b: "호박나무, 머스크"),
 brand: "돌체앤가바나", accord: "시트러스", long: "중", distance: "중"),
 Item(name: "돌체 가든 EDP", image: "27",
 main: "코코넛, 바닐라, 아몬드밀크", note: Note(t: "만다린오렌지, 목련, 네롤리", m: "일랑일랑, 코코넛, 플루메리아", b: "샌달우드, 바닐라, 아몬드밀크"),
 brand: "돌체앤가바나", accord: "바닐라", long: "중", distance: "중"),
 Item(name: "메리미 EDP", image: "28",
 main: "자스민, 오렌지, 복숭아", note: Note(t: "오렌지, 프리지아, 복숭아", m: "자스민, 장미, 목련", b: "머스크, 백향목, 앰버"),
 brand: "랑방", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "모던 프린세스 오 센슈얼 EDT", image: "29",
 main: "모란, 머스크, 복숭아", note: Note(t: "그레이프프루트, 복숭아, 레몬, 귤", m: "모란, 자스민, 오렌지꽃, 배", b: "샌달우드, 머스크, 바닐라"),
 brand: "랑방", accord: "시트러스", long: "중", distance: "중"),
 Item(name: "모던 프린세스 EDP", image: "30",
 main: "사과, 레드커런트, 난초", note: Note(t: "사과, 레드커런트", m: "자스민, 프리지아", b: "머스크, 나무, 난초"),
 brand: "랑방", accord: "프루티", long: "중", distance: "중"),
 Item(name: "에끌라드 아르페쥬 EDP", image: "31",
 main: "라일락, 녹차, 복숭아꽃", note: Note(t: "라일락, 페티그레인", m: "복숭아꽃, 등나무, 모란, 녹차, 오스만투스", b: "앰버, 머스크, 백향목"),
 brand: "랑방", accord: "플로랄", long: "중", distance: "소"),
 Item(name: "잔느 EDP", image: "32",
 main: "라즈베리, 블랙베리, 모란", note: Note(t: "블랙베리, 레몬, 배", m: "모란, 프리지아, 라즈베리, 장미", b: "샌달우드, 앰버, 머스크"),
 brand: "랑방", accord: "프루티", long: "중", distance: "중"),
 Item(name: "루머 2 로즈 EDP", image: "33",
 main: "레몬, 장미, 오렌지", note: Note(t: "오렌지, 풀, 그레이프프루트, 배, 베르가못, 레몬", m: "허니써클, 목련, 자스민, 은방울꽃, 장미", b: "앰버, 패스츄리, 머스크"),
 brand: "랑방", accord: "시트러스", long: "중", distance: "소"),
 Item(name: "데이지 드림 EDT", image: "34",
 main: "블랙베리, 등나무, 리치", note: Note(t: "블랙베리, 그레이프프루트, 배", m: "등나무, 자스민, 리치", b: "나무, 머스크, 코코넛"),
 brand: "마크제이콥스", accord: "프루티", long: "하", distance: "소"),
 Item(name: "데이지 EDT", image: "35",
 main: "제비꽃잎, 그레이프프루트, 제비꽃", note: Note(t: "제비꽃잎, 그레이프프루트, 딸기", m: "치자, 제비꽃, 자스민", b: "머스크, 나무, 바닐라"),
 brand: "마크제이콥스", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "데이지 오 쏘 프레쉬 EDT", image: "36",
 main: "풀, 라즈베리, 제비꽃", note: Note(t: "그레이프프루트, 풀, 라즈베리, 배", m: "자스민, 장미, 제비꽃, 리치, 사과꽃", b: "머스크, 백향목, 자두"),
 brand: "마크제이콥스", accord: "프루티", long: "하", distance: "소"),
 Item(name: "스플래시 코튼 EDT", image: "37",
 main: "목화, 머스크, 스웨이드", note: Note(t: "오렌지, 귤, 복숭아, 베르가못", m: "라벤더, 목화, 은방울꽃", b: "스웨이드, 샌달우드, 머스크, 나무"),
 brand: "마크제이콥스", accord: "플로랄", long: "하", distance: "소"),
 Item(name: "데이지 러브 EDT", image: "38",
 main: "클라우드베리, 데이지, 유목, 머스크", note: Note(t: "클라우드베리", m: "데이지", b: "유목, 머스크"),
 brand: "마크제이콥스", accord: "머스키", long: "하", distance: "소"),
 Item(name: "화이트 머스크 EDT", image: "39",
 main: "머스크, 샌달우드, 귤", note: Note(t: "베르가못, 귤", m: "자스민, 수련", b: "페스츄리, 샌달우드, 머스크"),
 brand: "모노템", accord: "머스키", long: "상", distance: "중"),
 Item(name: "화이트 가드니아 EDT", image: "40",
 main: "치자, 귤, 베르가못", note: Note(t: "베르가못, 귤", m: "치자", b: "머스크, 나무"),
 brand: "모노템", accord: "시트러스", long: "하", distance: "중"),
 Item(name: "보씨올리 디 리몬 EDT", image: "41",
 main: "레몬", note: Note(t: "레몬, 레몬꽃", m: "레몬", b: "레몬"),
 brand: "모노템", accord: "시트러스", long: "하", distance: "소"),
 Item(name: "데이지 데이지 EDT", image: "42",
 main: "데이지, 과일, 치자", note: Note(t: "과일, 풀", m: "데이지, 은방울꽃, 자스민, 치자", b: "샌달우드, 머스크, 캐시미어"),
 brand: "모노템", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "아포떼오즈 드 로즈 EDT", image: "43",
 main: "장미, 귤, 통카빈", note: Note(t: "귤, 배", m: "장미", b: "머스크, 페스츄리, 통카빈"),
 brand: "모노템", accord: "플로랄", long: "하", distance: "중"),
 Item(name: "바닐라 블로썸 EDT", image: "44",
 main: "바닐라, 난초", note: Note(t: "바닐라", m: "난초, 과일", b: "나무"),
 brand: "모노템", accord: "스위트", long: "상", distance: "중"),
 Item(name: "아쿠아 마리나 EDT", image: "45",
 main: "물, 백향목, 로즈마리", note: Note(t: "레몬, 베르가못, 그레이프프루트, 귤, 물", m: "카다멈, 육두구, 월계수, 세이지, 로즈마리, 정향나무", b: "백향목, 앰버, 베티버"),
 brand: "모노템", accord: "아로마틱", long: "중", distance: "중"),
 Item(name: "시클라미노 EDT", image: "46",
 main: "시클라멘, 프리지아, 머스크", note: Note(t: "프리지아, 블랙커런트, 사과", m: "자스민, 장미, 시클라멘", b: "머스크, 백향목, 앰버"),
 brand: "모노템", accord: "플로랄", long: "하", distance: "소"),
 Item(name: "칩 앤 시크 쏘 리얼 EDT", image: "47",
 main: "귤, 오렌지, 모란", note: Note(t: "오렌지, 귤, 셔벗, 라즈베리, 블랙커런트", m: "모란, 자스민, 목련", b: "오크모스, 머스크, 백향목"),
 brand: "모스키노", accord: "시트러스", long: "중", distance: "소"),
 Item(name: "레전드 나이트 EDP", image: "48",
 main: "바닐라, 사과, 라벤더", note: Note(t: "베르가못, 세이지, 민트, 카다멈", m: "백향목, 라벤더, 제비꽃, 사과, 전나무수지", b: "베티버, 바닐라, 아키갈라, 페스츄리, 머스크"),
 brand: "몽블랑", accord: "아로마틱", long: "상", distance: "중"),
 Item(name: "브리트쉬어 EDT", image: "49",
 main: "리치, 유자, 파인애플", note: Note(t: "리치, 유자, 파인애플, 귤", m: "모란, 복숭아꽃, 배", b: "머스크, 나무"),
 brand: "버버리", accord: "프루티", long: "중", distance: "소"),
 Item(name: "브릿 포허 EDP", image: "50",
 main: "앰버, 바닐라", note: Note(t: "베르가못, 아몬드, 배", m: "모란, 설탕, 아몬드", b: "마호가니, 앰버, 통카빈, 바닐라"),
 brand: "버버리", accord: "스위트", long: "중", distance: "중"),
 Item(name: "바디 텐더 EDT", image: "51",
 main: "쑥, 장미, 사과", note: Note(t: "레몬, 사과, 복숭아, 쑥", m: "장미, 차, 자스민, 샌달우드", b: "캐시미어, 바닐라, 머스크, 앰버"),
 brand: "버버리", accord: "그린", long: "중", distance: "중"),
 Item(name: "브릿 포힘 EDT", image: "52",
 main: "베르가못, 통카빈, 귤", note: Note(t: "귤, 생강, 베르가못, 카다멈", m: "육두구, 백향목, 장미, 아로마 향료", b: "통카빈, 페스츄리, 나무, 백향목, 머스크"),
 brand: "버버리", accord: "시트러스", long: "중", distance: "중"),
 Item(name: "위크앤드 우먼 EDP", image: "53",
 main: "천도복숭아, 복숭아꽃, 히아신스", note: Note(t: "미뇨네트, 귤, 세이지", m: "제비꽃, 아이리스, 천도복숭아, 복숭아꽃, 로즈힙, 시클라멘, 히아신스", b: "샌달우드, 머스크, 백향목"),
 brand: "버버리", accord: "플로랄", long: "상", distance: "중"),
 Item(name: "우먼 EDP", image: "54",
 main: "복숭아, 바닐라, 살구", note: Note(t: "블랙커런트, 복숭아, 살구, 배, 사과", m: "자스민, 샌달우드, 이끼", b: "머스크, 바닐라, 백향목"),
 brand: "버버리", accord: "프루티", long: "중", distance: "중"),
 Item(name: "터치 포 우먼 EDP", image: "55",
 main: "백향목, 홍후추, 육계나무잎", note: Note(t: "오렌지, 블랙베리, 블랙커런트, 크랜베리, 육계나무잎, 홍후추, 장미", m: "모란, 튜베로즈, 백합, 라즈베리, 복숭아, 자스민, 은방울꽃", b: "바닐라, 통카빈, 아몬드, 백향목, 오크모스"),
 brand: "버버리", accord: "프루티", long: "중", distance: "중"),
 Item(name: "플라워 프린세스 EDT", image: "56",
 main: "수련, 자스민, 귤", note: Note(t: "아이비, 수련, 귤", m: "오렌지꽃, 자스민, 미모사, 장미", b: "살구, 앰버, 머스크, 나무"),
 brand: "베라왕", accord: "플로랄", long: "중", distance: "소"),
 Item(name: "러브스트럭 EDP", image: "57",
 main: "구아바, 머스크, 연꽃", note: Note(t: "당귀, 귤, 구아바", m: "튜베로즈, 연꽃, 당귀", b: "나무, 머스크"),
 brand: "베라왕", accord: "머스키", long: "중", distance: "소"),
 Item(name: "포에버 베라 EDP", image: "58",
 main: "라일락, 아이리스, 샌달우드", note: Note(t: "복숭아, 치자, 코코넛", m: "아이리스, 라일락, 럼", b: "샌달우드, 통카빈, 머스크"),
 brand: "베라왕", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "임브레이스 로즈 버드 앤드 바닐라 EDT", image: "59",
 main: "장미, 바닐라, 아이리스", note: Note(t: "장미, 귤", m: "시클라멘, 아이리스, 목련", b: "머스크, 바닐라, 샌달우드"),
 brand: "베라왕", accord: "플로랄", long: "중", distance: "소"),
 Item(name: "브라이트 크리스탈 EDT", image: "60",
 main: "모란, 유자, 석류", note: Note(t: "유자, 석류, 물", m: "연꽃, 목련, 모란", b: "머스크, 마호가니, 앰버"),
 brand: "베르사체", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "에로스 EDT", image: "61",
 main: "바닐라, 민트, 통카빈", note: Note(t: "민트, 사과, 레몬", m: "통카빈, 제라늄", b: "바닐라, 베티버, 오크모스, 백향목"),
 brand: "베르사체", accord: "아로마틱", long: "상", distance: "대"),
 Item(name: "뿌르팜므 딜런블루 EDP", image: "62",
 main: "사과, 복숭아, 토끼풀", note: Note(t: "블랙커런트, 사과, 토끼풀, 물망초, 깻잎", m: "로즈힙, 장미, 자스민, 복숭아, 꽃잎", b: "때죽나무, 나무, 머스크, 페스츄리"),
 brand: "베르사체", accord: "프루티", long: "하", distance: "중"),
 Item(name: "쁘띠마망 EDT", image: "63",
 main: "파우더, 카모마일, 아이리스", note: Note(t: "오렌지, 베르가못, 로즈우드", m: "해바라기, 카모마일, 장미", b: "아이리스, 바닐라, 복숭아, 파우더"),
 brand: "불가리", accord: "플로랄", long: "중", distance: "소"),
 Item(name: "옴니아 핑크사파이어 EDT", image: "64",
 main: "포멜로, 그레이프프루트, 플루메리아", note: Note(t: "그레이프프루트, 포멜로, 홍후추", m: "플루메리아, 가르데니아 타히텐시스, 복숭아, 장미", b: "머스크, 바닐라, 우드, 오리스, 샌달우드, 제비꽃"),
 brand: "불가리", accord: "시트러스", long: "하", distance: "소"),
 Item(name: "로즈 골데아 EDP", image: "65",
 main: "장미, 모란, 머스크", note: Note(t: "석류, 머스크, 장미, 베르가못", m: "장미, 자스민, 모란, 복숭아", b: "머스크, 유향, 샌달우드, 바닐라"),
 brand: "불가리", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "옴니아 크리스탈린 EDT", image: "66",
 main: "연꽃, 머스크, 차", note: Note(t: "대나무, 배", m: "연꽃, 깻잎, 차", b: "머스크, 오크모스, 유창목"),
 brand: "불가리", accord: "우디", long: "중", distance: "중"),
 Item(name: "옴니아 아메시스트 EDT", image: "67",
 main: "헬리오트로피움", note: Note(t: "그레이프프루트, 풀", m: "아이리스, 장미", b: "나무, 헬리오트로피움"),
 brand: "불가리", accord: "플로랄", long: "중", distance: "소"),
 Item(name: "플레르 드 체리시에 EDP", image: "68",
 main: "장미, 목련, 리치, 베르가못", note: Note(t: "베르가못, 리치", m: "장미, 목련", b: "백향목"),
 brand: "솔리노트", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "로제 EDT", image: "69",
 main: "장미, 목련, 리치, 베르가못", note: Note(t: "베르가못, 리치", m: "장미, 목련", b: "백향목"),
 brand: "솔리노트", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "유쥬 EDP", image: "70",
 main: "유자", note: Note(t: "레몬, 베르가못", m: "유자, 귤, 흰꽃", b: "패스츄리, 오크모스"),
 brand: "솔리노트", accord: "시트러스", long: "하", distance: "중"),
 Item(name: "떼 블랑 EDP", image: "71",
 main: "백차, 베르가못, 세이지", note: Note(t: "베르가못, 카다멈", m: "세이지, 백차", b: "오스만투스, 머스크"),
 brand: "솔리노트", accord: "그린", long: "하", distance: "소"),
 Item(name: "플레르 드 피기에 EDP", image: "72",
 main: "무화과, 무화과잎, 모란", note: Note(t: "블랙커런트, 그레이프프루트, 무화과잎", m: "모란, 무화과나무", b: "샌달우드, 백향목, 무화과, 우유"),
 brand: "솔리노트", accord: "우디", long: "중", distance: "중"),
 Item(name: "뮤레 EDP", image: "73",
 main: "블랙베리", note: Note(t: "석류, 베르가못, 레몬", m: "라즈베리, 블랙베리", b: "샌달우드, 머스크"),
 brand: "솔리노트", accord: "프루티", long: "하", distance: "소"),
 Item(name: "머스크 EDP", image: "74",
 main: "머스크", note: Note(t: "베르가못, 레몬", m: "자스민, 장미, 머스크", b: "머스크, 샌달우드"),
 brand: "솔리노트", accord: "머스키", long: "중", distance: "중"),
 Item(name: "바닐라 EDT", image: "75",
 main: "바닐라", note: Note(t: "바닐라, 흰꽃", m: "통카빈", b: "백색 향료"),
 brand: "솔리노트", accord: "스위트", long: "상", distance: "중"),
 Item(name: "티아레 EDT", image: "76",
 main: "티아레, 코코넛, 앰버", note: Note(t: "코코넛, 복숭아", m: "티아레", b: "앰버"),
 brand: "솔리노트", accord: "플로랄", long: "상", distance: "대"),
 Item(name: "플레르 드 아이리스 EDP", image: "77",
 main: "아이리스", note: Note(t: "만다린오렌지, 당귀", m: "아이리스, 제비꽃, 백향목", b: "머스크, 마편초, 통카빈"),
 brand: "솔리노트", accord: "플로랄", long: "하", distance: "소"),
 Item(name: "플레르 드 오란제 EDT", image: "78",
 main: "오렌지꽃", note: Note(t: "페티그레인, 베르가못, 레몬", m: "자스민, 오렌지꽃, 장미", b: "꿀, 머스크"),
 brand: "솔리노트", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "판타지아 EDT", image: "79",
 main: "포멜로, 라즈베리, 사이프러스", note: Note(t: "포멜로, 홍후추", m: "꽃잎, 프랄린, 라즈베리", b: "사이프러스, 백향목"),
 brand: "안나수이", accord: "스위트", long: "중", distance: "중"),
 Item(name: "럭키위시 EDT", image: "80",
 main: "레몬, 대나무", note: Note(t: "레몬, 귤, 포멜로", m: "프리지아, 대나무, 오렌지꽃, 난초", b: "샌달우드, 머스크, 앰버"),
 brand: "안나수이", accord: "시트러스", long: "중", distance: "중"),
 Item(name: "라무르로즈 베르사유 EDT", image: "81",
 main: "장미, 블랙커런트, 백향목", note: Note(t: "시트러스, 블랙커런트, 배", m: "오렌지꽃, 장미, 프리지아", b: "머스크, 백향목, 앰버"),
 brand: "안나수이", accord: "플로랄", long: "하", distance: "소"),
 Item(name: "시크릿위시 EDT", image: "82",
 main: "레몬, 파인애플, 멜론", note: Note(t: "멜론, 복숭아, 레몬", m: "파인애플, 블랙커런트", b: "앰버, 머스크, 오크모스, 백향목"),
 brand: "안나수이", accord: "프루티", long: "하", distance: "소"),
 Item(name: "플라잇오브팬시 EDT", image: "83",
 main: "유자, 리치, 레몬", note: Note(t: "리치, 유자, 레몬", m: "목련, 프리지아, 장미", b: "앰버, 머스크, 나무"),
 brand: "안나수이", accord: "시트러스", long: "중", distance: "중"),
 Item(name: "라비드 보헴 EDT", image: "84",
 main: "붉은 열매, 배, 라즈베리", note: Note(t: "용과, 장미, 배, 붉은 열매", m: "모란, 프리지아, 목련", b: "머스크, 샌달우드, 나무, 바닐라, 라즈베리"),
 brand: "안나수이", accord: "프루티", long: "중", distance: "소"),
 Item(name: "라무르로즈 EDP", image: "85",
 main: "마카롱, 솜사탕, 벚꽃", note: Note(t: "만다린오렌지, 피스타치오, 마카롱, 네롤리", m: "벚꽃, 미모사", b: "솜사탕, 머스크"),
 brand: "안나수이", accord: "스위트", long: "중", distance: "중"),
 Item(name: "라무르로즈 베르사유 EDP", image: "86",
 main: "오렌지, 장미, 자스민", note: Note(t: "오렌지, 마르멜로, 살구", m: "프리지아, 장미, 자스민", b: "앰버, 패스츄리, 마카롱"),
 brand: "안나수이", accord: "스위트", long: "중", distance: "중"),
 Item(name: "5번가 EDP", image: "87",
 main: "라임, 은방울꽃", note: Note(t: "목련, 라임, 만다린오렌지, 라일락, 은방울꽃, 베르가못", m: "육두구, 카네이션, 튜베로즈, 제비꽃, 복숭아, 자스민, 일랑일랑, 장미", b: "정향, 아이리스, 앰버, 샌달우드, 바닐라, 머스크"),
 brand: "엘리자베스아덴", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "그린티 라벤더 EDT", image: "88",
 main: "라벤더, 차, 레몬", note: Note(t: "레몬, 오렌지, 카모마일, 민트", m: "라벤더, 차, 목련", b: "머스크, 암브레트, 자작나무"),
 brand: "엘리자베스아덴", accord: "아로마틱", long: "중", distance: "소"),
 Item(name: "그린티 체리 블러썸 EDT", image: "89",
 main: "녹차, 벚꽃, 레몬", note: Note(t: "베르가못, 레몬, 귤, 페티그레인, 녹차, 아몬드", m: "차, 벚꽃, 자두, 살구, 모란", b: "자작나무, 오크모스, 머스크, 헬리오트로프, 백합"),
 brand: "엘리자베스아덴", accord: "플로랄", long: "중", distance: "소"),
 Item(name: "그린티 EDT", image: "90",
 main: "녹차, 레몬, 민트", note: Note(t: "대황, 민트, 오렌지, 베르가못, 레몬", m: "카네이션, 머스크, 자스민, 오크모스, 앰버, 회향", b: "캐러웨이, 앰버, 머스크, 녹차, 자스민, 정향, 오크모스"),
 brand: "엘리자베스아덴", accord: "그린", long: "하", distance: "소"),
 Item(name: "넥타린 블러썸 EDT", image: "91",
 main: "천도복숭아, 복숭아, 녹차", note: Note(t: "복숭아, 베르가못, 과일, 녹차", m: "녹차, 천도복숭아, 복숭아꽃", b: "머스크"),
 brand: "엘리자베스아덴", accord: "프루티", long: "하", distance: "중"),
 Item(name: "화이트 티 EDT", image: "92",
 main: "백차, 아이리스, 바다", note: Note(t: "만다린오렌지, 세이지, 양치, 바다", m: "백차, 아이리스, 마테", b: "앰버, 암브레트, 통카빈, 나무"),
 brand: "엘리자베스아덴", accord: "그린", long: "중", distance: "중"),
 Item(name: "에너자이징 만다린 레몬 EDT", image: "93",
 main: "레몬, 백향목, 만다린", note: Note(t: "만다린", m: "레몬", b: "백향목"),
 brand: "이브로쉐", accord: "시트러스", long: "하", distance: "소"),
 Item(name: "플라워 파티 EDT", image: "94",
 main: "리치, 만다린오렌지, 바닐라, 오렌지", note: Note(t: "오렌지, 만다린오렌지", m: "장미, 리치", b: "바닐라"),
 brand: "이브로쉐", accord: "시트러스", long: "하", distance: "중"),
 Item(name: "모망 드 보뇌르 EDP", image: "95",
 main: "장미, 풀, 제라늄, 백향목", note: Note(t: "풀, 제라늄", m: "장미", b: "패스츄리, 백향목"),
 brand: "이브로쉐", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "로디세이 EDT", image: "96",
 main: "연꽃, 멜론", note: Note(t: "시클라멘, 장미, 멜론, 프리지아, 연꽃", m: "카네이션, 백합, 모란, 은방울꽃", b: "나무, 튜베로즈, 용연향, 샌달우드, 머스크, 오스만투스, 백향목"),
 brand: "이세이미야케", accord: "플로랄", long: "상", distance: "중"),
 Item(name: "로디세이 퓨어 EDT", image: "97",
 main: "백합, 자스민, 바다", note: Note(t: "바다", m: "오렌지꽃, 자스민, 백합, 장미", b: "캐시미어, 용연향"),
 brand: "이세이미야케", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "로디세이 퓨어 EDP", image: "98",
 main: "백합, 자스민", note: Note(t: "바다", m: "오렌지꽃, 자스민, 백합, 장미", b: "캐시미어, 용연향"),
 brand: "이세이미야케", accord: "플로랄", long: "상", distance: "중"),
 Item(name: "로디세이 EDP", image: "99",
 main: "연꽃, 백합, 프리지아", note: Note(t: "연꽃, 프리지아, 장미", m: "오스만투스, 백합", b: "샌달우드, 백향목, 암브레트"),
 brand: "이세이미야케", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "로디세이 퓨어 넥타 EDP", image: "100",
 main: "꿀, 배, 장미", note: Note(t: "배, 꿀, 베르가못", m: "장미, 물, 모란", b: "용연향, 샌달우드, 머스크, 제비꽃"),
 brand: "이세이미야케", accord: "스위트", long: "중", distance: "중"),
 Item(name: "글로우 바이제이로 EDT", image: "101",
 main: "머스크, 자스민, 장미", note: Note(t: "그레이프프루트, 네롤리, 오렌지꽃", m: "튜베로즈, 자스민, 장미", b: "샌달우드, 앰버, 머스크, 바닐라, 오리스"),
 brand: "제니퍼로페즈", accord: "플로랄", long: "상", distance: "중"),
 Item(name: "아티산 EDT", image: "102",
 main: "클레멘타인, 귤, 오렌지꽃", note: Note(t: "클레멘타인, 귤, 백리향, 마저럼", m: "오렌지꽃, 생강, 라벤더, 자스민", b: "나무, 앰버, 머스크"),
 brand: "존바바토스", accord: "시트러스", long: "하", distance: "소"),
 Item(name: "존바바토스x닉조나스 블루 EDT", image: "103",
 main: "민트, 바다, 만다린오렌지", note: Note(t: "만다린오렌지, 라임, 홍후추, 바다", m: "라벤더, 민트, 세이지, 로즈마리", b: "샌달우드, 클리어우드"),
 brand: "존바바토스", accord: "아로마틱", long: "중", distance: "중"),
 Item(name: "존바바토스x닉조나스 리미티드 에디션 EDT", image: "104",
 main: "커피, 사과, 머스크", note: Note(t: "베르가못, 럼, 사과, 커피, 백향목", m: "사프란, 라벤더, 스웨이드, 앰버", b: "랍다넘, 향, 머스크, 베티버, 패스츄리"),
 brand: "존바바토스", accord: "스파이시", long: "중", distance: "대"),
 Item(name: "비바라 쥬시 EDP", image: "105",
 main: "캬라멜, 바닐라, 만다린오렌지", note: Note(t: "만다린오렌지, 야생 열매", m: "허니써클, 치자, 자스민", b: "앰버, 캬라멜, 프랄린, 샌달우드, 바닐라"),
 brand: "쥬시꾸뛰르", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "비바라 쥬시 로즈 EDP", image: "106",
 main: "장미, 배, 모란", note: Note(t: "만다린오렌지, 배, 자스민", m: "장미, 자스민, 모란", b: "오리스, 벤조인, 암브로시안"),
 brand: "쥬시꾸뛰르", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "로 EDT", image: "107",
 main: "모란, 천도복숭아, 히비스커스", note: Note(t: "히비스커스, 베르가못", m: "천도복숭아, 모란", b: "백향목, 머스크"),
 brand: "지미추", accord: "플로랄", long: "중", distance: "소"),
 Item(name: "일리싯 플라워 EDT", image: "108",
 main: "그레이프프루트꽃, 장미, 만다린오렌지", note: Note(t: "살구, 만다린오렌지", m: "그레이프프루트꽃, 자스민, 장미, 프리지아, 배", b: "샌달우드, 캐시미어, 머스크, 바닐라, 벤조인"),
 brand: "지미추", accord: "시트러스", long: "중", distance: "소"),
 Item(name: "우먼 EDT", image: "109",
 main: "토피, 패스츄리, 배", note: Note(t: "만다린오렌지, 배, 풀", m: "난초", b: "토피, 패스츄리"),
 brand: "지미추", accord: "스위트", long: "상", distance: "대"),
 Item(name: "블러썸 EDP", image: "110",
 main: "라즈베리, 붉은 열매, 스위트피", note: Note(t: "시트러스, 붉은 열매, 라즈베리", m: "스위트피, 장미", b: "샌달우드, 머스크"),
 brand: "지미추", accord: "스위트", long: "중", distance: "중"),
 Item(name: "이터니티 우먼 EDP", image: "111",
 main: "카네이션, 백합, 풀", note: Note(t: "시트러스, 풀, 만다린오렌지, 프리지아, 세이지", m: "백합, 카네이션, 제비꽃, 자스민, 금잔화, 은방울꽃, 장미, 수선화", b: "샌달우드, 앰버, 패스츄리, 머스크, 헬리오트로프"),
 brand: "캘빈클라인", accord: "플로랄", long: "상", distance: "대"),
 Item(name: "플로럴 EDP", image: "112",
 main: "파인애플, 치자, 머스크", note: Note(t: "파인애플, 홍후추, 베르가못, 레몬, 오렌지", m: "장미, 자스민, 치자", b: "패스츄리, 나무, 머스크, 샌달우드, 바닐라"),
 brand: "코치", accord: "플로랄", long: "중", distance: "중"),
 Item(name: "코치 EDT", image: "113",
 main: "자스민, 수련, 튜베로즈", note: Note(t: "수련, 만다린오렌지, 제비꽃, 구아바", m: "자스민, 오렌지꽃, 튜베로즈, 미모사", b: "백향목, 앰버"),
 brand: "코치", accord: "플로랄", long: "중", distance: "중")
 ]
 
    
=======
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
>>>>>>> 1e640f6a3cfd1b07d8038e6ef4fcec306102ccde

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

