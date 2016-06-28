//
//  ViewController.swift
//  FunFacts
//
//  Created by Softpak Financial Systems on 6/27/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButtonLabel: UIButton!

    let factModel: FactModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayRandomColor()
        self.funFactLabel.textColor = UIColor.whiteColor()
        self.funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func funFactButton(sender: AnyObject) {
        displayRandomColor()
         self.funFactLabel.text = factModel.getRandomFact()
        
    }
    
    func displayRandomColor(){
        let bgColor = ColorModel().getRandomColor()
        
        self.view.backgroundColor = bgColor
        
        self.funFactButtonLabel.tintColor = bgColor
    }

}

