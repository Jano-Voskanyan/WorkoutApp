//
//  Resources.swift
//  WorkoutApp
//
//  Created by Janibek Voskanyan on 22.04.23.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        
        static var separator = UIColor(hexString: "#E8ECEF")
        
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overviewTab")
            static var session = UIImage(named: "sessionTab")
            static var progress = UIImage(named: "progressTab")
            static var settings = UIImage(named: "settingsTab")
        }
    }
    
//    enum {
//
//    }
    
}
