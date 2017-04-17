//
//  FXLogger.swift
//  TTSwift
//
//  Created by 张大宗 on 2017/4/5.
//  Copyright © 2017年 张大宗. All rights reserved.
//

import Foundation
import CocoaLumberjack

class FXLogger:IFXLogger{
    
    func info(_ items: Any...) {
        let message =  self.replaceString("[INFO] \(items)")
        _DDLogMessage(message, level: DDLogLevel.info, flag: DDLogFlag.info, context: 0, file: #file, function: #function, line: #line, tag: nil, asynchronous: true, ddlog: DDLog.sharedInstance)
    }
    
    func warn(_ items: Any...) {
        let message = self.replaceString("[WARN] \(items)")
        _DDLogMessage(message, level: DDLogLevel.warning, flag: DDLogFlag.warning, context: 0, file: #file, function: #function, line: #line, tag: nil, asynchronous: true, ddlog: DDLog.sharedInstance)
    }
    
    func debug(_ items: Any...) {
        let message = self.replaceString("[DEBUG] \(items)")
        _DDLogMessage(message, level: DDLogLevel.debug, flag: DDLogFlag.debug, context: 0, file: #file, function: #function, line: #line, tag: nil, asynchronous: true, ddlog: DDLog.sharedInstance)
    }
    
    func error(_ items: Any...) {
        let message = self.replaceString("[ERROR] \(items)")
        _DDLogMessage(message, level: DDLogLevel.error, flag: DDLogFlag.error, context: 0, file: #file, function: #function, line: #line, tag: nil, asynchronous: true, ddlog: DDLog.sharedInstance)
    }
    
    func verbose(_ items: Any...) {
        let message = self.replaceString("[VERBOSE] \(items)")
        _DDLogMessage(message, level: DDLogLevel.verbose, flag: DDLogFlag.verbose, context: 0, file: #file, function: #function, line: #line, tag: nil, asynchronous: true, ddlog: DDLog.sharedInstance)
    }
    
    func replaceString(_ inputStr:String)->String{
        return inputStr.replacingOccurrences(of: "[[", with: "").replacingOccurrences(of: "]]", with: "").replacingOccurrences(of: "\\\"", with: "\"");
    }
}
