//
//  CardTableViewCell.swift
//  NewTimeLine
//
//  Created by Daniel Washington Ignacio on 19/07/21.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var perfilImageView: UIImageView!
    
    
    @IBOutlet weak var cardBackgroundImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        self.cardBackgroundImageView.layer.cornerRadius = 4
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value: Character){
        self.cardBackgroundImageView.image = UIImage(named: value.imagaNameBackbround)
        self.perfilImageView.image = UIImage(named: value.imageName)
    }
    
}
