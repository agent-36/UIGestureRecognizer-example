//
//  ViewController.swift
//  gesture-sample
//
//  Created by Ihwan ID on 06/05/20.
//  Copyright © 2020 Ihwan ID. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    
    @IBAction
    func handleTapGesture(_ gesture: UITapGestureRecognizer){
        print("image tapped")
    }
    
    @IBAction
    func handlePanGesture(_ gesture: UIPanGestureRecognizer){
        // 1
        let translation = gesture.translation(in: view)

        // 2
        guard let gestureView = gesture.view else {
          return
        }

        gestureView.center = CGPoint(
          x: gestureView.center.x + translation.x,
          y: gestureView.center.y + translation.y
        )

        // 3
        gesture.setTranslation(.zero, in: view)
    }
    
    @IBAction
    func handlePinchGesture(_ gesture: UIPinchGestureRecognizer){
        guard let gestureView = gesture.view else {
          return
        }

        gestureView.transform = gestureView.transform.scaledBy(
          x: gesture.scale,
          y: gesture.scale
        )
        gesture.scale = 1
    }
    
}

