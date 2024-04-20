//
//  ViewController.swift
//  Wonders of the World App
//
//  Created by Ahad Ahmad on 4/19/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private let imageNames = ["wonder1", "wonder2", "wonder3"]
    
    override func viewDidLoad() {
        super.viewDidLoad ()
        view.backgroundColor = .systemBlue
        view.addSubview(imageView)
        imageView.frame = CGRect(x:
                                    0, y: 0, width: 350, height:
                                    350)
        imageView.center = view.center
        
        let button = UIButton(type: .system)
        button.setTitle("Show a Wonder", for: .normal)
        button.frame = CGRect(x: 100, y: 450, width: 200, height: 50)
        button.addTarget(self, action:
                            #selector(showRandomWonder), for: .touchUpInside)
        view.addSubview(button)
    }
        
        @objc private func showRandomWonder() {
            let randomIndex = Int.random(in: 0..<imageNames.count)
            let randomImageName = imageNames[randomIndex]
            
            // Display the random image
            if let randomImage = UIImage(named: randomImageName) {
                imageView.image = randomImage
            }
        }
        
        
        
        
    }
    
