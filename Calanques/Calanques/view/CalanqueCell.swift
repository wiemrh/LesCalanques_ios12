//
//  CalanqueCell.swift
//  Calanques
//
//  Created by wiem on 3/1/19.
//  Copyright © 2019 wiem. All rights reserved.
//

import UIKit

class CalanqueCell: UITableViewCell {

    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var calanqueIV: ImageRonde!
    @IBOutlet weak var nomLabel: UILabel!
    
    var calanque: Calanque!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setupCell( calanque: Calanque){
        self.calanque = calanque
        ContainerView.layer.cornerRadius = 20
        nomLabel.text = self.calanque.nom
        calanqueIV.image = self.calanque.image
        ContainerView.backgroundColor = UIColor.lightGray
    }
    
}
