//
//  Array2D.swift
//  4Tetris
//
//  Created by Dan Korkelia on 21/09/2017.
//  Copyright © 2017 Dan Korkelia. All rights reserved.
//

import Foundation

// #1
// The T allows us to store any data type.
class Array2D<T> {
    let columns: Int
    let rows: Int
    
    // #2
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows

        // #3
        // Xcode changed this line from   ## array = Array<T?>(count:rows * columns, repeatedValue: nil) ##
        array = Array<T?>(repeating:nil, count: rows * columns)
    }
    
    // #4
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column ] = newValue
        }
    }
}
// array class end
