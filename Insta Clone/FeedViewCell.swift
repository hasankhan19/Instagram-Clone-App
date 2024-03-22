//
//  FeedViewCell.swift
//  Insta Clone
//
//  Created by Areeba Khan on 2024-03-21.
//

import UIKit

class FeedViewCell: UITableViewCell {

    
    @IBOutlet weak var userEmailLabel: UILabel!
    
    
    @IBOutlet weak var commentLabel: UILabel!
    
    
    @IBOutlet weak var likeCount: UILabel!
    
    
    @IBOutlet weak var userImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func likeButtonPressed(_ sender: UIButton) {
    }
    
    

}
