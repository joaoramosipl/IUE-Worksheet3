//
//  ContactsTableViewController.swift
//  IUE-Worksheet3_Prep
//
//  Created by João Ramos on 09/10/2019.
//  Copyright © 2019 João Ramos. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    let contacts = [Contact(name: "John Peter", phoneNumber: 900000000), Contact(name: "Carl Anthony", phoneNumber: 210000000)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactTableViewCell
        
        let contact = contacts[indexPath.row]
        cell.contactName.text = contact.name
        cell.phoneNumber.text = String(contact.phoneNumber)
        
        return cell
    }
}
