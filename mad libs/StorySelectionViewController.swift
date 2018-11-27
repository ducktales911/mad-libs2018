//
//  StorySelectionViewController.swift
//  Mad Libs
//
//  Created by Thomas Hamburger on 27/11/2018.
//  Copyright © 2018 Thomas Hamburger. All rights reserved.
//

import UIKit

class StorySelectionViewController: UIViewController {
    
    var story = ""

    let storyList = ["madlib0_simple", "madlib1_tarzan", "madlib2_university", "madlib3_clothes", "madlib4_dance"]
    
    @IBAction func simpleButton(_ sender: Any) {
        story = "madlib0_simple"
        self.performSegue(withIdentifier: "wordScreen", sender: nil)
    }
    
    @IBAction func tarzanButton(_ sender: Any) {
        story = "madlib1_tarzan"
        self.performSegue(withIdentifier: "wordScreen", sender: nil)
    }
    
    @IBAction func universityButton(_ sender: Any) {
        story = "madlib2_university"
        self.performSegue(withIdentifier: "wordScreen", sender: nil)
    }
    
    @IBAction func clothesButton(_ sender: Any) {
        story = "madlib3_clothes"
        self.performSegue(withIdentifier: "wordScreen", sender: nil)
    }
    
    @IBAction func danceButton(_ sender: Any) {
        story = "madlib4_dance"
        self.performSegue(withIdentifier: "wordScreen", sender: nil)
    }
    
    @IBAction func randomButton(_ sender: Any) {
        story = storyList[Int(arc4random_uniform(UInt32(storyList.count)))]
        self.performSegue(withIdentifier: "wordScreen", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? SecondViewController {
            secondVC.storyName = story
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
