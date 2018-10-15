//
//  ColorDetailViewController.swift
//  ColorsTableView
//
//  Created by Colin Stevens on 10/14/18.
//  Copyright © 2018 Colin Stevens. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var colorChoice: Color?
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorNameLabel.text = colorChoice?.name
        self.view.backgroundColor = colorChoice?.colorValue
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
