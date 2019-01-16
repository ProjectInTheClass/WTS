//
//  ViewController.swift
//  DetailPage
//
//  Created by linc on 16/01/2019.
//  Copyright © 2019 linc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //향수사진
    @IBOutlet weak var PerfumeImage: UIImageView!
    //향수이름
    @IBOutlet weak var PerfumeName: UILabel!
    //향수브랜드
    @IBOutlet weak var PerfumeBrand: UILabel!
    //제일 강한 향
    @IBOutlet weak var StrongestScent: UILabel!
    //향수에 대한 짧은 설명
    @IBOutlet weak var PerfumeIntroduction: UILabel!
    //노트 표현 삼각형
    @IBOutlet weak var NoteImage: UIImageView!
    //탑노트
    @IBOutlet weak var TopNote: UILabel!
    //미들노트
    @IBOutlet weak var MiddleNote: UILabel!
    //베이스노트
    @IBOutlet weak var BaseNote: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        PerfumeName.text = " 페어리 댄스 시크릿 포 우먼 "
        PerfumeBrand.text = " 안나수이 "
        StrongestScent.text = " 망고향 "
        PerfumeIntroduction.text = " 어머 넘나 좋은 향 "
        TopNote.text = " 망고맹고 "
        MiddleNote.text = " 망고맹고 "
        BaseNote.text = " 망고맹고 "
    }


}

