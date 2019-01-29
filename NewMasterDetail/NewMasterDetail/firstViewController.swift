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
    
<<<<<<< HEAD
    @IBOutlet weak var accordButton: UIButton!

//    @IBOutlet weak var mainButton1: UIButton!
//
//    @IBOutlet weak var mainButton2: UIButton!
//
//    @IBOutlet weak var mainButton3: UIButton!
    
    @IBOutlet weak var mainLabel: UILabel!
    
=======
    @IBOutlet weak var IndexButton: UIButton!
>>>>>>> 1e640f6a3cfd1b07d8038e6ef4fcec306102ccde
    
    var imageArray = [UIImage]()
    let GifView1 = UIImage.gifImageWithName(name: "floral")
    let GifView2 = UIImage.gifImageWithName(name: "oriental")
    let GifView3 = UIImage.gifImageWithName(name: "woody")
<<<<<<< HEAD
    let GifView4 = UIImage.gifImageWithName(name: "sweet")
=======
    let GifView4 = UIImage.gifImageWithName(name: "rainy")
>>>>>>> 1e640f6a3cfd1b07d8038e6ef4fcec306102ccde
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
<<<<<<< HEAD
        BackgroundImage.image = UIImage(named: "floral_bg")
        mainLabel.text = "\"이슬을 머금은 꽃향기는 맡아보실래요?\""
        //BackgroundImage.backgroundColor = hexStringToUIColor(hex: "#f6d9e5")
        accordButton.setTitle("맡으러가기", for: .normal )
//        mainButton1.setTitle("장미", for: .normal)
//        mainButton2.setTitle("수련", for: .normal)
//        mainButton3.setTitle("자스민", for: .normal)
=======
        BackgroundImage.image = UIImage(named: "Rose49322")
        //BackgroundImage.backgroundColor = hexStringToUIColor(hex: "#f6d9e5")
        IndexButton.setTitle("flower", for: .normal )
>>>>>>> 1e640f6a3cfd1b07d8038e6ef4fcec306102ccde
        BackgroundImage.addSubview(blurEffectView)
        
        imageArray = [GifView1, GifView2, GifView3, GifView4, GifView5, GifView6, GifView7] as! [UIImage]
        
        
<<<<<<< HEAD
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
=======
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFill
>>>>>>> 1e640f6a3cfd1b07d8038e6ef4fcec306102ccde
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: (self.mainScrollView?.frame.width)!, height: (self.mainScrollView?.frame.height)!)
            
            mainScrollView?.contentSize.width = (mainScrollView?.frame.width)! * CGFloat(i + 1)
            mainScrollView?.addSubview(imageView)
        }
