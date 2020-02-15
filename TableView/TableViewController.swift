//
//  TableViewController.swift
//  TableView
//
//  Created by Kautsya Kanu on 25/10/17.
//  Copyright © 2017 Kautsya Kanu. All rights reserved.
//

import Foundation
import UIKit

protocol TableViewDataSource {
	
}

class TableViewController: UIViewController {
	var tableView: TableView?
	var delegate: TableViewDelegate?
	var dataSource: TableViewDataSource?
	
    override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}

extension TableViewController: TableViewDelegate {
    func numberOfSections(in tableView: TableView) -> Int {
		return 1
	}
	func numberOfRows(in tableView: TableView, inSection: Int) -> Int {
		return 0
	}
	func heightForRow(at: IndexPath) -> Int {
		return 0
	}
	func cellForRow(at: IndexPath) -> TableViewCell? {
		return TableViewCell()
	}
	func willDisplayCell(at: IndexPath) -> TableViewCell {
		return TableViewCell()
	}
}

extension TableViewController: TableViewDataSource {
	
}
