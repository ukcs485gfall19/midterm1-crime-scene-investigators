//
//  PageContentViewController.swift
//  Picnic
//
//  Created by Kelsey Cole on 9/29/19.
//  Copyright © 2019 Crime Scene Investigators. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {



    @IBOutlet weak var doggo_label: UILabel!
    
    @IBOutlet weak var doggo_pics: UIImageView!
    
    var pageIndex: Int = 0
    var strTitle: String!
    var strPhotoName: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        doggo_pics.image = UIImage(named: strPhotoName)
        doggo_label.text = strTitle
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
