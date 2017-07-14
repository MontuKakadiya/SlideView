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
    
    
    
    @IBOutlet var visulview: UIVisualEffectView!
    
    var leftmenu = false
    var topmenu = false
    var bottommenu = false
    var rightmenu = false
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LeftView.layer.shadowOpacity = 5
        LeftView.layer.shadowRadius = 10
        LeftView.layer.shadowColor = UIColor.red.cgColor
        
        TopView.layer.shadowOpacity = 5
        TopView.layer.shadowRadius = 10
        TopView.layer.shadowColor = UIColor.red.cgColor
        
        visulview.isHidden = true
        
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
            animation1()
        }else{
            LeftCons.constant = 0
            animation()
            animation2()
        }
        leftmenu = !leftmenu
    }
    @IBAction func TopClick(_ sender: Any) {
        
        if (topmenu)
        {
            TopCons.constant = -1000
            TopView.isHidden = true
            animation()
            animation1()
            
        }else{
            TopCons.constant = 0
             TopView.isHidden = false
            animation()
            animation2()
        }
        topmenu = !topmenu
    }
    @IBAction func BottomClick(_ sender: Any) {
        if (bottommenu)
        {
            BottomCons.constant = 1000
            animation()
            animation1()
            
        }else{
            BottomCons.constant = 0
            animation()
            animation2()
            
        }

        bottommenu = !bottommenu
    }
    @IBAction func RightClick(_ sender: Any) {
        if (rightmenu)
        {
           RightCons.constant = 700
            animation()
            animation1()
           
        }else{
            RightCons.constant = 0
            animation()
            animation2()
        }
        rightmenu = !rightmenu

    }
    
    func animation()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
            
        })
    }
    
    func animation1()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.visulview.isHidden = true
            
        })
    }

    func animation2()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.visulview.isHidden = false
            
        })
    }
}

