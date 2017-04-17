//
//  FXLogFactory.swift
//  TTSwift
//
//  Created by 张大宗 on 2017/4/5.
//  Copyright © 2017年 张大宗. All rights reserved.
//

import Foundation
import UIKit
import CocoaLumberjack
import FXAppContextSwift


public func FXLogError(_ items: Any...){
    FXLogFactory.sharedInstance.getLogger().error(items)
}

public func FXLogInfo(_ items: Any...){
    FXLogFactory.sharedInstance.getLogger().info(items)
}

public func FXLogWarn(_ items: Any...){
    FXLogFactory.sharedInstance.getLogger().warn(items)
}

public func FXLogDebug(_ items: Any...){
    FXLogFactory.sharedInstance.getLogger().debug(items)
}

public func FXLogVerbose(_ items: Any...){
    FXLogFactory.sharedInstance.getLogger().verbose(items)
}

public class FXLogFactory:IFXLaunchProtocol{
    
    static var logger:IFXLogger?
    
    public static let sharedInstance = FXLogFactory()
    
    func getLogger() ->IFXLogger{
        if FXLogFactory.logger == nil{
            FXLogFactory.logger = FXLogger()
        }
        return FXLogFactory.logger!
    }
        
    public func registerApp(_ launchOptions: [UIApplicationLaunchOptionsKey : Any]?) {
        DDLog.add(DDTTYLogger.sharedInstance)
        let fileLogger: DDFileLogger = DDFileLogger() // File Logger
        fileLogger.rollingFrequency = TimeInterval(60*60*24)  // 24 hours
        fileLogger.logFileManager.maximumNumberOfLogFiles = 7
        DDLog.add(fileLogger)
    }
 
}
