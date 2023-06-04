//
//  ListScheduleViewController.swift
//  liveap
//
//  Created by 森掛 on 2023/06/01.
//

import UIKit
import RealmSwift

class ListScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var eventTableView: UITableView!
    let realm = try! Realm()
    var items: [RealmData] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventTableView.dataSource = self
        eventTableView.register(UINib(nibName: "eventTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        items = readItems()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! eventTableViewCell
        let item: RealmData = items[indexPath.row]
        cell.setCell(title: item.eventTitle)
        
        return cell
    }
    
    func readItems() -> [RealmData] {
        return Array(realm.objects(RealmData.self))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        items = readItems()
        eventTableView.reloadData()
    }
    
}

