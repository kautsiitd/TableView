//
//  ViewController.swift
//  TableView
//
//  Created by Kautsya Kanu on 25/10/17.
//  Copyright © 2017 Kautsya Kanu. All rights reserved.
//

import UIKit

class ViewController: TableViewController {
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}

extension ViewController {
    override func numberOfSections(in tableView: TableView) -> Int {
        return 1
    }
    override func numberOfRows(in tableView: TableView, inSection: Int) -> Int {
        return 10
    }
    override func heightForRow(at: IndexPath) -> Int {
        return 240
    }
    override func cellForRow(at: IndexPath) -> TableViewCell {
        guard let cell = tableView?.reUsableCellWith(identifier: "Cell", at: at) else {
            return TableViewCell()
        }
        return cell
    }
}

