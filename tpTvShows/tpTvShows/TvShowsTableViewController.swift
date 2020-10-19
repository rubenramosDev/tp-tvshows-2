//
//  TvShowsTableViewController.swift
//  tpTvShows
//
//  Created by ramos vazquez erick ruben on 12/10/2020.
//  Copyright © 2020 ramos vazquez erick ruben. All rights reserved.
//

import UIKit

class TvShowsTableViewController: UITableViewController {

    var personnages =  [
        Personnage(name: "Rachel", lastName: "GREEN", tvShowName: "Friends", realName: "Jennifer", realLastName: "ANISTON", photo: "rachel"),
        Personnage(name: "Ross", lastName: "GELLER", tvShowName: "Friends", realName: "David", realLastName: "SCHWIMMER", photo: "ross"),
        Personnage(name: "Phoebe", lastName: "BUFFAY", tvShowName: "Friends", realName: "Lisa", realLastName: "KUDROW", photo: "phoebe"),
        Personnage(name: "Joey", lastName: "TRIBBIANI", tvShowName: "Friends", realName: "Matt", realLastName: "LEBLANC", photo: "joey"),
        Personnage(name: "Chandler", lastName: "BING", tvShowName: "Friends", realName: "Matthew", realLastName: "PERRY", photo: "chandler"),
        Personnage(name: "Monica", lastName: "GELLER", tvShowName: "Friends", realName: "Courteney", realLastName: "COX", photo: "monica"),
        Personnage(name: "Gregory", lastName: "HOUSE", tvShowName: "Dr house", realName: "Hugh", realLastName: "LAURIE", photo: "house"),
        Personnage(name: "James", lastName: "WILSON", tvShowName: "Dr house", realName: "Robert S.", realLastName: "LEONARD", photo: "wilson"),
        Personnage(name: "Lisa", lastName: "CUDDY", tvShowName: "Dr house", realName: "Lisa", realLastName: "EDELSTEIN", photo: "cuddy"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personnages.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPersonnage", for: indexPath)
        
        let personnage = personnages[indexPath.row]
        cell.textLabel?.text = personnage.name + " " + personnage.lastName
        cell.detailTextLabel?.text = personnage.tvShowName

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
          if editingStyle == .delete {
              // Delete the row from the data source
              personnages.remove(at: indexPath.row)
              tableView.deleteRows(at: [indexPath], with: .fade)
          } else if editingStyle == .insert {
              // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
          }
      }

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedLandmark = personnages.remove(at: fromIndexPath.row)
        personnages.insert(movedLandmark, at: to.row)
        tableView.reloadData()
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndexPath = tableView.indexPathForSelectedRow!
               let selectedPersonnage = personnages[selectedIndexPath.row]
               
               
               let detailVC = segue.destination as! ViewController
               detailVC.personnage = selectedPersonnage
    }
    

}
