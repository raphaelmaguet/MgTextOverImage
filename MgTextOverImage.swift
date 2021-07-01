//
//  MGTextOverImage.swift
//  MAGRAF Studio
//  https://magraf.fr
//  contact@magraf.fr
//  Created by raphael maguet on 16/06/2021.
//

import Foundation
import UIKit


@IBDesignable
final class MgTextOverImage: UIView {
    
    var label: UILabel!
    var imageView: UIImageView!
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addSubviews()
    }
        
    func addSubviews() {
        imageView = UIImageView()
        addSubview(imageView)
        label = UILabel()
        addSubview(label)
    }
    
    func setText(MGSetText: String, MGSetImage: UIImage) {

        Text = MGSetText
        Image = MGSetImage
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.frame = self.bounds
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica", size: setCustomFont())
        
        
    }
    
    

    @IBInspectable var border: CGFloat = 0.0 {
        didSet { layer.borderWidth  = border }
    }
    @IBInspectable var radius: CGFloat = 0.0 {
        didSet { layer.cornerRadius = radius }
    }
    
    
    @IBInspectable var LabelX: CGFloat = 0.0 {
        didSet {
            label.frame = self.setLabelPos(MGx: LabelX, MGy: LabelY, MGwidth: LabelW, MGheight: LabelH)
        }
    }
    @IBInspectable var LabelY: CGFloat = 0.0 {
        didSet {
            label.frame = self.setLabelPos(MGx: LabelX, MGy: LabelY, MGwidth: LabelW, MGheight: LabelH)
        }
    }
    @IBInspectable var LabelW: CGFloat = 0.0 {
        didSet {
            label.frame = self.setLabelPos(MGx: LabelX, MGy: LabelY, MGwidth: LabelW, MGheight: LabelH)
        }
    }
    @IBInspectable var LabelH: CGFloat = 0.0 {
        didSet {
            label.frame = self.setLabelPos(MGx: LabelX, MGy: LabelY, MGwidth: LabelW, MGheight: LabelH)
        }
    }
    
    @IBInspectable var BorderColor: UIColor? {
        didSet {
            let convColor = BorderColor?.cgColor
            layer.borderColor  = convColor
            
        }
    }
    
    
    
    
    @IBInspectable var Image: UIImage? {
        didSet { imageView.image = Image }
    }
    @IBInspectable var Text: String? {
        didSet { label.text = Text }
    }
    @IBInspectable var TextBackground: UIColor? {
        didSet { label.backgroundColor  = TextBackground }
    }
    @IBInspectable var TextColor: UIColor? {
        didSet { label.textColor  = TextColor }
    }
    @IBInspectable var Align: NSTextAlignment = .center {
        didSet { label.textAlignment = Align }
    }
    @IBInspectable var font: UIFont? {
        didSet { label.font = font }
    }
    
    func setLabelPos(MGx: CGFloat, MGy: CGFloat, MGwidth: CGFloat, MGheight: CGFloat) -> CGRect {
        
        let getWidth = layer.bounds.width
        let getHeight = layer.bounds.height
        let setReurn = CGRect(x: getWidth * MGx, y: getHeight * MGy, width: getWidth * MGwidth, height: getHeight * MGheight)
        return setReurn
        
    }
    
    func setCustomFont() -> CGFloat {


            let bounds = UIScreen.main.bounds
            let width = bounds.size.width

            let baseWidth: CGFloat = 100

            let fontSize = 14 * (width / baseWidth)

            return fontSize
        }
}
