//
//  ItemDetailsViewController.swift
//  Sample_Salt
//
//  Created by Alekh on 16/02/16.
//  Copyright © 2016 Alekh. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController {
  
  ///Outlets
  ///
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var labelHeading: UILabel!
  @IBOutlet weak var labelSubheading: UILabel!
  
  ///
  var dataModel: ListObject?
  
  override func viewDidLoad() {
    
    renderDataModel()
  }
  
  func renderDataModel(){
    
    guard let _ = dataModel else {return}
    labelHeading.text       = dataModel!.title
    labelSubheading.text = dataModel!.description
    let url  = NSURL(string: dataModel!.image ?? "" )
    imageView.sd_setImageWithURL(url, placeholderImage: UIImage(named:"images.jpg")) { (img:UIImage!, error:NSError!, type:SDImageCacheType, url:NSURL!) -> Void in
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

