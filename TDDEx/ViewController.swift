//
//  ViewController.swift
//  TDDEx
//
//  Created by Softbuilder Hibrido on 30/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickMeAction(_ sender: Any) {
        let vc2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Vc2") as! Vc2
        self.present(vc2, animated: true, completion: nil)
    }
    
}

