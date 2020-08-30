//
//  CustomTabBarViewController.swift
//  TabSample
//
//  Created by KULDEP KUMAR PRAJAPATI on 29/08/20.
//  Copyright © 2020 KULDEP KUMAR PRAJAPATI. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {
    var tabBarIteam = UITabBarItem()

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor :
            UIColor.darkGray], for: .normal)
        let selectedImage1 = UIImage(named: "fill_apple_logo")?.withRenderingMode(.alwaysOriginal)
        let unSelectedImage1 = UIImage(named: "apple_logo")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = self.tabBar.items![0]
        tabBarIteam.image = unSelectedImage1
        tabBarIteam.selectedImage = selectedImage1
        
        let selectedImage2 = UIImage(named: "chat_fill_icon")?.withRenderingMode(.alwaysOriginal)
        let unSelectedImage2 = UIImage(named: "chat_icon")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = self.tabBar.items![1]
        tabBarIteam.image = unSelectedImage2
        tabBarIteam.selectedImage = selectedImage2
        
        let selectedImage3 = UIImage(named: "home_fill_logo")?.withRenderingMode(.alwaysOriginal)
        let unSelectedImage3 = UIImage(named: "home_logo")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = self.tabBar.items![2]
        tabBarIteam.image = unSelectedImage3
        tabBarIteam.selectedImage = selectedImage3
        let numberOfTab = CGFloat((tabBar.items?.count)!)
        let tabBarSize = CGSize(width: tabBar.frame.width/numberOfTab, height: tabBar.frame.height+30)
        tabBar.selectionIndicatorImage = imageWithColor(color: UIColor.purple, size: tabBarSize)
        self.selectedIndex = 0
    }
    

    func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 1)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
        return image!
    }

}

//extension UIImage{
//
//    func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
//        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
//        UIGraphicsBeginImageContextWithOptions(size, false, 0)
//        color.setFill()
//        UIRectFill(rect)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//            UIGraphicsEndImageContext()
//        return image!
//    }
//
//}
