//
//  ViewController.swift
//  MyDiceApp
//
//  Created by 김서연 on 2023/07/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDiceView: UIImageView!
    @IBOutlet weak var rightDiceView: UIImageView!
    @IBOutlet var rollButtonTabbed: UIView!
    
    var diceImageArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func rollButtonTap(_ sender: UIButton) {
        //첫번째 이미지뷰의 이미지를 랜덤으로 변경
        leftDiceView.image = diceImageArray.randomElement()
        //두번째 이미지뷰의 이미지를 랜덤으로 변경
        rightDiceView.image = diceImageArray.randomElement()
    }
}

