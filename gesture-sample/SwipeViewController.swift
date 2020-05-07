//
//  SwipeViewController.swift
//  gesture-sample
//
//  Created by Ihwan ID on 07/05/20.
//  Copyright © 2020 Ihwan ID. All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {

    @IBOutlet weak var swipeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

                // Do any additional setup after loading the view.
                let leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(leftSwipedByUser(_:)))
                     leftSwipeGesture.direction = .left
                     self.view.addGestureRecognizer(leftSwipeGesture)
        
                     let rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(rightSwipedByUser(_:)))
                     rightSwipeGesture.direction = .right
                     self.view.addGestureRecognizer(rightSwipeGesture)
        
                     let topSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(topSwipedByUser(_:)))
                     topSwipeGesture.direction = .up
                     self.view.addGestureRecognizer(topSwipeGesture)
        
                     let bottomSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(bottomSwipedByUser(_:)))
                     bottomSwipeGesture.direction = .down
                     self.view.addGestureRecognizer(bottomSwipeGesture)
    }
    
        @objc func leftSwipedByUser(_ gesture:UISwipeGestureRecognizer) {
               self.swipeLabel.text = "Left Swipe"
           }
    
           @objc func rightSwipedByUser(_ gesture:UISwipeGestureRecognizer) {
               self.swipeLabel.text = "Right Swipe"
           }
    
           @objc func topSwipedByUser(_ gesture:UISwipeGestureRecognizer) {
               self.swipeLabel.text = "UP Swipe"
           }
    
           @objc func bottomSwipedByUser(_ gesture:UISwipeGestureRecognizer) {
               self.swipeLabel.text = "Down Swipe"
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
