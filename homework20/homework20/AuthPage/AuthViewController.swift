//
//  AuthView.swift
//  homework20
//
//  Created by Imac on 03.11.24.
//

import UIKit

class AuthViewController: UIViewController {
    
    private let viewModel = AuthViewModel()
    
    private let addImageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "ProfileImage"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = screenWidth - 32
        layout.itemSize = CGSize(width: itemWidth, height: 80)
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        collection.register(AuthCollectionViewCell.self, forCellWithReuseIdentifier: "AuthCollectionViewCell")
        collection.delegate = self
        collection.dataSource = self
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 142/255, green: 132/255, blue: 255/255, alpha: 1.0)
        
        return button
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = UIColor(red: 6/255, green: 11/255, blue: 38/255, alpha: 1.0)
        setupUi()
        
    }
    
    
    private func setupUi() {
        view.addSubview(addImageButton)
        view.addSubview(collectionView)
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            addImageButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            addImageButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            collectionView.topAnchor.constraint(equalTo: addImageButton.bottomAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            collectionView.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),

            
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 42)
        ])
    }
}

extension AuthViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AuthCollectionViewCell", for: indexPath) as! AuthCollectionViewCell
        let item = viewModel.item(at: indexPath.item)
        cell.configure(with: item)
        return cell
    }
}



