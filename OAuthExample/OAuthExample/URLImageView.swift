//
//  URLImageView.swift
//  ImaginaryAnimalsList
//
//  Created by Glenn Keighley on 9/17/15.
//  Copyright © 2015 athenahealth. All rights reserved.
//

import UIKit
import Foundation

class URLImageView: UIImageView {
    var url:NSURL? {
        didSet {
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) { () -> Void in
                guard let url = self.url,
                    let imageData = NSData(contentsOfURL: url) else {return }
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                        guard let image = UIImage(data:imageData),
                            let _ = self.superview else {return}
                        self.image = image
                    })
        
                }
    
            }
    }
}