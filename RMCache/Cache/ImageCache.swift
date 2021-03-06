//
//  ImageCache.swift
//  Ouch
//
//  Created by Developer 07/09/18 .
//   Copyright © 2018 Developer . All rights reserved.
//

import UIKit

open class ImageCache {
    static let shared = ImageCache()
    private var images = [String:UIImage]()
    
    private init() {
//        NotificationCenter.default.addObserver(forName: Notification.Name.UIApplicationDidReceiveMemoryWarning, object: nil, queue: .main) { [weak self] notification in
//            self?.images.removeAll(keepingCapacity: false)
//        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func set(_ image: UIImage, forKey key: String) {
        images[key] = image
    }
    
    func image(forKey key: String) -> UIImage? {
        return images[key]
    }
}

