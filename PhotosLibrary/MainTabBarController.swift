//
//  MainTabBarController.swift
//  PhotosLibrary
//
//  Created by Артем Орлов on 22.07.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())

        viewControllers = [
            generateNavigation(rootViewController: photosVC, title: "Photos", image: #imageLiteral(resourceName: "photos")),
            generateNavigation(rootViewController: ViewController(), title: "Favorites", image: #imageLiteral(resourceName: "heart"))
        ]
    }
    
    private func generateNavigation(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
