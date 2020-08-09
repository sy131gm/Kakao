//
//  ViewController.swift
//  class2
//
//  Created by Seyeon An on 2020/07/05.
//  Copyright © 2020 Seyeon An. All rights reserved.
//
import UIKit

class ProfileViewViewController: UIViewController {

    var imageView = UIImageView()
    var nameLabel = UILabel()
    var profileButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp(){
        view.backgroundColor = .white
        view.addSubview(imageView)
        imageView.image = UIImage(named: "background")
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        view.addSubview(nameLabel)
        nameLabel.text = "안세연"
        nameLabel.textColor = .black
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(150)
        }
        
        view.addSubview(profileButton)
        profileButton.setBackgroundImage(UIImage(named: "profileimage"), for: .normal)
        profileButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.size.equalTo(100)
            make.bottom.equalTo(nameLabel.snp.top).offset(-20)
        }
        profileButton.layer.cornerRadius = 30
        profileButton.layer.masksToBounds = true
    }
}


