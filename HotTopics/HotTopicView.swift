//
//  HotTopicView.swift
//  HotTopics
//
//  Created by min-mac on 16/8/5.
//  Copyright © 2016年 EgeTart. All rights reserved.
//

import UIKit

class HotTopicView: UIView {

    @IBOutlet weak var content1Label: UILabel!
    @IBOutlet weak var content2Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.frame.size = CGSize(width: UIScreen.mainScreen().bounds.width, height: 60)
    }

}
