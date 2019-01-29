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
        

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = Liked.shared.AccordArr[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReserveCell", for: indexPath) as! ReserveCell
        
        if searching {
            
            cell.perfumeLabel1.text = searchName[indexPath.row].name
            cell.perfumeLabel2.text = searchName[indexPath.row].main
        } else {
            cell.perfumeImage.image = UIImage(named: item.image!)
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
    
    
  
    
    
    

    
    
    
}







