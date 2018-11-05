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
        
        imageScrollView.imageScrollViewDelegate = self
        
        for i in 0..<5 {
            if let image = UIImage(named: "dog-\(i).jpg") {
                images.append(image)
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        imageScrollView.imageContentMode = .aspectFit
        imageScrollView.initialOffset = .center
        imageScrollView.display(image: images[index])
    }

    @IBAction func previousButtonTap(_ sender: AnyObject) {
        index = (index - 1 + images.count)%images.count
        imageScrollView.display(image: images[index])
    }
    
    @IBAction func nextButtonTap(_ sender: AnyObject) {
        index = (index + 1)%images.count
        imageScrollView.display(image: images[index])
    }
    
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        print("scrollViewDidEndZooming at scale \(scale)")
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollViewDidScroll at offset \(scrollView.contentOffset)")
    }
}
