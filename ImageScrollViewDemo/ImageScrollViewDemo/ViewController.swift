//
//  ViewController.swift
//  ImageScrollViewDemo
//
//  Created by Nguyen Cong Huy on 3/5/16.
//  Copyright © 2016 Nguyen Cong Huy. All rights reserved.
//

import UIKit
import ImageScrollView

class ViewController: UIViewController {
    
    @IBOutlet weak var imageScrollView: ImageScrollView!
    var images = [UIImage]()
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<5 {
            if let image = UIImage(named: "dog-\(i).jpg") {
                images.append(image)
            }
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        imageScrollView.displayImage(images[index])
    }

    @IBAction func previousButtonTap(sender: AnyObject) {
        index = (index - 1 + images.count)%images.count
        imageScrollView.displayImage(images[index])
    }
    
    @IBAction func nextButtonTap(sender: AnyObject) {
        index = (index + 1)%images.count
        imageScrollView.displayImage(images[index])
    }
    
}

