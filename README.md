# ImageScrollView

A control help you display an image, with zoomable and scrollable features easily.

### About
When you make an application, has photo viewer feature, the photo viewer usually need zoomable and scrollable features, to make user view photo more details.  
This control help you display image, with zoomable and scrollable feature easily.

#### Compatible

- iOS 7 and later (require iOS 8 if you want to add it to project using CocoaPod)
- Swift 3.0 (version 1.3), 2.0 (version 1.2 and prior)

### Usage

#### Cocoapod
Add below line to Podfile:  

```
pod 'ImageScrollView'
```  
and run below command in Terminal to install:  
`pod install`

Note: If above pod isn't working, try using below pod defination in Podfile:  
`pod 'ImageScrollView', :git => 'https://github.com/huynguyencong/ImageScrollView.git'`
#### Manual
In iOS 7, you cannot use Cocoapod to install. In this case, you need add it manually. Simply, add file `ImageSrollView.swift` in folder `Sources` to your project

#### Simple to use
Drag an UIScrollView to your storyboard, change Class and Module in Identity Inspector to ImageScrollView. Also create an IBOutlet in your source file.

![image](http://s10.postimg.org/jd12ztvkp/Tut1.jpg)

```
import ImageScrollView
```

```
@IBOutlet weak var imageScrollView: ImageScrollView!
```

```
let myImage = UIImage(named: "my_image_name")
imageScrollView.display(image: myImage)
```
That's all. Now try zooming and scrolling to see the result.
### About this source
This open source is base on PhotoScroller demo in Apple site. The origin source is written by Objective C. This source rewrite it use Swift, and add some new features:
- Double tap to zooming feature.
- Smoother, fix bug when zoom out, then control auto zoom in, it zoom in from center, not from corner.

### License
ImageScrollView is released under the MIT license. See LICENSE for details. Copyright © Nguyen Cong Huy
