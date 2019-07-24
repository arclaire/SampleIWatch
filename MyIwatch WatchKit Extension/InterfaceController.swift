//
//  InterfaceController.swift
//  MyIwatch WatchKit Extension
//
//  Created by Lucy PermataSari on 23/07/19.
//  Copyright © 2019 Lucy PermataSari. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var imageHeart: WKInterfaceImage!
    @IBOutlet weak var lblTitle1: WKInterfaceLabel!
    @IBOutlet weak var lblTitle2: WKInterfaceLabel!
    @IBOutlet weak var btnLeft: WKInterfaceButton!
    @IBOutlet weak var btnRight: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func selectorActions() {
    }
    

}
