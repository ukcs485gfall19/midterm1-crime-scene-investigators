/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit
import AVFoundation

var arrPageTitle: NSArray = NSArray()
var arrPagePhoto: NSArray = NSArray()
var arrVisited: [Bool] = []

var likedPets: [String] = []
var dislikedPets: [String] = []

var globalIndex: Int = 0

class ViewController: UIPageViewController, UIPageViewControllerDataSource {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    //test data
    arrPageTitle = ["Eminem Doggo", "Icy Doggo", "Evil Cade"];
    arrPagePhoto = ["1.jpg", "2.jpg", "3.jpg"];
    arrVisited = [false, false,false];
    
    self.dataSource = self
    self.setViewControllers([getViewControllerAtIndex(index: 0)] as [UIViewController], direction: UIPageViewController.NavigationDirection.forward, animated: false, completion: nil)
  }
  /***********************/
  func getViewControllerAtIndex(index: NSInteger) -> PageContentViewController {    // Create a new view controller and pass suitable data.
    let pageContentViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageContentViewController") as! PageContentViewController
    pageContentViewController.strTitle = "\(arrPageTitle[index])"
    pageContentViewController.strPhotoName = "\(arrPagePhoto[index])"
    pageContentViewController.pageIndex = index
  
    return pageContentViewController
  }
  var counter1 = 0 // counter for disliked list appending to not run on page load
  /***********************/
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    
    let pageContent: PageContentViewController = viewController as! PageContentViewController
    var index = pageContent.pageIndex
    var actualIndex = index
    actualIndex-=1
    globalIndex = index
    
    if(actualIndex < 0){
      actualIndex = arrPageTitle.count-1
    }
    
    if(index == NSNotFound){
      return nil
    }
    
    index+=1
    
    if(index == arrPageTitle.count){
      if(counter1 != 0){
        //adding pet to dislike list
        dislikedPets.append(arrPageTitle[actualIndex] as! String)
      }
      counter1+=1
      return getViewControllerAtIndex(index: 0)
    }
    
    if(counter1 != 0){
      //adding pet to dislike list
      dislikedPets.append(arrPageTitle[actualIndex] as! String)
    }
    
    counter1+=1
    return getViewControllerAtIndex(index: index)
  }
  var counter2 = 0 // counter for liked list appending to not run on page load
  /****************/
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    let pageContent: PageContentViewController = viewController as! PageContentViewController
    var index = pageContent.pageIndex
    var actualIndex = index
    actualIndex+=1
    globalIndex = index
    
    
    if(actualIndex > arrPageTitle.count-1){
      actualIndex = 0
    }
    
    if(index == NSNotFound){
      return nil
    }
    
    if(index == 0){
      if(counter2 != 0) {
        //adding pet to dislike list
        likedPets.append(arrPageTitle[actualIndex] as! String)
      }
      
      counter2+=1
      return getViewControllerAtIndex(index: arrPageTitle.count-1)
    }
    
    index-=1

    
    
    if(counter2 != 0){
      //adding pet to dislike list
      likedPets.append(arrPageTitle[actualIndex] as! String)
    }
    
    counter2+=1
    return getViewControllerAtIndex(index:index)
  }
}
