//
//  UserTableViewCell.swift
//  DemoMVVM
//
//  Created by Lâm Bảo on 15/04/2023.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadCellData(model: Product) {
        labelTitle.text = model.title
    }
    
}
