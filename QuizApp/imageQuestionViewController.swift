//
//  imageQuestionViewController.swift
//  QuizApp
//
//  Created by Satyam Dhar on 10/2/15.
//  Copyright © 2015 Satyam Dhar. All rights reserved.
//

import UIKit

class imageQuestionViewController: UIViewController {
    
    var resultOfQ1 : Bool!
    
    let correctAnswer = "The Godfather"
    var result : Bool!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var questionText: UILabel!
    
    
    @IBOutlet weak var userAnswerText: UITextField!
    
    @IBAction func submitButton(sender: AnyObject) {
        if userAnswerText.text == correctAnswer {
            self.result=true
        }
        else {
            self.result=false
        }
        
        
        self.performSegueWithIdentifier("S2", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "S2" {
            let vc = segue.destinationViewController as! ResultsViewController
            vc.result1=self.resultOfQ1
            vc.result2=self.result
        }
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
