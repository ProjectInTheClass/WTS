//
//  ViewController.swift
//  NewStart
//
//  Created by linc on 15/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var GifView1: UIImageView?
    
    @IBOutlet weak var GifView2: UIImageView?
    
    @IBOutlet weak var GifView3: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let gifView1 = GifView1 {
            gifView1.loadGif(name: "Embers8625")
        }
        if let gifView2 = GifView2 {
            gifView2.loadGif(name: "Motion18267")
        }
        if let gifView3 = GifView3 {
            gifView3.loadGif(name: "Embers8625")
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        <#code#>
    }
    
    
    


}

