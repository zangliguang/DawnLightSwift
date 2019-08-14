//
//  VideoViewController.swift
//  DawnLight
//
//  Created by 臧黎光 on 2019/8/14.
//  Copyright © 2019 臧黎光. All rights reserved.
//

import UIKit
import AnimatedTextInput
class VideoViewController: UIViewController {

    @IBOutlet weak var textInput: AnimatedTextInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInput.accessibilityLabel = "standard_text_input"
        textInput.placeHolderText = "Normal text"
        textInput.text = "Something"
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
