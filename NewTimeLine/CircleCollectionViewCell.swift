//
//  CircleCollectionViewCell.swift
//  NewTimeLine
//
//  Created by Daniel Washington Ignacio on 19/07/21.
//

import UIKit

class CircleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var circleImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //self.circleImageView.circleImage()
        
//        self.circleImageView.layer.cornerRadius = 0.5 * self.circleImageView.bounds.size.width
//
//        self.circleImageView.clipsToBounds = true
//        self.circleImageView.layer.borderColor = UIColor.gray.cgColor
//        self.circleImageView.layer.borderWidth = 2.5
//
        
    }

    func setup(value: Character) {
        self.circleImageView.image = UIImage(named: value.imageName)
    }
    
}
