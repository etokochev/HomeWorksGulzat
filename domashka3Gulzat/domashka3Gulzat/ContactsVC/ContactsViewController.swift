//
//  ContactsViewController.swift
//  domashka3Gulzat
//
//  Created by Erzhan Tokochev on 3/1/23.
//

import UIKit

class ContactsViewController: UIViewController {
    
    private let cellID = "cell"
    
    @IBOutlet weak var tableView: UITableView!
    
    private var users: [User] = []
    
    public var name: String?
    public var surname: String?
    public var titleL: String?
    public var image: UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ContactsTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        initData()
    }
    
    
    private func initData() {
        users.append(User(name: "\(name!) \(surname ?? "")", image: "Erzhan", biography: "\(titleL ?? "iOS Developer")"))
        users.append(User(name: "Chyngyz Karachalov", image: "Chyngyz", biography: "Back-end Developer"))
        users.append(User(name: "Агиль лох", image: "AgilLoh", biography: "лох"))
        users.append(User(name: "Tilek Mamatov", image: "Tilek", biography: "Boo"))
    }
    
}

extension ContactsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ContactsTableViewCell
        cell.initUI(name: users[indexPath.row].name,
                    image: users[indexPath.row].image,
                    biography: users[indexPath.row].biography)
        return cell
    }
    
}

extension ContactsViewController: UITableViewDelegate {
    
}

struct User {
    var name: String
    var image: String
    var biography: String
}


