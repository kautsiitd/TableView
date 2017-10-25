//
//  TableView.swift
//  TableView
//
//  Created by Kautsya Kanu on 25/10/17.
//  Copyright © 2017 Kautsya Kanu. All rights reserved.
//

import Foundation
import UIKit

protocol TableViewDelegate {
	func numberOfSections(in tableView: TableView) -> Int
	func numberOfRows(in tableView: TableView, inSection: Int) -> Int
	func heightForRow(at: IndexPath) -> Int
	func cellForRow(at: IndexPath) -> TableViewCell?
	func willDisplayCell(at: IndexPath) -> TableViewCell
}

class TableView: UIScrollView {
	var visibleCells: [UITableViewCell] = []
	var effectiveNumberOfCells: Int {
		// Calculate from tableView height and heightForRowAtIndexPath
		return 10
	}
	var numberOfCellsInSection: [Int] = []
	
	func reUsableCellWith(identifier: String, at: IndexPath) -> TableViewCell? {
		// Code to implement reUsability of Cells
		return TableViewCell()
	}
}

extension TableView: UIScrollViewDelegate {
	
}
