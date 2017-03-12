//
//  InfoVC.swift
//  Clima
//
//  Created by Juan Morillo on 4/3/17.
//  Copyright © 2017 Juan Morillo. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func closeBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
