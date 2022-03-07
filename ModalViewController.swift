//
//  ModalViewController.swift
//  Senni
//
//  Created by 近藤大伍 on 2022/02/19.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segueButton(_ sender: Any) {
        performSegue(withIdentifier: "NextModal", sender: nil)
    }
    
    @IBAction func presentButton(_ sender: Any) {
        let nextModalVC = self.storyboard?.instantiateViewController(withIdentifier: "NextModal")
        nextModalVC?.view.backgroundColor = UIColor.systemIndigo
        self.present(nextModalVC!, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NextModal"{
            let nextPushVC = segue.destination as! NextModalViewController
            nextPushVC.view.backgroundColor = UIColor.systemOrange
        }
    }
    
}
