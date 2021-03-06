//
//  RecognButton.swift
//  ImageRecognizer
//
//  Created by user on 12/26/16.
//  Copyright © 2016 alex.o. All rights reserved.
//

import Foundation
import UIKit

class RecognButton: UIButton {
    
    var animationDuration: NSTimeInterval = 1
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        btnSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        btnSetup()
    }
    
    private func btnSetup() {
        self.backgroundColor = UIColor.blueLight()
        self.tintColor = UIColor.whiteColor()
        
        self.layer.borderColor = UIColor.whiteColor().CGColor
        self.layer.borderWidth = 0.8
        self.imageEdgeInsets = UIEdgeInsets(top: 15.0, left: 15.0, bottom: 15.0, right: 15.0)
        self.clipsToBounds = false
        
        self.userInteractionEnabled = true
    }
    
    func startAnimation() {
        self.setTitle("Recognition...", forState: .Normal)

        self.userInteractionEnabled = false
        UIView.animateKeyframesWithDuration(animationDuration,
                                            delay: 0,
                                            options: [.Repeat,  .Autoreverse],
                                            animations: {
                                                
            UIView.addKeyframeWithRelativeStartTime(0.0,
                relativeDuration: self.animationDuration / 2, animations: {
                self.backgroundColor = UIColor.cyanColor()
            })
            
            UIView.addKeyframeWithRelativeStartTime(self.animationDuration / 2,
                relativeDuration: self.animationDuration / 2, animations: {
                self.backgroundColor = UIColor.blueLight()
            })
            
            }, completion: nil)
    }
    
    func stopAnimation() {
        self.setTitle("What is", forState: .Normal)
        
        self.userInteractionEnabled = true
        self.layer.removeAllAnimations()
    }
}