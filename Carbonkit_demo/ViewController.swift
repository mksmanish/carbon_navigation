//
//  ViewController.swift
//  Carbonkit_demo
//
//  Created by Tradesocio on 02/05/22.
//

import UIKit
import CarbonKit

class ViewController: UIViewController ,CarbonTabSwipeNavigationDelegate{

    var controllerNames = ["dashboard","MarketWatch","TotalItems","Account Summary"]
    var carbonTapSwipeNavigation = CarbonTabSwipeNavigation()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carbonTapSwipeNavigation = CarbonTabSwipeNavigation(items: controllerNames, delegate: self)
        carbonTapSwipeNavigation.insert(intoRootViewController: self)
        carbonTapSwipeNavigation.setTabBarHeight(50)
        carbonTapSwipeNavigation.setIndicatorHeight(5)
        carbonTapSwipeNavigation.setSelectedColor(UIColor.orange)
        carbonTapSwipeNavigation.carbonSegmentedControl?.backgroundColor = UIColor.white
        
        carbonTapSwipeNavigation.setIndicatorColor(UIColor.orange)
        
        //position
        carbonTapSwipeNavigation.carbonSegmentedControl?.indicatorPosition = .bottom
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        guard let storyboard = storyboard else { return
            UIViewController()
        }
        if index == 0 {
            return storyboard.instantiateViewController(withIdentifier: "OneViewController")
        }else if index == 1 {
            return storyboard.instantiateViewController(withIdentifier: "TwoTableViewController")
        }else if index == 2 {
            return storyboard.instantiateViewController(withIdentifier: "ThreeCollectionViewController")
        }else{
            return storyboard.instantiateViewController(withIdentifier: "FourViewController")
        }
    }
    


}

