//
//  ViewController.swift
//  howladmob
//
//  Created by 유명식 on 2017. 7. 27..
//  Copyright © 2017년 swift. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    var bannerView: GADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bannerView = GADBannerView(adSize: kGADAdSizeFullBanner)
        self.view.addSubview(bannerView)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        bannerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        bannerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

