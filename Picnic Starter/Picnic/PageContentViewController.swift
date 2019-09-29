//
//  PageContentViewController.swift
//  Picnic
//
//  Created by Kelsey Cole on 9/29/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController, UIGestureRecognizerDelegate {



    @IBOutlet weak var doggo_label: UILabel!
    @IBOutlet weak var doggo_pics: UIImageView!
    
    var tap: UITapGestureRecognizer!
    var pageIndex: Int = 0
    var strTitle: String!
    var strPhotoName: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      var swipeUp = UISwipeGestureRecognizer(target: self, action: Selector(("respondToSwipeGesture:")))
      swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)

        
        // Do any additional setup after loading the view.
        doggo_pics.isUserInteractionEnabled = true
        doggo_pics.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
        doggo_pics.image = UIImage(named: strPhotoName)
        doggo_label.text = strTitle
    }
  
  func respondToSwipeGesture(gesture: UIGestureRecognizer) {

    if gesture is UISwipeGestureRecognizer {


          print("Swiped Up")
      }
  }
    
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
      print("Doggo Tapped!")
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
