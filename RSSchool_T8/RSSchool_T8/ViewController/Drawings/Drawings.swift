//
//  Drawings.swift
//  RSSchool_T8
//
//  Created by Ilya Shpilko on 7/17/21.
//

import UIKit

class Drawings: UIViewController {
    
    let nameForButton = ["Planet", "Head", "Tree", "Landscape"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Drawings"
        
        // Planet
        for (index, title) in nameForButton.enumerated() {
            let y = 114 + (55 * index)
            let button = UIButton(type: .system)
            button.frame = CGRect(x: 88, y: y, width: 200, height: 40)
            button.setTitle(title, for: .normal)
            button.tintColor = #colorLiteral(red: 0.1294117647, green: 0.6901960784, blue: 0.5568627451, alpha: 1)
            button.layer.borderColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            button.layer.borderWidth = 2
            button.layer.cornerRadius = 10
            button.tag = index
            view.addSubview(button)
            button.addTarget(self, action: #selector(buttonTarget(sender:)), for: .touchUpInside)
        }
    }
    
    @objc func buttonTarget(sender: UIButton) {
        switch sender.tag {
        case 0:
            print("0")
        case 1:
            print("1")
        case 2:
            print("2")
        case 3:
            print("3")
        default:
            break
        }
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 10, y: 6))
        shape.addLine(to: CGPoint(x: 10, y: 0))
        shape.addLine(to: CGPoint(x: 6, y: 0))
        shape.addLine(to: CGPoint(x: 6, y: 6))
        shape.addLine(to: CGPoint(x: 0, y: 6))
        shape.addLine(to: CGPoint(x: 0, y: 10))
        shape.addLine(to: CGPoint(x: 6, y: 10))
        shape.addLine(to: CGPoint(x: 6, y: 16))
        shape.addLine(to: CGPoint(x: 10, y: 16))
        shape.addLine(to: CGPoint(x: 10, y: 10))
        shape.addLine(to: CGPoint(x: 16, y: 10))
        shape.addLine(to: CGPoint(x: 16, y: 6))
        shape.addLine(to: CGPoint(x: 10, y: 6))
        shape.close()
    }
}
