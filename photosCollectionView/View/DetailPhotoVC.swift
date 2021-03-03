//
//  DetailPhotoVC.swift
//  photosCollectionView
//
//  Created by EvilB on 01.03.2021.
//

import UIKit

class DetailPhotoVC: UIViewController {
    @IBOutlet weak var detailImage: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImage.image = image
    }
}
