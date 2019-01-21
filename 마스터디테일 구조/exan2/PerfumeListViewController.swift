//
//  PerfumeListViewController.swift
//  exan2
//
//  Created by linc on 17/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

class PerfumeListViewController: UITableViewController {
    var items = [
        Item(name: "이름1", image: "ferrari",
             main: "가장 강한 향", note: Note(t: "탑", m: "미들", b: "베이스"),
             brand: "브랜드"),
        Item(name: "이름2", image: "이미지",
             main: "가장 강한 향", note: Note(t: "탑노트", m: "미들노트", b: "베이스노트"),
             brand: "브랜드"),
        Item(name: "이름3", image: "이미지",
             main: "가장 강한 향", note: Note(t: "탑노트", m: "미들노트", b: "베이스노트"),
             brand: "브랜드"),
        Item(name: "이름4", image: "이미지",
             main: "가장 강한 향", note: Note(t: "탑노트", m: "미들노트", b: "베이스노트"),
             brand: "브랜드"),
        Item(name: "이름5", image: "이미지",
             main: "가장 강한 향", note: Note(t: "탑노트", m: "미들노트", b: "베이스노트"),
             brand: "브랜드")
    ]
    // 테이블 뷰 데이터 소스
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        let item = items[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.brand
        //cell.imageView?.image = UIImage(named: item.image!)
        
        return cell
    }
    // 상세씬 전환
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
            let detailVC = segue.destination as? ViewController,
            let cell = sender as? UITableViewCell,
            let index = self.tableView.indexPath(for: cell) {
            let item = items[index.row]
            detailVC.item = item
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
