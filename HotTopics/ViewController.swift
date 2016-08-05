//
//  ViewController.swift
//  HotTopics
//
//  Created by min-mac on 16/8/5.
//  Copyright © 2016年 EgeTart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hotTopicContainerView: UIView!

    var hotTopicView1: HotTopicView!
    var hotTopicView2: HotTopicView!
    
    var hotTopicViews = [HotTopicView]()
    
    let upOrigin = CGPointMake(0, 0)
    let downOrigin = CGPointMake(0, 60)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hotTopicView1 = NSBundle.mainBundle().loadNibNamed("HotTopicView", owner: nil, options: nil).first as! HotTopicView
        hotTopicView1.frame.origin = upOrigin
        hotTopicView1.content1Label.text = "1.学生收无效毕业证"
        hotTopicView1.content2Label.text = "2.中国游客被扔石头"
        
        hotTopicView2 = NSBundle.mainBundle().loadNibNamed("HotTopicView", owner: nil, options: nil).first as! HotTopicView
        hotTopicView2.frame.origin = downOrigin
        hotTopicView2.content1Label.text = "3.吴秀波娇妻曝光"
        hotTopicView2.content2Label.text = "4.澳洲记者抹黑孙杨"
        
        hotTopicContainerView.addSubview(hotTopicView1)
        hotTopicContainerView.addSubview(hotTopicView2)
        
        hotTopicViews.append(hotTopicView1)
        hotTopicViews.append(hotTopicView2)
        
        scrollHotTopics()
    }

    func scrollHotTopics() {
        UIView.animateWithDuration(2.0, animations: { 
            self.hotTopicViews[0].frame.origin = CGPointMake(0, -60)
            self.hotTopicViews[1].frame.origin = CGPointMake(0, 0)
            }) { (_) in
                self.hotTopicViews.append(self.hotTopicViews[0])
                self.hotTopicViews[2].frame.origin = CGPointMake(0, 60)
                self.hotTopicViews.removeAtIndex(0)
                
                self.scrollHotTopics()
        }
    }
}

