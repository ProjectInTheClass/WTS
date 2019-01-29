//
//  ViewController.swift
//  NewMasterDetail
//
//  Created by linc on 21/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//
//필터링 소스 items.filter({$0.accord == "스위트"})

import UIKit

//테이블 뷰 소스
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchName.count
        }else{
            return Liked.shared.AccordArr.count
        }
        
//        if searching {
//            return searchBrand.count
//        }else{
//            return Liked.shared.AccordArr.count
//        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = Liked.shared.AccordArr[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReserveCell", for: indexPath) as! ReserveCell
        
        if searching {
            cell.perfumeLabel1.text = searchName[indexPath.row].name
            cell.perfumeLabel2.text = searchName[indexPath.row].main
        } else {
            cell.perfumeLabel1.text = item.name
            cell.perfumeLabel2.text = item.main
        }
        
//        if searching {
//            print("\(searchBrand[indexPath.row])")
//            cell.perfumeLabel1.text = searchBrand[indexPath.row].name
//            cell.perfumeLabel2.text = searchBrand[indexPath.row].main
//        } else {
//            cell.perfumeLabel1.text = item.name
//            cell.perfumeLabel2.text = item.main
//        }

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
        if searching {
            return searchName.count
        }else{
            return Liked.shared.AccordArr.count
        }
        
//        if searching {
//            return searchBrand.count
//        }else{
//            return Liked.shared.AccordArr.count
//        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = Liked.shared.AccordArr[indexPath.row]

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath) as! myCollectionViewCell

        if searching {
            cell.name.text = searchName[indexPath.row].name
            cell.main.text = searchName[indexPath.row].main
        } else {
             cell.perfumeImage.image = UIImage(named: item.image!)
        }
        
//        if searching {
//            cell.name.text = searchBrand[indexPath.row].name
//            cell.main.text = searchBrand[indexPath.row].main
//        } else {
//            cell.name.text = item.name
//            cell.main.text = item.main
//        }

        return cell
    }
}

//서치
extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchName = Liked.shared.AccordArr.filter({$0.name.prefix(searchText.count) == searchText})
//        searchBrand = Liked.shared.AccordArr.filter({$0.brand.prefix(searchText.count) == searchText})
        searching = true
        tableView.reloadData()
        collectionView.reloadData()
        
    }
}

//어코드별 어레이 저장
//var AccordArr : [Item] = []
//본 컨트롤러 클래스 // 테이블뷰+컬렉션뷰
class ViewController: UIViewController {

    //테이블뷰
    @IBOutlet weak var tableView: UITableView!
    //컬렉션 뷰
    @IBOutlet weak var collectionView: UICollectionView!
    //테이블뷰와 컬렉션뷰 전환 버튼
    
    @IBOutlet weak var searchBar: UISearchBar!
    //서치바
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
    //var AccordArr : [Item] = []
   
    
    
    

    
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
            let item = Liked.shared.AccordArr[index.row]
            detailVC.item = item
        }
        if segue.identifier == "detailSegue_c",
            let detailVC = segue.destination as? detailViewController,
            let cell = sender as? UICollectionViewCell,
            let index = self.collectionView.indexPath(for: cell) {
            let item = Liked.shared.AccordArr[index.row]
            detailVC.item = item
        }
       
    }
    
    var searchName = [Item]()
//    var searchBrand = [Item]()
    var searching = false
    
    
  
    
    
    
    //데이터는 너무 많으니까 클래스 맨 뒤로 보냈음

    

//    var items = [
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
//    ]
    
    
    
}







