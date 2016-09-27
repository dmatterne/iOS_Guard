//
//  main.swift
//  Guard
//
//  Created by Stannis Baratheon on 27/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import Foundation

print("Hello, World!")

func startEngine(fuel:Bool , battery:Bool) -> Bool
{
    guard fuel else { return false }
    guard battery else { return false }
    print("We are starting the engine")
    print("The engine has started")
    return true
}

if startEngine(fuel: true, battery: true)
{
    print("Success")
} else {
    print("Failure")
}

func processBook(title: String? , price: Double? , pages: Int?)
{
    guard let theTitle = title else { return }
    guard let thePrice = price else { return }
    guard let thePages = pages else { return }
    print("\(theTitle) costs £\(thePrice),has \(thePages) pages")
}

processBook(title:"Game of Thrones" , price: 12.99, pages: 892)
processBook(title:nil , price: 12.99, pages: 892)
