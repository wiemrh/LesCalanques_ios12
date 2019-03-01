//
//  CalanqueCellAlternative.swift
//  Calanques
//
//  Created by wiem on 3/1/19.
//  Copyright © 2019 wiem. All rights reserved.
//

import UIKit

class CalanqueCellAlternative: UITableViewCell {

    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var calanqueIV: UIImageView!
    
    var calanque: Calanque? {
        didSet {
            if calanque != nil {
                calanqueIV.image = calanque!.image
                nomLabel.text = calanque!.nom
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
