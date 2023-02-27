//
//  TableViewCell ElAzteca.swift
//  ElAzteca
//
//  Created by Laboratorio11 UNAM-Apple11 on 27/02/23.
//

import UIKit

class TableViewCell_ElAzteca: UITableViewCell {

    @IBOutlet weak var imgTatuador: UIImageView!
    
    
    @IBOutlet weak var lblNombre: UILabel!
    
    
    @IBOutlet weak var lblUbicacion: UILabel!
    
    
    @IBOutlet weak var lblContacto: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
