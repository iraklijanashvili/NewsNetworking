import UIKit

class DataCell: UITableViewCell {
    
    private let cellStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 16
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let planetImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let infoStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        stack.alignment = .leading
        return stack
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private let sizeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .lightGray
        return label
    }()
    
    private let arrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ArrowBtn")
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .clear
        selectionStyle = .none
        
        contentView.addSubview(cellStackView)
        
        infoStackView.addArrangedSubview(nameLabel)
        infoStackView.addArrangedSubview(sizeLabel)
        
        cellStackView.addArrangedSubview(planetImageView)
        cellStackView.addArrangedSubview(infoStackView)
        cellStackView.addArrangedSubview(arrowImageView)
        
        NSLayoutConstraint.activate([
            cellStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            cellStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            cellStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            cellStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -40),
            
            planetImageView.widthAnchor.constraint(equalToConstant: 60),
            planetImageView.heightAnchor.constraint(equalToConstant: 60),
            
            arrowImageView.widthAnchor.constraint(equalToConstant: 20),
            arrowImageView.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func configure(with planet: Planet) {
        planetImageView.image = UIImage(named: planet.imageName)
        nameLabel.text = planet.name
        sizeLabel.text = planet.size
    }
}





