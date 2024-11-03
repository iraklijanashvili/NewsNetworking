//
//  QuizCollectionViewCell.swift
//  homework20
//
//  Created by Imac on 03.11.24.
//

import UIKit


final class QuizCollectionViewCell: UICollectionViewCell {
    
    private let quizButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.setTitleColor(.black, for: .normal)

        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(quizButton)
        
        NSLayoutConstraint.activate([
            quizButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14),
            quizButton.heightAnchor.constraint(equalToConstant: 41),

            quizButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            quizButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
    
    
    func configure(with text: String) {
        quizButton.setTitle(text, for: .normal)
    }
}


