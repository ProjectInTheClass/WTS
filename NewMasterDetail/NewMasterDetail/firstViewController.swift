//
//  firstViewController.swift
//  NewMasterDetail
//
//  Created by linc on 25/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

class firstViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var mainScrollView: UIScrollView?
    
    @IBOutlet weak var BackgroundImage: UIImageView!
    
    @IBOutlet weak var IndexButton: UIButton!
    
    var imageArray = [UIImage]()
    let GifView1 = UIImage.gifImageWithName(name: "floral")
    let GifView2 = UIImage.gifImageWithName(name: "oriental")
    let GifView3 = UIImage.gifImageWithName(name: "woody")
    let GifView4 = UIImage.gifImageWithName(name: "rainy")
    let GifView5 = UIImage.gifImageWithName(name: "fruity")
    let GifView6 = UIImage.gifImageWithName(name: "spicy")
    let GifView7 = UIImage.gifImageWithName(name: "oceanic")
    
    
    
    //let imageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mainScrollView?.frame = view.frame
        mainScrollView?.delegate = self
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = 0.4
        blurEffectView.frame = view.bounds
        BackgroundImage.image = UIImage(named: "Rose49322")
        //BackgroundImage.backgroundColor = hexStringToUIColor(hex: "#f6d9e5")
        IndexButton.setTitle("flower", for: .normal )
        BackgroundImage.addSubview(blurEffectView)
        
        imageArray = [GifView1, GifView2, GifView3, GifView4, GifView5, GifView6, GifView7] as! [UIImage]
        
        
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFill
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: (self.mainScrollView?.frame.width)!, height: (self.mainScrollView?.frame.height)!)
            
            mainScrollView?.contentSize.width = (mainScrollView?.frame.width)! * CGFloat(i + 1)
            mainScrollView?.addSubview(imageView)
        }
        IndexButton.addTarget(self, action: #selector(handleTapButton), for: .touchUpInside)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        
        if currentPage == 0 {
             BackgroundImage.image = UIImage(named: "floral_bg")
            IndexButton.setTitle("flower", for: .normal )
        } else if currentPage == 1 {
            BackgroundImage.image = UIImage(named: "oriental_bg")
            IndexButton.setTitle("oriental", for: .normal )
        } else if currentPage == 2 {
            BackgroundImage.image = UIImage(named: "woody_bg")
            IndexButton.setTitle("woody", for: .normal )
        } else if currentPage == 3 {
            BackgroundImage.image = UIImage(named: "rainy_bg")
            IndexButton.setTitle("rainy", for: .normal )
        } else if currentPage == 4 {
            BackgroundImage.image = UIImage(named: "fruity_bg")
            IndexButton.setTitle("fruity", for: .normal )
        } else if currentPage == 5 {
            BackgroundImage.image = UIImage(named: "spicy_bg")
            IndexButton.setTitle("spicy", for: .normal )
        } else if currentPage == 6 {
            BackgroundImage.image = UIImage(named: "oceanic_bg")
            IndexButton.setTitle("oceanic", for: .normal )
        }
    }
    

    
    @objc func handleTapButton() {
        let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as UIViewController
        let x = mainScrollView!.contentOffset.x
        let w = mainScrollView!.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        
        if currentPage == 0 {
            //BackgroundImage.image = UIImage(named: "floral_bg")
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트"})
            self.navigationController?.pushViewController(viewController, animated: true)
        } else if currentPage == 1 {
            //BackgroundImage.image = UIImage(named: "oriental_bg")
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "플로랄"})
        } else if currentPage == 2 {
            //BackgroundImage.image = UIImage(named: "woody_bg")
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트"})
        } else if currentPage == 3 {
            //BackgroundImage.image = UIImage(named: "rainy_bg")
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트"})
        } else if currentPage == 4 {
            //BackgroundImage.image = UIImage(named: "fruity_bg")
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트"})
        } else if currentPage == 5 {
            //BackgroundImage.image = UIImage(named: "spicy_bg")
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트"})
        } else if currentPage == 6 {
            //BackgroundImage.image = UIImage(named: "oceanic_bg")
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트"})
        }
        
        
        
        
        
//        if (mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 0{
//
//            self.navigationController?.pushViewController(viewController, animated: true)
//           // var items = items.filter({$0.accord == "스위트"})
//            //
//        }else if(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 1{
//            self.navigationController?.pushViewController(viewController, animated: true)
//        }else if(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 2{
//            self.navigationController?.pushViewController(viewController, animated: true)
//        }else if(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 3{
//            self.navigationController?.pushViewController(viewController, animated: true)
//        }else if(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 4{
//            self.navigationController?.pushViewController(viewController, animated: true)
//        }else if(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 5{
//            self.navigationController?.pushViewController(viewController, animated: true)
//        }else if(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 6{
//            self.navigationController?.pushViewController(viewController, animated: true)
//        }
    }
        
}
