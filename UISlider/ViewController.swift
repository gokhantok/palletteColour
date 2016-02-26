//
//  ViewController.swift
//  UISlider
//
//  Created by Gökhan Tok on 13.02.2016.
//  Copyright © 2016 Gökhan Tok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var viewRGB: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func RenkPaketi() {
        
        
        let kirmizi = CGFloat(redSlider.value) / 255.0
        let yesil = CGFloat(greenSlider.value) / 255.0
        let mavi = CGFloat(blueSlider.value) / 255.0
        let alpha = CGFloat(alphaSlider.value) / 255.0
        
        redLabel.text = " Kırmızı : \(Int(redSlider.value))"
        greenLabel.text = " Yeşil : \(Int(greenSlider.value))"
        blueLabel.text = " Mavi : \(Int(blueSlider.value))"
        alphaLabel.text = " Alpha : \(Int(alphaSlider.value))"
        
        let renk = UIColor (red: kirmizi, green: yesil, blue: mavi, alpha: alpha)
        
        viewRGB.backgroundColor = renk

    }
    
    
    

}

