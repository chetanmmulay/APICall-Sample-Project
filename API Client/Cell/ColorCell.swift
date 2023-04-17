//
//  ColorCell.swift
//  API Client
//

import UIKit
import IQListKit

class ColorCell: UITableViewCell, IQModelableCell {

    typealias Model = Color

    var model: Model? {
        didSet {
            guard let model = model else {
                return
            }

            textLabel?.text = model.name
            detailTextLabel?.text = model.color
            let color = UIColor(hex: model.color)
            backgroundColor = color

            if color.isLight {
                textLabel?.textColor = UIColor.black
                detailTextLabel?.textColor = UIColor.black
            } else {
                textLabel?.textColor = UIColor.white
                detailTextLabel?.textColor = UIColor.white
            }
        }
    }
}
