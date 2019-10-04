//
//  LikedPetsVC.swift
//  Picnic
//
//  Created by  on 10/3/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import UIKit

class LikedPetsVC: UITableViewController {

  @IBOutlet weak var petName: UILabel!
  @IBOutlet var table: UITableView!
  
  var names: [String] = likedPets // Setting dog names equal to this
                                  // likePets is global from ViewController
  
  override func viewDidLoad() {
        super.viewDidLoad()
        table.tableFooterView = UIView(frame: CGRect.zero) //setting table to not show blank rows
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1  //setting table to only have 1 section
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return names.count  //setting rows equal to the number of pets in array
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // "rows" is identifier for row in Table View
        let cell = tableView.dequeueReusableCell(withIdentifier: "rows", for: indexPath)

        // Configuring the cell...
        cell.textLabel?.text = names[indexPath.row] // adding names array to rows
        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
