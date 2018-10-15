//
//  ColorsViewController.swift
//  ColorsTableView
//
//  Created by Colin Stevens on 9/28/18.
//  Copyright © 2018 Colin Stevens. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    var colors: [Color] = [Color(name: "red", colorValue: UIColor.red),
                           Color(name: "orange", colorValue: UIColor.orange),
                           Color(name: "yellow", colorValue: UIColor.yellow),
                           Color(name: "green", colorValue: UIColor.green),
                           Color(name: "blue", colorValue: UIColor.blue),
                           Color(name: "purple", colorValue: UIColor.purple),
                           Color(name: "brown", colorValue: UIColor.brown)
                          ]
    
    /*
    var colors: [String: UIColor] = ["red" : UIColor.red,
                                     "orange" : UIColor.orange,
                                     "yellow" : UIColor.yellow,
                                     "green" : UIColor.green,
                                     "blue" : UIColor.blue,
                                     "purple" : UIColor.purple,
                                     "brown" : UIColor.brown]
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].colorValue
        // Two different methods of obtaining key/value in dict by index.
        //cell.textLabel?.text = [String](colors.keys)[indexPath.row]
        //cell.backgroundColor = Array(colors)[indexPath.row].value
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController, let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.colorChoice = colors[row]
        }
        
    }

}
