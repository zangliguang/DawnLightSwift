//
//  LoginViewController.swift
//  DawnLight
//
//  Created by 臧黎光 on 2019/8/15.
//  Copyright © 2019 臧黎光. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class LoginViewController: UIViewController {

    @IBAction func finish(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color:UIColor.red)
        
        let header : HTTPHeaders = [
            "access_token": "c2b889331256b75ea7bf5f511eee7dbe35e01d583bd6e11b2375ad963eece370"
        ]
        AF.request("http://www.unicornvideo.net:9090/api/v1/videolist/1/200", method: .get, parameters: nil, encoding: URLEncoding.default, headers: header, interceptor: nil).responseJSON{response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
        // Do any additional setup after loading the view.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    func setStatusBarBackgroundColor(color: UIColor) {
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = color
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
