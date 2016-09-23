//
//  AuthorInfoViewController.swift
//  StrivrTest
//
//  Created by Lloyd W. Sykes on 9/23/16.
//  Copyright © 2016 Strivr, Inc. All rights reserved.
//

import UIKit

class AuthorInfoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var authorTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.authorTableView.dataSource = self
        self.authorTableView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: AuthorInfoCustomTableViewCell.cellReuseIdentifier, for: indexPath)
     
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        tableView.estimatedRowHeight = 121
        tableView.rowHeight = UITableViewAutomaticDimension
        
        return tableView.estimatedRowHeight
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
