import UIKit
import SnapKit

class EmailTableViewCell: UITableViewCell {
    var userImageLabel = UILabel()
    var emailSenderLabel = UILabel()
    var emailContentLabel = UILabel()
    var emailDocumentsButton = UIButton()
    var emailStarButton = UIButton()
    var containerView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(){
        contentView.addSubview(userImageLabel)
        userImageLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(10)
            make.top.equalToSuperview().inset(7)
            make.size.equalTo(40)
        }
        userImageLabel.textAlignment = .center
        userImageLabel.layer.cornerRadius = 20
        userImageLabel.backgroundColor = random(colors: [.systemRed, .systemGreen, .systemYellow])
        userImageLabel.textColor = .white
        userImageLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        userImageLabel.layer.masksToBounds = true
        
        contentView.addSubview(emailStarButton)
        emailStarButton.setBackgroundImage(UIImage(named: "starimage"), for: .normal)
        emailStarButton.snp.makeConstraints{ make in
                 make.trailing.equalToSuperview().inset(10)
                 make.top.equalToSuperview().inset(5)
                 make.size.equalTo(30)
             }
        
                
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(8)
            make.leading.equalTo(userImageLabel.snp.trailing).offset(10)
            make.trailing.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().inset(8)
        }
        stackView.addArrangedSubview(emailSenderLabel)
        stackView.addArrangedSubview(emailContentLabel)
        stackView.addArrangedSubview(emailDocumentsButton)
      
        emailSenderLabel.textColor = .black
        emailSenderLabel.snp.makeConstraints{ make in
            make.leading.equalTo(userImageLabel.snp.trailing).offset(15)
            make.top.equalToSuperview().inset(2)
        }
        emailSenderLabel.font = UIFont.boldSystemFont(ofSize: 15)
        
        emailContentLabel.font = UIFont.defaultFont
        emailContentLabel.textColor = UIColor.black.withAlphaComponent(0.5)
        emailContentLabel.snp.makeConstraints{ make in
            make.leading.equalTo(userImageLabel.snp.trailing).offset(15)
            make.top.equalTo(emailSenderLabel.snp.bottom).offset(1)
        }
    
        stackView.addArrangedSubview(containerView)
        containerView.addSubview(emailDocumentsButton)

        emailDocumentsButton.layer.borderWidth = 1
        emailDocumentsButton.layer.cornerRadius = 10
        emailDocumentsButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        emailDocumentsButton.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        emailDocumentsButton.layer.borderColor = UIColor.darkGray.cgColor
        emailDocumentsButton.setTitleColor(.systemGray, for: .normal)
        emailDocumentsButton.layer.borderWidth = 0.5
        emailDocumentsButton.snp.makeConstraints{ make in
            make.leading.equalToSuperview()
            make.top.bottom.equalToSuperview().inset(3)
            make.width.lessThanOrEqualTo(UIScreen.main.bounds.width / 3).priority(.medium)
        }
         emailDocumentsButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
         emailDocumentsButton.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    }
    
    func configure(emailInfo: EmailInfo){
        userImageLabel.text = emailInfo.user
        emailSenderLabel.text = emailInfo.title
        emailContentLabel.text = emailInfo.content
        emailDocumentsButton.setTitle(emailInfo.documents, for: .normal)
        emailStarButton.setTitle(emailInfo.documents, for: .normal)
        
        let star = false
        if (star == emailInfo.isRead){
            emailStarButton.isHidden = false
        } else {
            emailStarButton.isHidden = true
        }
       
        if (emailInfo.documents == nil) {
            containerView.isHidden = true
        } else {
            containerView.isHidden = false
        }
}
    
    func random(colors: [UIColor]) -> UIColor {
        return colors[Int(arc4random_uniform(UInt32(colors.count)))]

    }
    
}
