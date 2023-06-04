//
//  eventTableViewCell.swift
//  liveap
//
//  Created by 森掛 on 2023/06/01.
//

import UIKit

class eventTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(title: String) {
        titleLabel.text = title
    }
}
