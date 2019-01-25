//
//  detailViewController.swift
//  NewMasterDetail
//
//  Created by linc on 22/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    var item: Item?
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var main: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var topNote: UILabel!
    @IBOutlet weak var middleNote: UILabel!
    @IBOutlet weak var baseNote: UILabel!
    @IBOutlet weak var perfumeImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    
    // 좋아요/저장 버튼 토글방식으로 동작. touchUpInside와 연결
    @IBAction func handleLike(_ sender: Any) {
        if let item = self.item {
            // 좋아요 목록에서 제거/좋아요 목록에 추가
            if Liked.shared.isLiked(item) {
                Liked.shared.remove(item)
                likeButton.isSelected = false
            }
            else {
                Liked.shared.add(item)
                likeButton.isSelected = true
            }
        }
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
       
        if let item = item {


            perfumeImage.image = UIImage(named: item.image!)
            name.text = item.name
            main.text = item.main
            brand.text = item.brand
            topNote.text = item.note?.t
            middleNote.text = item.note?.m
            baseNote.text = item.note?.b


            self.title = item.name
            
             //좋아요가 눌러졌는지 좋아요 버튼에 반영
            likeButton.isSelected = Liked.shared.isLiked(item)
        }

    }

}
