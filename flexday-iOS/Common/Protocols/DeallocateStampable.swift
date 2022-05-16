//
//  FinalizePrinter.swift
//  Reebonz
//
//  Created by inchan on 14/04/2021.
//  Copyright © 2021 Reebonz korea. All rights reserved.
//

import Foundation

protocol DeallocateStampable {
    func deallocateStamp()
}

extension DeallocateStampable {
    
    fileprivate var timeString: String {
        return Date().string(withFormat: "HH:mm:ss.SSS")
    }

    func deallocateStamp() {
        let className = type(of: self)
        let instanceAddress = MemoryAddress(of: self)
        print("=================================================================================")
        print("     deinit - \(className) <\(instanceAddress)> [\(timeString))]")
        print("=================================================================================")
    }
}

fileprivate struct MemoryAddress<T>: CustomStringConvertible {

    let intValue: Int

    var description: String {
        let length = 2 + 2 * MemoryLayout<UnsafeRawPointer>.size
        return String(format: "%0\(length)p", intValue)
    }

    init(of structPointer: UnsafePointer<T>) {
        intValue = Int(bitPattern: structPointer)
    }
    
    init(of classInstance: T) {
        intValue = unsafeBitCast(classInstance, to: Int.self)
    }
}
