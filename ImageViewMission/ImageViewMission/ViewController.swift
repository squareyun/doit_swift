//
//  ViewController.swift
//  ImageViewMission
//
//  Created by 윤우혁 on 2022/04/30.
//

import UIKit

class ViewController: UIViewController {
    var imgNum = 1
    var maxImgNum = 3
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var nextBtn: UIButton!
    @IBOutlet var prevBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.image = UIImage(named: "1.jpg")
    }

    @IBAction func swapImgToNext(_ sender: UIButton) {
        imgNum += 1
        
        if (imgNum > maxImgNum) {
            imgNum = 1
        }
        
        let imgName = String(imgNum) + ".jpg"
        imgView.image = UIImage(named: imgName)
    }
    
    @IBAction func swapImgToPrev(_ sender: UIButton) {
        imgNum -= 1
        
        if (imgNum < 1) {
            imgNum = 3
        }
        
        let imgName = String(imgNum) + ".jpg"
        imgView.image = UIImage(named: imgName)
    }
}

