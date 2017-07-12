//
//  ViewController.swift
//  slidemenu
//
//  Created by iFlame on 7/11/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var LeftView: UIView!
    @IBOutlet var TopView: UIView!
    @IBOutlet var BottomView: UIView!
    @IBOutlet var RightView: UIView!
    
    
    @IBOutlet var LeftCons: NSLayoutConstraint!
    @IBOutlet var TopCons: NSLayoutConstraint!
    @IBOutlet var BottomCons: NSLayoutConstraint!
    @IBOutlet var RightCons: NSLayoutConstraint!
    
    var leftmenu = true
    var topmenu = true
    var bottommenu = true
    var rightmenu = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LeftClick(_ sender: Any) {
        
        if (leftmenu)
        {
            LeftCons.constant = -700
           animation()
        }else{
            LeftCons.constant = 0
            animation()
        }
        leftmenu = !leftmenu
    }
    @IBAction func TopClick(_ sender: Any) {
        
        if (topmenu)
        {
            TopCons.constant = -1000
            TopView.isHidden = true
            animation()
            
        }else{
            TopCons.constant = 0
             TopView.isHidden = false
            animation()
        }
        topmenu = !topmenu
    }
    @IBAction func BottomClick(_ sender: Any) {
        if (bottommenu)
        {
            BottomCons.constant = 1000
            animation()
            
        }else{
            BottomCons.constant = 0
            animation()
            
        }

        bottommenu = !bottommenu
    }
    @IBAction func RightClick(_ sender: Any) {
        if (rightmenu)
        {
           RightCons.constant = 700
            animation()
           
        }else{
            RightCons.constant = 0
            animation()
        }
        rightmenu = !rightmenu

    }
    
    func animation()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
            
        })
    }

}

