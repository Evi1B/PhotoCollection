//
//  PhotoCollectionVC.swift
//  photosCollectionView
//
//  Created by EvilB on 25.02.2021.
//

import UIKit


class PhotoCollectionVC: UICollectionViewController {
    
    let photos = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"]
    
    let itemPerRows: CGFloat = 2

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
    
        let imageName = photos[indexPath.item]
        let image = UIImage(named: imageName)
        
        cell.firstImage.image = image
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pickImage" {
            let detailVC = segue.destination as! DetailPhotoVC
            let cell = sender as! PhotoCell
            
            detailVC.image = cell.firstImage.image
        }
    }
}
