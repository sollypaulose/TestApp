//
//  ViewController.swift
//  TestApp
//
//  Created by Solly Paulose on 18/12/21.
//

import UIKit

class ViewController: UIViewController {
    let tableViewData = ""
    
    @IBOutlet weak var employeeTableView: UITableView!
    let bundleData = DataLoader().employee
    var segmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        employeeTableView.register(UITableViewCell.self,
                              forCellReuseIdentifier: "TableViewCell")
        employeeTableView.dataSource = self
        employeeTableView.delegate = self
    }
    


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmentControl.selectedSegmentIndex == Type.url.rawValue {
            return bundleData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "data",
                    for: indexPath)
        if segmentControl.selectedSegmentIndex == Type.url.rawValue {
           
            cell.textLabel?.text = bundleData[indexPath.row].id
            cell.textLabel?.text = bundleData[indexPath.row].name
            cell.textLabel?.text = bundleData[indexPath.row].username
            cell.textLabel?.text = bundleData[indexPath.row].email
            cell.textLabel?.text = bundleData[indexPath.row].profile_image
            cell.textLabel?.text = bundleData[indexPath.row].address
            cell.textLabel?.text = bundleData[indexPath.row].street
            cell.textLabel?.text = bundleData[indexPath.row].suite
            cell.textLabel?.text = bundleData[indexPath.row].city
            cell.textLabel?.text = bundleData[indexPath.row].zipcode
            cell.textLabel?.text = bundleData[indexPath.row].geo
            cell.textLabel?.text = bundleData[indexPath.row].lat
            cell.textLabel?.text = bundleData[indexPath.row].lng
            cell.textLabel?.text = bundleData[indexPath.row].phone
            cell.textLabel?.text = bundleData[indexPath.row].website
            cell.textLabel?.text = bundleData[indexPath.row].company
            cell.textLabel?.text = bundleData[indexPath.row].catchPhrase
            cell.textLabel?.text = bundleData[indexPath.row].bs
                }
        return cell
    }
}
