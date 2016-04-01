//
//  ViewController.swift
//  myLittleMunsta
//
//  Created by Daniel Esposito on 4/1/16.
//  Copyright © 2016 Daniel Esposito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: LittleMunstaImg!
    @IBOutlet weak var heartImg: DragImage!
    @IBOutlet weak var foodImg: DragImage!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        heartImg.dropTarget = monsterImg
        foodImg.dropTarget = monsterImg
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.itemDroppedOnCharacter(_:)), name: "onTargetDropped", object: nil)
        
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        
        
            print("Success")
        }
}

