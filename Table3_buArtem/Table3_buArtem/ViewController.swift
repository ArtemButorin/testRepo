//
//  ViewController.swift
//  Table3_buArtem
//
//  Created by Артем Буторин on 02.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let myView = "MyView"
    
    let data = models
    
    let cellID = "Cell"
    
    var viewNew = MyViewController()
    
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        tableView.allowsSelection = true
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
        setupViews()
        setupConstraints()
//        setupMyView()
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard segue.identifier == "GoToView" else { return }
//        guard let destination = segue.destination as? MyView else { return }
//        destination.text1 = "Fdad"
//    }
//    @IBAction func onTapped(_ sender: Any) {
//        let GVC = MyView(text1: "fdfd", text2: "werqer)", text3: "qwerqer)", nibName: "MyView", bundle: nil)
//        show(GVC, sender: nil)
//    }
    
    private func setupViews() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
//    private func setupMyView() {
//        viewNew.text1 = ""
//        viewNew.text2 = ""
//        viewNew.text3 = ""
//    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // пример кода
        let section = self.data
        return section.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // с помощью indexPath вытаскиваем данные для ячейки
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        let section = self.data[indexPath.row]
        let name = section.name
//        let details = section.description
//        let location = section.location
        
        cell?.textLabel?.text = name
        cell?.accessoryType = .disclosureIndicator
     //   cell?.detailTextLabel?.text = details
     //   cell?.selectionStyle = .default

        return cell ?? UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewModel = data[indexPath.row]
//        guard let someView = storyboard?.instantiateViewController(withIdentifier: "MyViewController") as? MyViewController else { return }
        let someView = MyViewController2(nibName: "MyViewController2", bundle: nil)
        someView.text1 = viewModel.name
        someView.text2 = viewModel.location
        someView.text3 = viewModel.description
        navigationController?.pushViewController(someView, animated: true)
        
        
//        let openController = viewNew
//        openController.text1 = viewModel.name
//        openController.text2 = viewModel.location
//        openController.text3 = viewModel.description
        
        
//        MyView(text1: "\(viewModel.name)", text2: "\(viewModel.location)", text3: "\(viewModel.description)", nibName: "MyView", bundle: nil)
//
//        guard let openController = storyboard?.instantiateViewController(identifier: "MyView") as? MyView else { return }
//        openController.text1 = "iniggg"

//        show(openController, sender: nil)
    }
}

