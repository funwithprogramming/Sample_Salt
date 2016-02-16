//
//  Cells.swift
//  Sample_Salt
//
//  Created by Alekh on 15/02/16.
//  Copyright © 2016 Alekh. All rights reserved.
//

import Foundation
import UIKit

class ListViewCell: UITableViewCell {
  
  //Outlets
  //
  @IBOutlet weak var imageViewObject: UIImageView!
  @IBOutlet weak var labelTitle: UILabel!
  @IBOutlet weak var labelDescription: UILabel!
  
  func renderDataModel(model listModel:ListObject?){
    guard let _ = listModel else {return}
    labelTitle.text       = listModel!.title
    labelDescription.text = listModel!.description
    print(listModel?.image)
    //imageViewObject.sd_setImageWithURL(NSURL(string: listModel!.image ?? "" ), placeholderImage: UIImage(named:"images.jpg"))
    let url  = NSURL(string: listModel!.image ?? "" )
    
    imageViewObject.sd_setImageWithURL(url, placeholderImage: UIImage(named:"images.jpg")) { (img:UIImage!, error:NSError!, type:SDImageCacheType, url:NSURL!) -> Void in
      print("completed")
    }
    
  }
}
