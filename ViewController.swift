//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
     var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        people.append(Person(name: "Devan", favoriteThing: "Memes", favoriteColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
        people.append(Person(name: "David", favoriteThing: "Oof", favoriteColor: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
        people.append(Person(name: "Kenny", favoriteThing: "Wowzers", favoriteColor: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
        tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "personCell") as! CustomTableViewCell
        cell.setupCell(person: people[indexPath.row])
        return cell
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  people.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }


}

////Create a local repo for your project using git.
//Create a remote repo for your project on www.github.com.



//Using the TableView cellForRowAt function, display one cell with the CustomTableViewCell class for each Person object in the array, using the data from the person object to set up the labels for that cell.
//Commit your completed assessment files and push them to the remote repository.
//**Bonus** Using the data from each Person object, set the background color for each cell (using the favorite color of that Person).
//
