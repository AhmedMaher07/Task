//
//  ViewController.swift
//  Again
//
//  Created by ahmed Maher on 3/19/16.
//  Copyright © 2016 ahmed Maher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    let ImageList = ["Pyramid.jpg", "burj-khalifa.jpg", "Big Ben.jpg", "Beza.jpg", "Pyramid.jpg", "Pyramid.jpg", "Pyramid.jpg"]
    
    let TitleList = ["The Pyramids", "Burj-Khlifa", "Big Ben", "Beza Tower", "The Pyramids", "The Pyramids", "The Pyramids"]
    
    let DescList = ["Egypt, Giza", "Emarat, Dubai", "Britsh, London", "Italy, Italy", "Egypt, Giza", "Egypt, Giza", "Egypt, Giza"]


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return TitleList.count
    }
    func randomColor() -> UIColor{
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        
        cell.CellTitle.text = TitleList[indexPath.row]
        
        let imagename = UIImage(named: ImageList[indexPath.row])
        cell.CellImage.image = imagename
        
        cell.backgroundColor = randomColor()
        cell.CellImage.layer.cornerRadius = 35.0
        cell.CellImage.layer.masksToBounds = true
        cell.CellImage.clipsToBounds = true
        let colorView = UIView()
        colorView.backgroundColor = UIColor.greenColor()
        if (indexPath.row == 0 || indexPath.row == 1  || indexPath.row == 2){
            cell.selectedBackgroundView = colorView
         }
        
        return cell
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "DetailView"){
            
            let VC = segue.destinationViewController as! DetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                
                let Title = TitleList[indexPath.row] as String
                VC.SentData1 = Title
                
                let Imageview = ImageList[indexPath.row] as String
                VC.SentData2 = Imageview
                
                let Desc = DescList[indexPath.row] as String
                VC.SentData3 = Desc
                
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true

    }
    


}

