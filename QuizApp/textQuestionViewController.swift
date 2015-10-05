//
//  textQuestionViewController.swift
//  QuizApp
//
//  Created by Satyam Dhar on 10/2/15.
//  Copyright © 2015 Satyam Dhar. All rights reserved.
//

import UIKit

class textQuestionViewController: UIViewController {
    
    let correctAnswer="Barrak Obama"
    var result : Bool!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var answerText: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitTap(sender: AnyObject) {
        if answerText.text == correctAnswer {
            self.result=true
        }
        else {
            self.result=false
        }
        self.performSegueWithIdentifier("S1", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "S1"){
            let vc = segue.destinationViewController as! imageQuestionViewController
            vc.resultOfQ1 = self.result
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
