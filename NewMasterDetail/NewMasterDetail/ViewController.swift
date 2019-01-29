//
//  ViewController.swift
//  NewMasterDetail
//
//  Created by linc on 21/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

//테이블 뷰 소스
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "ReserveCell", for: indexPath) as! ReserveCell

        cell.perfumeLabel1.text = item.name
        cell.perfumeLabel2.text = item.main

        return cell
    }
}

//컬렉션 뷰 소스
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
extension ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath) as! myCollectionViewCell

        cell.name.text = item.name
        cell.main.text = item.main

        return cell
    }
}

//본 컨트롤러 클래스 // 테이블뷰+컬렉션뷰
class ViewController: UIViewController {

    //테이블뷰
    @IBOutlet weak var tableView: UITableView!
    //컬렉션 뷰
    @IBOutlet weak var collectionView: UICollectionView!
    //테이블뷰와 컬렉션뷰 전환 버튼
    
    @IBOutlet weak var sortingSegmentedControl: UISegmentedControl!
    @IBAction func sortingSegmentedControl(_ sender: Any) {
        
        switch sortingSegmentedControl.selectedSegmentIndex {
        case 0:
            tableView.isHidden = false
            collectionView.isHidden = true
            
        default:
            tableView.isHidden = true
            collectionView.isHidden = false
            
        }
    }
    
   
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: CGFloat.leastNormalMagnitude))

        collectionView.dataSource = self
        collectionView.delegate = self


    }
    
    // 상세씬 전환- 테이블 뷰
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue_t",
            let detailVC = segue.destination as? detailViewController,
            let cell = sender as? UITableViewCell,
            let index = self.tableView.indexPath(for: cell) {
            let item = items[index.row]
            detailVC.item = item
        }
        if segue.identifier == "detailSegue_c",
            let detailVC = segue.destination as? detailViewController,
            let cell = sender as? UICollectionViewCell,
            let index = self.collectionView.indexPath(for: cell) {
            let item = items[index.row]
            detailVC.item = item
    }
    }
    
    
    
    
    
    
    
    //데이터는 너무 많으니까 클래스 맨 뒤로 보냈음
    
    var item2 = [
        Item(name: "new", image: "1",
             main: "new", note: Note(t: "new", m: "new", b: "new"),
             brand: "new"),
        Item(name: "new", image: "1",
             main: "new", note: Note(t: "new", m: "new", b: "new"),
             brand: "new"),
        Item(name: "new", image: "1",
             main: "new", note: Note(t: "new", m: "new", b: "new"),
             brand: "new")
        
    ]
    //이미지 이름 수정
    var items = [
        Item(name: "게스 걸 EDT", image: "1",
             main: "라즈베리, 난초, 백합", note: Note(t: "라즈베리, 멜론, 베르가못", m: "난초, 백합, 아카시아", b: "샌달우드, 바닐라"),
             brand: "게스"),
        Item(name: "게스 데어 EDT", image: "2",
             main: "금귤, 배꽃, 레몬꽃", note: Note(t: "금귤, 레몬꽃, 배꽃", m: "선인장꽃, 장미, 자스민", b: "머스크, 나무, 코코넛"),
             brand: "게스"),
        Item(name: "게스 시덕티브 EDT", image: "3",
             main: "바닐라, 배, 캐시미어", note: Note(t: "베르가못, 블랙커런트, 배", m: "자스민, 오렌지꽃, 오리스", b: "바닐라, 유향, 캐시미어"),
             brand: "게스"),
        Item(name: "플라워바이겐조 EDT", image: "4",
             main: "제비꽃, 장미, 바닐라", note: Note(t: "블랙커런트, 산사나무, 장미, 만다린오렌지", m: "오포파낙스, 자스민, 제비꽃, 장미", b: "바닐라, 화이트머스크, 향"),
             brand: "겐조"),
        Item(name: "아쿠아 겐조 뿌르 팜므 EDT", image: "5",
             main: "라즈베리, 목련, 만다린오렌지", note: Note(t: "만다린오렌지, 라즈베리, 레몬", m: "목련, 장미, 자스민, 풀, 사과", b: "패스츄리, 베티버, 샌달우드, 바닐라, 캐시미어"),
             brand: "겐조"),
        Item(name: "로 겐조 뿌르 팜므 EDT", image: "6",
             main: "연꽃, 레몬, 장미", note: Note(t: "레몬, 배", m: "연꽃, 프리지아, 장미", b: "머스크, 백향목"),
             brand: "겐조"),
        Item(name: "겐조 월드 EDT", image: "7",
             main: "모란, 배", note: Note(t: "배, 베르가못", m: "아몬드꽃, 모란, 장미", b: "오리스, 샌달우드, 바닐라, 제비꽃, 화이트머스크"),
             brand: "겐조"),
        Item(name: "겐조 월드 EDP", image: "8",
             main: "붉은 열매, 모란", note: Note(t: "붉은 열매", m: "모란, 꽃, 자스민", b: "암브로시안"),
             brand: "겐조"),
        Item(name: "구찌 블룸 EDP", image: "9",
             main: "튜베로즈, 자스민, 허니써클", note: Note(t: "오렌지, 풀", m: "튜베로즈, 자스민, 허니써클", b: "오리스, 샌달우드, 바닐라"),
             brand: "구찌"),
        Item(name: "구찌 엔비미  EDT", image: "10",
             main: "모란, 리치, 장미", note: Note(t: "모란, 파인애플, 홍고추, 계피, 복숭아, 자스민, 망고", m: "모란, 머스크, 백차, 석류, 리치, 자스민, 장미", b: "티크, 샌달우드, 통카빈, 머스크, 담배잎"),
             brand: "구찌")
    ]
    
}
//전환 메소드






