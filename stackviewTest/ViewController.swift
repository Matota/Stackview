//
//  ViewController.swift
//  stackviewTest
//
//  Created by A, Hitesh on 01/04/16.
//  Copyright © 2016 A, Hitesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vertical_Stack: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnClickAdd(sender: AnyObject) {
        let imgView = UIImageView(image: UIImage(named: "symbol"))
        imgView.contentMode = .ScaleAspectFit
        self.vertical_Stack.addArrangedSubview(imgView)
        
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.vertical_Stack.layoutIfNeeded()
        }
    }
    
    
    @IBAction func OnClickRem(sender: AnyObject) {
        
        let star:UIView? = self.vertical_Stack.arrangedSubviews.last
        if let Isstr = star
        {
            Isstr.hidden = true
            self.vertical_Stack.removeArrangedSubview(Isstr)
            self.vertical_Stack.arrangedSubviews.last?.removeFromSuperview()
            
            UIView.animateWithDuration(0.7, animations: {
                self.vertical_Stack.layoutIfNeeded()
            })
        }
        
    }

}

