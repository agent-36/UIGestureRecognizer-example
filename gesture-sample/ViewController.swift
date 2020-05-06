//
//  ViewController.swift
//  gesture-sample
//
//  Created by Ihwan ID on 06/05/20.
//  Copyright © 2020 Ihwan ID. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

