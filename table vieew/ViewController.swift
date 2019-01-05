//
//  ViewController.swift
//  table vieew
//
//  Created by Student-001 on 20/11/18.
//  Copyright © 2018 ra. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    let friendsArray = ["hrishi","amit","veer","rohit"]
    let friendArray = ["rj","nick","shailesh"]

   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
   
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0)
        {
          return friendsArray.count
        }
        else
        {
            return friendArray.count
        }
       
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.imageView?.image = UIImage(named: "s.jpg")
        if(indexPath.section == 0)
        {
        cell.textLabel?.text = friendsArray[indexPath.row]
        cell.detailTextLabel?.text = "friends"
    }
    else
        {
            cell.textLabel?.text = friendArray[indexPath.row]
            cell.detailTextLabel?.text = "friend"
        }
        return cell
    }

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       tableview.dataSource = self
        //tabelview.delegate = self
      
       }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
}
