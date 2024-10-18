


import UIKit

final class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    
    
    let planets: [Planet] = [
        Planet(name: "Mars", size: "1,258,250 km2", imageName: "Mars"),
        Planet(name: "Jupiter", size: "6,142E10 km2", imageName: "Jupiter"),
        Planet(name: "Earth", size: "500,100,100 km2", imageName: "Earth"),
        Planet(name: "Saturn", size: "2,608,250 km2", imageName: "Saturn")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = UIColor(red: 33/255, green: 13/255, blue: 4/255, alpha: 1.0)
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 0)
        ])
        
        tableView.register(DataCell.self, forCellReuseIdentifier: "DataCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath) as? DataCell ?? UITableViewCell()
        
        if let dataCell = cell as? DataCell {
            let planet = planets[indexPath.row]
            dataCell.configure(with: planet)
            return dataCell
        }
        return UITableViewCell()
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let planet = planets[indexPath.row]
        let destinationVC: UIViewController
        
        switch planet.name {
        case "Mars":
            destinationVC = MarsDetailViewController()
        case "Jupiter":
            destinationVC = JupiterDetailViewController()
        case "Earth":
            destinationVC = EarthDetailViewController()
        case "Saturn":
            destinationVC = SaturnDetailViewController()
        default:
            return
        }
        
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}


struct Planet {
    let name: String
    let size: String
    let imageName: String
}
