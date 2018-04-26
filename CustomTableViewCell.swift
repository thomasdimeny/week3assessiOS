//
//  CustomTableView.swift
//  Week3Assessment
//
//  Created by Thomas Dimeny on 4/25/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit



class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userFavorite: UILabel!
    
    func setupCell(person: Person) {
        userName.text = person.name
        userFavorite.text = person.favoriteThing
    }
    
}
