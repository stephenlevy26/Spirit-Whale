//
//  ViewController.swift
//  Spirit Whale
//
//  Created by Slevy on 12/3/15.
//  Copyright © 2015 Slevy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        //: next VC is the variable created to represent the destination view controller. This prepare for seque sets the title of the navigation controller on the destination view controller to the title of the destination view controller itself. That title of the destination view controller was set on storyboard. 
        
        let nextVC = segue.destinationViewController 
        nextVC.navigationController?.title = nextVC.title
    }
    
    

    @IBAction func randomWhaleName(sender: UIButton)
    {
        let nameArray: [String] = ["whaleyum chatner", "oprah whalefry", "serena whaleiams", "whale ferrel", "whaleium defou", "whalley allen", "whalet disney", "bruce whalen", "whale smith", "whaley wonka", "kanye whalest","Bruce whales","Whalerd filmore", "George Whale bush"]
        let randomIndex = Int(arc4random_uniform(UInt32(nameArray.count)))
        let whaleName = nameArray[randomIndex]
        let alert = UIAlertController(title: "Your whale name is: ", message: whaleName, preferredStyle: UIAlertControllerStyle.Alert)
        let dismissButton = UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(dismissButton)
        self.presentViewController(alert, animated: true, completion: nil)
        
        //: I created an array with all of the celebrity whale names. I then created a random number generator to choose a random index each time I asked for a name. Then I get the name at that index in my array and display it to the user via a UI alert. 
        
        
    }
    
}

