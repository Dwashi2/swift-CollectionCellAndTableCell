//
//  HorizontalTableViewCell.swift
//  NewTimeLine
//
//  Created by Daniel Washington Ignacio on 19/07/21.
//

import UIKit

class HorizontalTableViewCell: UITableViewCell {

    private var arrayCharacter: [Character] = []
    
    @IBOutlet weak var horizontalCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.horizontalCollectionView.register(UINib(nibName: "CircleCollectionViewCell" , bundle: nil), forCellWithReuseIdentifier: "CircleCollectionViewCell")
        
        self.horizontalCollectionView.dataSource = self
        self.horizontalCollectionView.delegate = self
        
    }
    
    func setup(value: [Character]) {
        self.arrayCharacter = value
        self.horizontalCollectionView.reloadData()
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


//MARK: - UICollectionViewDelegate, UICollectionViewDataSource

extension HorizontalTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCharacter.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CircleCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CircleCollectionViewCell", for: indexPath) as? CircleCollectionViewCell
        
        cell?.setup(value: self.arrayCharacter[indexPath.row])
        
        
        return cell ?? UICollectionViewCell()
        
    }
    
    
}

//MARK: - UIImageView
extension UIImageView {
    
    func circleImage(){
//        self.layer.cornerRadius = 0.5 * self.bounds.size.width
//        self.clipsToBounds = true
//        self.layer.borderColor = UIColor.gray.cgColor
//        self.layer.borderWidth = 2.5
    }
    
}
