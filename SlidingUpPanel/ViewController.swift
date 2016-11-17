//
//  ViewController.swift
//  SlidingUpPanel
//
//  Created by Horst Leung on 1/4/2016.
//  Copyright © 2016 Horst Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var panel:SlidingUpPanel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        panel = SlidingUpPanel(frame: self.view.bounds);
        
        panel.backgroundColor = UIColor.darkGray
        var frame = self.view.bounds
        frame.size.height = 80.0
        let bar = UIView(frame: frame);
        bar.backgroundColor = UIColor.red
        panel.topView = bar;
        
        let tooltip = UIView(frame: frame);
        tooltip.backgroundColor = UIColor.lightGray
        let btn = UIButton(frame: CGRect(x: 320.0 - 80.0, y: 0, width: 80, height: 30))
        btn.backgroundColor = UIColor.brown
        btn.setTitle("OOps", for: UIControlState())
        btn.addTarget(self, action: #selector(ViewController.greet), for: .touchUpInside)
        tooltip.addSubview(btn)
        
        panel.tooltip = tooltip
        
        
        self.view.addSubview(panel)
    }
    
    func greet()
    {
        print("kakakakakaka")
    }
}

