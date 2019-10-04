//
//  LaunchAnimation.swift
//  Picnic
//
//  Created by Sam Armstrong on 9/30/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

//import Foundation
import UIKit

class LaunchAnimation: UIViewController {
  
  @IBOutlet weak var tongue: UIImageView!
    
  /*override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    //performSegue(withIdentifier: "CoolEffect", sender: nil)
  }*/
  
  override func viewDidLoad() {
    super.viewDidLoad()
    UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
      self.tongue.alpha = 1.0
      self.tongue.center = CGPoint(x: 122, y: 553)
    }/*, completion: { finished in
//      self.tongue.removeFromSuperview()
    }*/)
    
  }

    
    
    
}
