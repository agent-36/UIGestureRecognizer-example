//
//  SwipeViewController.swift
//  gesture-sample
//
//  Created by Agent36 on 07/05/20.
//  Copyright © 2020 Agent36. All rights reserved.
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


}
