//
//  ViewController.swift
//  GA_PageViewController
//
//  Created by houjianan on 16/6/6.
//  Copyright © 2016年 houjianan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate{
    
    var pageViewController: UIPageViewController!
    var vces: [UIViewController] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oneVC = ContentViewController()
        let twoVC = ContentViewController()
        let oneVC1 = ContentViewController()
        let twoVC1 = ContentViewController()
        let oneVC2 = ContentViewController()
        let twoVC2 = ContentViewController()
        
        vces.append(oneVC); vces.append(twoVC)
        vces.append(oneVC1); vces.append(twoVC1)
        vces.append(oneVC2); vces.append(twoVC2)
        
        pageViewController = self.childViewControllers.first as! UIPageViewController
        pageViewController.dataSource = self
        pageViewController.setViewControllers([oneVC], direction: .Forward, animated: true, completion: nil)
    }
    
    
    func viewCintrollerAtIndex(index: Int) -> ContentViewController? {
        if vces.count == 0 || index > vces.count {
            return nil
        }
        var dataVC = ContentViewController()
        if index == 0 || index == vces.count - 1 {
            dataVC.view.backgroundColor = UIColor.blackColor()
        } else {
            dataVC.view.backgroundColor = UIColor.blackColor()
        }
        dataVC = vces[index] as! ContentViewController
        return dataVC
    }
    
    //获取当前页的索引
    func indexOfViewController(vc: ContentViewController) -> Int {
        return vces.indexOf(vc)!
    }
    
    //返回当前页面的下一个页面
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = indexOfViewController(viewController as! ContentViewController)
        if index == 0 || index == NSNotFound {
            return nil
        }
        index -= 1
        return viewCintrollerAtIndex(index)
    }
    
    //返回当前页面的上一个页面
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index = indexOfViewController(viewController as! ContentViewController)
        if index == NSNotFound {
            return nil
        }
        index += 1
        if index == vces.count {
            return nil
        }
        return viewCintrollerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, willTransitionToViewControllers pendingViewControllers: [UIViewController]) {
        pageViewController.view.userInteractionEnabled = false
    }
    
    func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if finished {
            pageViewController.view.userInteractionEnabled = true
        }
    }
    
}

