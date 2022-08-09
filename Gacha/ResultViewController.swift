//
//  ResultViewController.swift
//  Gacha
//
//  Created by 春田実利 on 2022/08/09.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    var hukidasiArray: [UIImage]!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hukidasiArray = [UIImage(named: "001")!,
                         UIImage(named: "002")!,
                         UIImage(named: "003")!,
                         UIImage(named: "004")!,
                         UIImage(named: "005")!,
                         UIImage(named: "006")!,
                         UIImage(named: "007")!,
                         UIImage(named: "008")!,
                         UIImage(named: "009")!,
                         UIImage(named: "010")!
                         
        ]
        
        let number = Int.random(in: 0...9)
        
        monsterImageView.image = hukidasiArray[number]
        
        if number == 9 {
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number > 7 {
            backgroundImageView.image = UIImage(named: "bg_red")
        } else {
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
        
        print("🥰",backgroundImageView.image)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
