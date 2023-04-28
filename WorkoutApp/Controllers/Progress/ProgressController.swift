//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Janibek Voskanyan on 22.04.23.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
    }
}
