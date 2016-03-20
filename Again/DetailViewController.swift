//
//  DetailViewController.swift
//  Again
//
//  Created by ahmed Maher on 3/19/16.
//  Copyright © 2016 ahmed Maher. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    

    @IBOutlet weak var DetailTable: UITableView!
    
    @IBOutlet weak var DetailImage: UIImageView!
    @IBOutlet weak var DetailTitle: UILabel!
    @IBOutlet weak var DetailDes: UILabel!
    
    var SentData1:String!
    var SentData2:String!
    var SentData3:String!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DetailTitle.text = SentData1
        DetailImage.image = UIImage(named: SentData2)
        DetailDes.text = SentData3
        self.DetailTable.dataSource = self
        self.DetailTable.delegate = self
        self.navigationItem.title = SentData1


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.DetailTable.dequeueReusableCellWithIdentifier("DetailCell") as! DetailTableViewCell
        
        
        
        if (SentData1 == "The Pyramids") {
            cell.DetailCellImage.image = UIImage(named: "sphinx.jpeg")
            
        }
        
            
        return cell
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
