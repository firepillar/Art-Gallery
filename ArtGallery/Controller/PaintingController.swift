//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Kat Milton on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    
    init() {
        loadPaintingFromAssets()
    }
    var paintings: [Painting] = []
    
    
    //Function to loop through paintings and name them as strings. The painting images are then appended to the array.
    
    func loadPaintingFromAssets() {
        for picture in 1...12 {
            var currentPicture: UIImage
            currentPicture = UIImage(named: "Image\(picture)")!
            let painting1 = Painting(image: currentPicture)
            paintings.append(painting1)
        }
        
    }
    
    // Toggles like button when pressed.
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked.toggle()
    }
    
    
}

