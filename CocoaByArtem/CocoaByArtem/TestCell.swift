//
//  TestCell.swift
//  CocoaByArtem
//
//  Created by Артем Буторин on 08.04.2022.
//

import UIKit
import SnapKit

class TestCell: UITableViewCell {
    static let identifier: String = "test_cell_identifier"

    var label: UILabel!
    var label2: UILabel!
    var label3: UILabel!
    var imgView: UIImageView!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configure()
    }

    func configure() {
        let pic = UIImage(named: "block")
        imgView = UIImageView(image: pic)
        label = UILabel(frame: .zero)
        label2 = UILabel(frame: .zero)
        label3 = UILabel(frame: .zero)
        label3.numberOfLines = 0
        self.contentView.addSubview(imgView)
        self.contentView.addSubview(label)
        self.contentView.addSubview(label2)
        self.contentView.addSubview(label3)
        imgView.snp.makeConstraints {
            $0.height.equalTo(50)
            $0.width.equalTo(50)
            $0.left.equalToSuperview()
            $0.top.equalToSuperview().offset(16)
            $0.bottom.equalToSuperview().offset(-41)
        }
        label.snp.makeConstraints {
            $0.left.equalToSuperview().offset(66)
            $0.right.equalToSuperview().offset(-77)
//            $0.top.equalToSuperview().offset(0)
            $0.bottom.equalToSuperview().offset(-77)
        }
        label2.snp.makeConstraints{
            $0.right.equalToSuperview()
//            $0.top.equalToSuperview().offset(0)
            $0.bottom.equalToSuperview().offset(-77)
        }
        label3.snp.makeConstraints{
 //           $0.width.equalTo(369)
            $0.right.equalToSuperview()
            $0.left.equalToSuperview().offset(66)
            $0.top.equalToSuperview().offset(17)
            $0.bottom.equalToSuperview().offset(7)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
