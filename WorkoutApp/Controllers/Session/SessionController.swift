//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Janibek Voskanyan on 22.04.23.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
    
//    override func navBarLeftButtonHandler() {
//        print("Session NavBarLeft button tapped")
//    }
}
