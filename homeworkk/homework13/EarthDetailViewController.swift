


import UIKit


class EarthDetailViewController: UIViewController {
    
    private let planetImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "Earth")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "ArrowBtn2"), for: .normal)
        button.tintColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Earth"
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .orange
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func createInfoView(title: String, value: String) -> UIView {
        let container = UIView()
        container.backgroundColor = .clear
        container.layer.borderColor = UIColor.orange.withAlphaComponent(0.3).cgColor
        container.layer.borderWidth = 1
        container.layer.cornerRadius = 15
        container.translatesAutoresizingMaskIntoConstraints = false
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 18)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let valueLabel = UILabel()
        valueLabel.text = value
        valueLabel.textColor = .white
        valueLabel.font = .systemFont(ofSize: 18)
        valueLabel.textAlignment = .right
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        container.addSubview(titleLabel)
        container.addSubview(valueLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
            titleLabel.centerYAnchor.constraint(equalTo: container.centerYAnchor),
            
            valueLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -16),
            valueLabel.centerYAnchor.constraint(equalTo: container.centerYAnchor),
            
            container.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        return container
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = UIColor(red: 33/255, green: 13/255, blue: 4/255, alpha: 1.0)
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        view.addSubview(backButton)
        view.addSubview(titleLabel)
        view.addSubview(planetImageView)
        
        let areaView = createInfoView(title: "Area", value: "500,100,100 km2")
        let temperatureView = createInfoView(title: "Temperature", value: "-18°C")
        let massView = createInfoView(title: "Mass", value: "6,39E23 kg")
        
        [areaView, temperatureView, massView].forEach { view.addSubview($0) }
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            backButton.widthAnchor.constraint(equalToConstant: 24),
            backButton.heightAnchor.constraint(equalToConstant: 24),
            
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: backButton.centerYAnchor),
            
            planetImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32),
            planetImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            planetImageView.widthAnchor.constraint(equalToConstant: 300),
            planetImageView.heightAnchor.constraint(equalToConstant: 300),
            
            areaView.topAnchor.constraint(equalTo: planetImageView.bottomAnchor, constant: 32),
            areaView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            areaView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            temperatureView.topAnchor.constraint(equalTo: areaView.bottomAnchor, constant: 16),
            temperatureView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            temperatureView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            massView.topAnchor.constraint(equalTo: temperatureView.bottomAnchor, constant: 16),
            massView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            massView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    }
    
    @objc private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
