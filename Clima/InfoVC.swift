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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func closeBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
