//
//  PetInformationViewController.swift
//  Picnic
//
//  Created by Cameron Lydon on 9/29/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import UIKit

class PetInformationViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
      
      var swipeDown = UISwipeGestureRecognizer(target: self, action: Selector(("respondToSwipeGesture:")))
      swipeDown.direction = UISwipeGestureRecognizer.Direction.down
      self.view.addGestureRecognizer(swipeDown)

      
        // Do any additional setup after loading the view.
    }
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
      if gesture is UISwipeGestureRecognizer {
            print("Swiped Down")
        }
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
