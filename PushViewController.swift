//
//  ViewController.swift
//  Senni
//
//  Created by 近藤大伍 on 2022/02/19.
//

import UIKit

class PushViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func segueButton(_ sender: Any) {
        performSegue(withIdentifier: "NextPush", sender: nil)
    }
    
    @IBAction func navigationButton(_ sender: Any) {
        let nextPushVC = self.storyboard?.instantiateViewController(withIdentifier: "NextPush")
        nextPushVC?.view.backgroundColor = UIColor.systemGreen
        navigationController?.pushViewController(nextPushVC!, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NextPush"{
            let nextPushVC = segue.destination as! NextPushViewController
            nextPushVC.view.backgroundColor = UIColor.systemOrange
        }
    }
    
}

