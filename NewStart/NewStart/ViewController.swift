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
            gifview.loadGif(name: "1")
        }
        if let gifview2 = GifView2{
            gifview2.loadGif(name: "2")
        }
        if let gifview3 = GifView3{
            gifview3.loadGif(name:"3")
        }
//        if let gifview4 = GifView4{
//            gifview3.loadGif(name:"4")
//        }
//        if let gifview5 = GifView5{
//            gifview3.loadGif(name:"Tree2004")
//        }
//        if let gifview6 = GifView6{
//            gifview3.loadGif(name:"6")
//        }
//        if let gifview7 = GifView7{
//            gifview3.loadGif(name:"7")
        }
        /*if let gifview8 = GifView3{
            gifview3.loadGif(name:"Tree2004")
        }
        if let gifview9 = GifView3{
            gifview3.loadGif(name:"Tree2004")
        }
        if let gifview10 = GifView3{
            gifview3.loadGif(name:"Tree2004")
        }*/
 
    
        
}
    
  
    
    
    




