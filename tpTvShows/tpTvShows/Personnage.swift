//
//  Personnage.swift
//  tpTvShows
//
//  Created by ramos vazquez erick ruben on 12/10/2020.
//  Copyright © 2020 ramos vazquez erick ruben. All rights reserved.
//

import Foundation


class Personnage {
    
    var name:String
    var lastName:String
    var tvShowName:String
    var realName:String
    var realLastName:String
    var photo:String
    
    init(name:String, lastName:String, tvShowName:String, realName:String, realLastName:String, photo:String) {
        self.name = name;
        self.lastName = lastName;
        self.tvShowName = tvShowName;
        self.realName = realName;
        self.realLastName = realLastName;
        self.photo = photo;
    }
}
