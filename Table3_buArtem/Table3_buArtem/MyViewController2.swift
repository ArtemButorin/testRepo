//
//  MyViewController2.swift
//  Table3_buArtem
//
//  Created by Артем Буторин on 05.04.2022.
//

import UIKit

class MyViewController2: UIViewController {
    
    var text1: String = "no data"
    var text2: String = "no data"
    var text3: String = "no data"
    
    @IBOutlet weak var main: UILabel?
    @IBOutlet weak var place: UILabel?
    @IBOutlet weak var info: UILabel?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        main?.text = text1
        place?.text = text2
        info?.text = text3

        // Do any additional setup after loading the view.
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
