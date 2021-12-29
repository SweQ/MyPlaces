//
//  MainViewController.swift
//  MyPlaces
//
//  Created by alexKoro on 27.12.21.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "Балкан Гриль", "Бочка", "Вкусные истории",
        "Дастархан", "Индокитай", "Классик",
        "Шок", "Bonsai", "Burger Heroes",
        "Kitchen", "Love&Life", "Morris Pub",
        "Sherlock Holmes", "Speak Easy", "X.O"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = restaurantNames[indexPath.row]
        content.image = UIImage(named: restaurantNames[indexPath.row])
        content.imageProperties.maximumSize = CGSize(width: 85, height: 85)
        content.imageProperties.cornerRadius = content.imageProperties.maximumSize.height / 2
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - TableView Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    // MARK: - Navigator
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
