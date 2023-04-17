//
//  UserCell.swift
//  API Client
//


import UIKit
import IQListKit

class UserCell: UITableViewCell, IQModelableCell {
    typealias Model = User

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    var model: Model? {
        didSet {
            guard let model = model else {
                return
            }

            textLabel?.text = model.name
            detailTextLabel?.text = model.email
            if let avatar = model.avatar {
                imageView?.af.setImage(withURL: avatar)
            } else {
                imageView?.image = nil
            }
        }
    }
}
