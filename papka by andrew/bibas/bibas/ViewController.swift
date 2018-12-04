//
//  ViewController.swift
//  bibas
//
//  Created by Student on 13/11/2018.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print (#function,view.frame.size)
        print("view.center=",view.center)
        DispatchQueue.main.asyncAfter(deadline: .now(), +3){
            self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        let label = UILabel(frame: CGRect(x: 20, 150, heigth: 100))
        label.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        label.text.Color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "создан программно"
        view.addSubview(label)
        
        let image = UIImage(named: "clouds")
        let imageView = UIImageView(image: image)
        let size = view.frame.size
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.frame = CGRect(
            x: size.width / 4,
            y: size.width / 4,
            width: size.width / 2,
            height: size.height / 2)
        view.addSubview(imageView)
        
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }
    
}

