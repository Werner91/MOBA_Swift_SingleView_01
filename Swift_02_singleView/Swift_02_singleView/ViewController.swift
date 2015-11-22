//
//  ViewController.swift
//  Swift_02_singleView
//
//  Created by Werner on 22.11.15.
//  Copyright (c) 2015 Werner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var vorname_textfield: UITextField!
    @IBOutlet weak var vorname_ausgabe: UILabel!
    
    @IBOutlet weak var nachname_textfield: UITextField!
    @IBOutlet weak var nachname_ausgabe: UILabel!
    
    @IBOutlet weak var alter_slider: UISlider!
    @IBOutlet weak var alter_ausgabe_eins: UILabel!
    @IBOutlet weak var alter_ausgabe_zwei: UILabel!
    
    @IBOutlet weak var switch_geschlecht: UISwitch!
    @IBOutlet weak var switch_geschlecht_ausgabe: UILabel!
    
    @IBOutlet weak var segmentcontroler: UISegmentedControl!
    @IBOutlet weak var segmentcontroler_ausgabe: UILabel!
   
    @IBOutlet weak var telefonnummer_textfield: UITextField!
    @IBOutlet weak var telefonnummer_ausgabe: UILabel!
    
    @IBAction func vorname_listener(sender: UITextField) {
        vorname_ausgabe.text = sender.text;
    }
    
    @IBAction func nachname_listener(sender: UITextField) {
        nachname_ausgabe.text = sender.text;
    }
    
    
    @IBAction func alter_slider_listener(sender: UISlider) {
        var currentValueEins = Int(sender.value);
        alter_ausgabe_eins.text = "\(currentValueEins)";
        
        var currentValueZwei = Int(sender.value);
        alter_ausgabe_zwei.text = "\(currentValueZwei)"

    }
    
    
    @IBAction func switch_geschlecht_listener(sender: AnyObject) {
        if switch_geschlecht.on {
            switch_geschlecht_ausgabe.text = "maennlich";
        } else {
            switch_geschlecht_ausgabe.text = "weiblich";
        }
    }
    
    
    
    @IBAction func segmentcontroler_listener(sender: AnyObject) {
        
        switch segmentcontroler.selectedSegmentIndex
        {
        case 0:
            segmentcontroler_ausgabe.text = "First selected";
        case 1:
            segmentcontroler_ausgabe.text = "Second Segment selected";
        case 2:
            segmentcontroler_ausgabe.text = "drittens";
        default:
            break;
        }
    }
 
    
    
    @IBAction func telefonnummer_textfield_listener(sender: UITextField) {
        telefonnummer_ausgabe.text = telefonnummer_textfield.text;
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