<<<<<<< HEAD
        accordButton.addTarget(self, action: #selector(handleTapButton), for: .touchUpInside)
//        mainButton1.addTarget(self, action: #selector(handleTapButton1), for: .touchUpInside)
//        mainButton2.addTarget(self, action: #selector(handleTapButton2), for: .touchUpInside)
//        mainButton3.addTarget(self, action: #selector(handleTapButton3), for: .touchUpInside)
=======
        IndexButton.addTarget(self, action: #selector(handleTapButton), for: .touchUpInside)
>>>>>>> 1e640f6a3cfd1b07d8038e6ef4fcec306102ccde
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        
        if currentPage == 0 {
<<<<<<< HEAD
            BackgroundImage.image = UIImage(named: "floral_bg")
            accordButton.setTitle("맡으러가기", for: .normal )
//            mainButton1.setTitle("장미", for: .normal)
//            mainButton2.setTitle("수련", for: .normal)
//            mainButton3.setTitle("자스민", for: .normal)
            mainLabel.text = "\"이슬을 머금은 꽃향기 맡아보실래요?\""
        } else if currentPage == 1 {
            BackgroundImage.image = UIImage(named: "oriental_bg")
            accordButton.setTitle("빠지러가기", for: .normal )
//            mainButton1.setTitle("장미", for: .normal)
//            mainButton2.setTitle("수련", for: .normal)
//            mainButton3.setTitle("자스민", for: .normal)
            mainLabel.text = "\"몽환적인 분위기에 빠져보세요\""
        } else if currentPage == 2 {
            BackgroundImage.image = UIImage(named: "woody_bg")
            accordButton.setTitle("느끼러가기", for: .normal )
//            mainButton1.setTitle("장미", for: .normal)
//            mainButton2.setTitle("수련", for: .normal)
//            mainButton3.setTitle("자스민", for: .normal)
            mainLabel.text = "\"싱그러운 아침햇살을 담은 숲을 느껴보세요\""
        } else if currentPage == 3 {
            BackgroundImage.image = UIImage(named: "sweet_bg")
            accordButton.setTitle("빠지러가기", for: .normal )
//            mainButton1.setTitle("바닐라", for: .normal)
//            mainButton2.setTitle("카라멜", for: .normal)
//            mainButton3.setTitle("마카롱", for: .normal)
            mainLabel.text = "\"더 진하고 달콤한 나에게 빠져볼래요?\""
        } else if currentPage == 4 {
            BackgroundImage.image = UIImage(named: "fruity_bg")
            accordButton.setTitle("맛보러가기", for: .normal )
//            mainButton1.setTitle("베리", for: .normal)
//            mainButton2.setTitle("사과", for: .normal)
//            mainButton3.setTitle("복숭아", for: .normal)
            mainLabel.text = "\"상큼하면서 톡 터지는 과즙을 맛보실래요?\""
        } else if currentPage == 5 {
            BackgroundImage.image = UIImage(named: "spicy_bg")
            accordButton.setTitle("보러가기", for: .normal )
//            mainButton1.setTitle("장미", for: .normal)
//            mainButton2.setTitle("수련", for: .normal)
//            mainButton3.setTitle("자스민", for: .normal)
            mainLabel.text = "\"강렬하고 열정적인 당신을 위한\""
        } else if currentPage == 6 {
            BackgroundImage.image = UIImage(named: "oceanic_bg")
            accordButton.setTitle("놀러가기", for: .normal )
//            mainButton1.setTitle("장미", for: .normal)
//            mainButton2.setTitle("수련", for: .normal)
//            mainButton3.setTitle("자스민", for: .normal)
            mainLabel.text = "\"바다를 품은 시원한 곳으로 놀러오세요\""
        }
    }
    
    /*func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool){
        
        if /*(mainScrollView?.contentOffset.x)! > (mainScrollView?.bounds.width)! * 0 && */(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 0{
            print("\((mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)!)")
            BackgroundImage.image = UIImage(named: "floral_bg")
            //BackgroundImage.backgroundColor = hexStringToUIColor(hex: "#f6d9e5")
            IndexButton.setTitle("flower", for: .normal)
        }else if/*(mainScrollView?.contentOffset.x)! > (mainScrollView?.bounds.width)! * 0 &&*/ (mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 1{
            print("\((mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)!)")
            BackgroundImage.image = UIImage(named: "oriental_bg")
            IndexButton.setTitle("oriental", for: .normal)
        }else if/*(mainScrollView?.contentOffset.x)! > (mainScrollView?.bounds.width)! * 1 && */(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 2{
            print("\((mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)!)")
            BackgroundImage.image = UIImage(named: "woody_bg")
            IndexButton.setTitle("fresh", for: .normal)
        }else if/*(mainScrollView?.contentOffset.x)! > (mainScrollView?.bounds.width)! * 2 && */(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 3{
            print("\((mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)!)")
            BackgroundImage.image = UIImage(named: "rainy_bg")
            IndexButton.setTitle("rainy", for: .normal)
        }else if/*(mainScrollView?.contentOffset.x)! > (mainScrollView?.bounds.width)! * 3 && */(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 4{
            print("\((mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)!)")
            BackgroundImage.image = UIImage(named: "fruity_bg")
            IndexButton.setTitle("sweet", for: .normal)
        }else if/*(mainScrollView?.contentOffset.x)! > (mainScrollView?.bounds.width)! * 4  && */(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 5{
            print("\((mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)!)")
            BackgroundImage.image = UIImage(named: "spicy_bg")
            IndexButton.setTitle("spicy", for: .normal)
        }else if/*(mainScrollView?.contentOffset.x)! > (mainScrollView?.bounds.width)! * 5 && */(mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)! < 6{
            print("\((mainScrollView?.contentOffset.x)! / (mainScrollView?.frame.width)!)")
            BackgroundImage.image = UIImage(named: "oceanic_bg")
            IndexButton.setTitle("ocean", for: .normal)
        }/*else if(mainScrollView?.contentOffset.x)! > (mainScrollView?.bounds.width)! * 6 && (mainScrollView?.contentOffset.x)! < (mainScrollView?.bounds.width)! * 7{
         print("/(mainScrollView?.contentOffset.x)")
         BackgroundImage.image = UIImage(named: "7.7")
         }*/
        
        
    }*/
=======
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
    

>>>>>>> 1e640f6a3cfd1b07d8038e6ef4fcec306102ccde
    
    @objc func handleTapButton() {
        let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as UIViewController
        let x = mainScrollView!.contentOffset.x
        let w = mainScrollView!.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        
        if currentPage == 0 {
<<<<<<< HEAD
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "플로랄"})
            self.navigationController?.pushViewController(viewController, animated: true)
        } else if currentPage == 1 {
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "아로마틱"})
        } else if currentPage == 2 {
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "우디"})
        } else if currentPage == 3 {
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트"})
        } else if currentPage == 4 {
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "프루티"})
        } else if currentPage == 5 {
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스파이시"})
        } else if currentPage == 6 {
            self.navigationController?.pushViewController(viewController, animated: true)
            Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "아쿠아틱"})
        }
    }
        
