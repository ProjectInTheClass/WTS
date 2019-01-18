//
//  ViewController.swift
//  NewStart
//
//  Created by linc on 15/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var GifView: UIImageView?
    
    @IBOutlet weak var GifView2: UIImageView?
    
    @IBOutlet weak var GifView3: UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let gifview = GifView{
            gifview.loadGif(name: "Embers8625")
        }
        if let gifview2 = GifView2{
            gifview2.loadGif(name: "2")
        }
        if let gifview3 = GifView3{
            gifview3.loadGif(name:"Tree2004")
        }
        
    }
        
}
    
  
    
    
    




