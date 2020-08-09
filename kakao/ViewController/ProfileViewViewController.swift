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
    var userNameLabel = UILabel()
    var profileImageButton = UIButton()
    
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
        
        view.addSubview(userNameLabel)
        userNameLabel.text = "안세연"
        userNameLabel.textColor = .black
        userNameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(150)
        }
        
        view.addSubview(profileImageButton)
        profileImageButton.setBackgroundImage(UIImage(named: "profileimage"), for: .normal)
        profileImageButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.size.equalTo(100)
            make.bottom.equalTo(userNameLabel.snp.top).offset(-20)
        }
        profileImageButton.layer.cornerRadius = 30
        profileImageButton.layer.masksToBounds = true
    }
}


