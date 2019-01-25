//
//  SavedTableViewController.swift
//  NewMasterDetail
//
//  Created by linc on 24/01/2019.
//  Copyright © 2019 linc. All rights reserved.
///Users/linc/Desktop/NewMasterDetail/NewMasterDetail

import UIKit

class SavedTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        Liked.shared.saves.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Liked.shared.saves.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SavedCell", for: indexPath)
        
        let item = Liked.shared.saves[indexPath.row]
        
        cell.textLabel?.text = item.name
        //cell.imageView?.image = UIImage(named: item.thumbnail)
        
        return cell
    }
}
