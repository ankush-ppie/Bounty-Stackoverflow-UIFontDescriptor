//
//  ViewController.swift
//  Demo
//
//  Created by Ankush Lokhande on 28/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // test all fonts - Avenir Next
        var fonts: [String] = UIFont.fontNames(forFamilyName: "Avenir Next")
        print(fonts)
        var i: CGFloat = 0;
        for font in fonts {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 250 + i))
            label.textAlignment = .center
            label.attributedText = NSAttributedString(string: font)
            label.font = UIFont(name: font, size: 25)
            self.view.addSubview(label)
            i += 100;
        }
        // test boldDescriptor font
        let boldDescriptor = UIFontDescriptor(fontAttributes: [
            UIFontDescriptor.AttributeName.family: "Avenir Next",
            UIFontDescriptor.AttributeName.traits: [
                UIFontDescriptor.TraitKey.weight: UIFont.Weight.bold
            ]
        ])
        print(boldDescriptor)
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.width + i))
        label.textAlignment = .center
        label.attributedText = NSAttributedString(string: "Avenir Next")
        label.font = UIFont(descriptor: boldDescriptor, size: 25)
        self.view.addSubview(label)
    }


}

