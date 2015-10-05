//
//  ResultsViewController.swift
//  QuizApp
//
//  Created by Satyam Dhar on 10/2/15.
//  Copyright © 2015 Satyam Dhar. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var result1 : Bool!
    var result2 : Bool!
    var total : Int!
    


    @IBOutlet weak var Q1LabelCell: UITableViewCell!
    
    @IBOutlet weak var result1Label: UILabel!
    
    @IBOutlet weak var result2Label: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(result1==true && result2==true) {total=2}
        else if (result1==true || result2==true) {total=1}
        else {total = 0}
        
        if result1 == true {
            self.result1Label.text="Right!"
        }
        else {
            self.result1Label.text="Wrong!"
        }
        
        if result2 == true {
            self.result2Label.text="Right!"
        }
        else {
            self.result2Label.text="Wrong!"
        }
        
        self.totalLabel.text=String(total)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
