//
//  ViewController.swift
//  CocoaByArtem
//
//  Created by Артем Буторин on 06.04.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let cellCustom = "CellCustom"
    
    var tableView: UITableView!
    
//    private lazy var tableView: UITableView = {
//        let tableView = UITableView(frame: CGRect.zero, style: .plain)
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.separatorStyle = .singleLine
//        tableView.allowsSelection = false
//        return tableView
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: .zero)
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(16)
        }
        tableView.register(TestCell.self, forCellReuseIdentifier: TestCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.estimatedRowHeight = 77
//        tableView.register(UINib(nibName: "CellCustom", bundle: nil), forCellReuseIdentifier: cellCustom)
//        tableView.dataSource = self
//        tableView.delegate = self
//        setupViews()
//        setupConstraints()
//        setupCellConstraints()
        // Do any additional setup after loading the view.
    }
    private func setupViews() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(16)
        }
    }
    
    private func setupCellConstraints() {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCustom") as? CellCustom
        cell?.snp.makeConstraints { make in
            make.left.right.equalToSuperview().offset(16)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Constants.Headers.headerNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCustom") as? CellCustom
        //        let header = Constants.Headers.headerNames[indexPath.row]
        //        let date = Constants.Dates.dateNames[indexPath.row]
        //        let info = Constants.Infos.infoNames[indexPath.row]
        //        let image = Constants.Images.imageNames[indexPath.row]
        //        cell?.header.text = header
        //        cell?.date.text = date
        //        cell?.info.text = info
        //        cell?.pic.image = image
        //        return cell ?? UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: TestCell.identifier, for: indexPath) as! TestCell
        cell.label.text = Constants.Headers.headerNames[indexPath.item]
        cell.label.font = Constants.Fonts.ui16semi
        cell.label2.text = Constants.Dates.dateNames[indexPath.item]
        cell.label2.font = Constants.Fonts.ui14reg
        cell.label2.textColor = .systemGray
        cell.label3.text = Constants.Infos.infoNames[indexPath.item]
        cell.label3.font = Constants.Fonts.ui14reg
        return cell
    }
    

}

extension ViewController: UITableViewDelegate {}