//        @objc func handleTapButton1() {
//            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as UIViewController
//            let x = mainScrollView!.contentOffset.x
//            let w = mainScrollView!.bounds.size.width
//            let currentPage = Int(ceil(x/w))
//            print(currentPage)
//
//            if currentPage == 0 {
//                //BackgroundImage.image = UIImage(named: "floral_bg")
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "플로랄" && $0.main.contains("장미")})
//                self.navigationController?.pushViewController(viewController, animated: true)
//            } else if currentPage == 1 {
//                //BackgroundImage.image = UIImage(named: "oriental_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "아로마틱"})
//            } else if currentPage == 2 {
//                //BackgroundImage.image = UIImage(named: "woody_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "우디"})
//            } else if currentPage == 3 {
//                //BackgroundImage.image = UIImage(named: "rainy_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트" && $0.main.contains("바닐라")})
//            } else if currentPage == 4 {
//                //BackgroundImage.image = UIImage(named: "fruity_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "프루티" && $0.main.contains("베리")})
//            } else if currentPage == 5 {
//                //BackgroundImage.image = UIImage(named: "spicy_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스파이시"})
//            } else if currentPage == 6 {
//                //BackgroundImage.image = UIImage(named: "oceanic_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "아쿠아틱"})
//            }
//        }
//        @objc func handleTapButton2() {
//            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as UIViewController
//            let x = mainScrollView!.contentOffset.x
//            let w = mainScrollView!.bounds.size.width
//            let currentPage = Int(ceil(x/w))
//            print(currentPage)
//
//            if currentPage == 0 {
//                //BackgroundImage.image = UIImage(named: "floral_bg")
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "플로랄" && $0.main.contains("수련")})
//                self.navigationController?.pushViewController(viewController, animated: true)
//            } else if currentPage == 1 {
//                //BackgroundImage.image = UIImage(named: "oriental_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "아로마틱"})
//            } else if currentPage == 2 {
//                //BackgroundImage.image = UIImage(named: "woody_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "우디"})
//            } else if currentPage == 3 {
//                //BackgroundImage.image = UIImage(named: "rainy_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트" && $0.main.contains("카라멜")})
//            } else if currentPage == 4 {
//                //BackgroundImage.image = UIImage(named: "fruity_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "프루티" && $0.main.contains("사과")})
//            } else if currentPage == 5 {
//                //BackgroundImage.image = UIImage(named: "spicy_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스파이시"})
//            } else if currentPage == 6 {
//                //BackgroundImage.image = UIImage(named: "oceanic_bg")
//                self.navigationController?.pushViewController(viewController, animated: true)
//                Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "아쿠아틱"})
//            }
//
//
//        }
//            @objc func handleTapButton3() {
//                let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as UIViewController
//                let x = mainScrollView!.contentOffset.x
//                let w = mainScrollView!.bounds.size.width
//                let currentPage = Int(ceil(x/w))
//                print(currentPage)
//
//                if currentPage == 0 {
//                    //BackgroundImage.image = UIImage(named: "floral_bg")
//                    Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "플로랄" && $0.main.contains("자스민")})
//                    self.navigationController?.pushViewController(viewController, animated: true)
//                } else if currentPage == 1 {
//                    //BackgroundImage.image = UIImage(named: "oriental_bg")
//                    self.navigationController?.pushViewController(viewController, animated: true)
//                    Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "아로마틱"})
//                } else if currentPage == 2 {
//                    //BackgroundImage.image = UIImage(named: "woody_bg")
//                    self.navigationController?.pushViewController(viewController, animated: true)
//                    Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "우디"})
//                } else if currentPage == 3 {
//                    //BackgroundImage.image = UIImage(named: "rainy_bg")
//                    self.navigationController?.pushViewController(viewController, animated: true)
//                    Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스위트" && $0.main.contains("마카롱")})
//                } else if currentPage == 4 {
//                    //BackgroundImage.image = UIImage(named: "fruity_bg")
//                    self.navigationController?.pushViewController(viewController, animated: true)
//                    Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "프루티" && $0.main.contains("복숭아")})
//                } else if currentPage == 5 {
//                    //BackgroundImage.image = UIImage(named: "spicy_bg")
//                    self.navigationController?.pushViewController(viewController, animated: true)
//                    Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "스파이시"})
//                } else if currentPage == 6 {
//                    //BackgroundImage.image = UIImage(named: "oceanic_bg")
//                    self.navigationController?.pushViewController(viewController, animated: true)
//                    Liked.shared.AccordArr = ReserveItem.items.filter({$0.accord == "아쿠아틱"})
//                }
//            }
    
=======
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
        
>>>>>>> 1e640f6a3cfd1b07d8038e6ef4fcec306102ccde
}
