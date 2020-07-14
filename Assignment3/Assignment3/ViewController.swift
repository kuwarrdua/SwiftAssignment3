//
//  ViewController.swift
//  Assignment3
//
//  Created by Kuwardeep Singh on 2020-07-14.
//  Copyright © 2020 Kuwardeep Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //added label with the text mentioned and also with the given dimensions
            let label = UILabel()
            label.frame = CGRect(x: 0, y: 0, width: 200, height: 21)
            label.text = "FIRST LABEL"
            //This will ensure 5 lines of data
            label.numberOfLines = 5
            label.text = "Swift is a cool language. You gotta do it by heart and succeed. There's nothing stopping you, have faith"
            
            //label with the font properties and its text left aligned
            label.font = UIFont(name: "AVENIR", size: 15)
            label.textAlignment = .left
            
            //setting up the shadow opacity, radius property
            label.layer.shadowOpacity = 0.7
            label.layer.shadowRadius = 2
            
            //setting the background color and color of text of the label
            label.textColor = UIColor.white
            label.backgroundColor = UIColor.systemPink
            view.addSubview(label)
            label.translatesAutoresizingMaskIntoConstraints = false
            
            //putting auto layout constraints
            NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 100)
            ]);
        
            //adding button with image inside it and adding some more properties
            let button = UIButton(frame: CGRect(x: 150, y: 550, width: 90, height: 50))
            let image = UIImage(named: "image.jpeg")
            button.setBackgroundImage(image, for: .normal)
            button.setTitle("Button", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
            view.addSubview(button)
            
            
                
        }
        @objc func buttonPress (_ sender: UIButton){
            print("Button pressed")
        }


}

