//
//  Counter.swift
//  app
//
//  Created by Ronald Alves on 15/04/22.
//

import Foundation

@objc(Counter)
class Counter: NSObject{
  
  private var count = 0
  
  @objc
  func increment(_ callback: RCTResponseSenderBlock){
    count += 1;
    print(count);
    callback([count])
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool{
    return true;
  }
  
  @objc
  func constantsToExport() -> [String: Any]!{
    return ["initialCount": 0];
  }
  
  
  
}
