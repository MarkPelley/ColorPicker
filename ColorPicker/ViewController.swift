//
//  ViewController.swift
//  ColorPicker
//
//  Created by Hassan Ahmed on 2017-08-22.
//  Copyright © 2017 Lolz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorWheel: HuePicker?
    
    @IBOutlet var colorPicker: ColorPicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        let pickerController = ColorPickerController(svPickerView: colorPicker!, huePickerView: colorWheel!)
        
        pickerController.color = UIColor.red
        
        pickerController.onColorChange = {(color, finished) in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

