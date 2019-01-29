//
//  SavedCollectionViewController.swift
//  NewMasterDetail
//
//  Created by linc on 28/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SavedCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.collectionView.reloadData()
    }
    
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Liked.shared.saves.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SavedCollectionViewCell", for: indexPath) as! SavedCollectionViewCell
        
        let item = Liked.shared.saves[indexPath.row]
        
        cell.perfumeImage.image = UIImage(named: item.image!)
        
        return cell
    }
    
    // 상세씬 전환- 테이블 뷰
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue_savedC",
            let detailVC = segue.destination as? detailViewController,
            let cell = sender as? UICollectionViewCell,
            let index = self.collectionView.indexPath(for: cell) {
            let item = Liked.shared.saves[index.row]
            detailVC.item = item
        }
    }
    
    
}
