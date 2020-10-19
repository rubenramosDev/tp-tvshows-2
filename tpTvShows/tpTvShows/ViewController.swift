//
//  ViewController.swift
//  tpTvShows
//
//  Created by ramos vazquez erick ruben on 12/10/2020.
//  Copyright © 2020 ramos vazquez erick ruben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    @IBOutlet weak var labelRealName: UILabel!
    @IBOutlet weak var labelRealLastName: UILabel!
    @IBOutlet weak var labelShow: UILabel!
    
    var personnage : Personnage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let personnage = personnage {
            labelName.text = personnage.lastName
            labelLastName.text = personnage.name
            labelRealName.text = personnage.realLastName
            labelRealLastName.text = personnage.realName
            labelShow.text = personnage.tvShowName
            
            imageView.image = UIImage(named: personnage.photo)
        }
        
        
    }


}

