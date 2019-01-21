//
//  ViewController.swift
//  exan2
//
//  Created by linc on 17/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var item: Item?

    
    
    @IBOutlet weak var perfumeImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var main: UILabel!
    @IBOutlet weak var topNote: UILabel!
    @IBOutlet weak var middleNote: UILabel!
    @IBOutlet weak var baseNote: UILabel!
    @IBOutlet weak var notePyramid: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // 옵셔널
        if let item = item {
           
            
            perfumeImage.image = UIImage(named: item.image!)
            name.text = item.name
            main.text = item.main
            brand.text = item.brand
            topNote.text = item.note?.t
            middleNote.text = item.note?.m
            baseNote.text = item.note?.b
            
            
            
            
            
    
            self.title = item.name
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
