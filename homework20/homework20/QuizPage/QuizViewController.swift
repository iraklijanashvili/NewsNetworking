//
//  AuthView.swift
//  homework20
//
//  Created by Imac on 03.11.24.
//

import UIKit

class QuizViewController: UIViewController {

    private let viewModel = QuizViewModel()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .white
        label.text = "Quiz"
        return label
    }()
    
    private let resetButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Reset", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 142/255, green: 132/255, blue: 255/255, alpha: 1.0)
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        
        return button
    }()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = screenWidth - 32
        layout.itemSize = CGSize(width: itemWidth, height: 41)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        collection.register(QuizCollectionViewCell.self, forCellWithReuseIdentifier: "QuizCollectionViewCell")
        collection.delegate = self
        collection.dataSource = self
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = UIColor(red: 6/255, green: 11/255, blue: 38/255, alpha: 1.0)
        setupUi()
    }
    
    private func setupUi() {
        view.addSubview(titleLabel)
        view.addSubview(resetButton)
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            resetButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            resetButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            resetButton.widthAnchor.constraint(equalToConstant: 66),
            resetButton.heightAnchor.constraint(equalToConstant: 34),

            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),


            collectionView.topAnchor.constraint(equalTo: resetButton.bottomAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20),

        ])
    }
}

extension QuizViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCollectionViewCell", for: indexPath) as! QuizCollectionViewCell
        let item = viewModel.item(at: indexPath.item)
        cell.configure(with: item)
        return cell
    }
}

