//
//  IFXLogger.swift
//  TTSwift
//
//  Created by 张大宗 on 2017/4/5.
//  Copyright © 2017年 张大宗. All rights reserved.
//

import Foundation

public protocol IFXLogger{
    /**
     *  error 级别日志
     */
    func error(_ items: Any...)
    
    /**
     *  warn 级别日志
     */
    func warn(_ items: Any...)
    
    /**
     *  info 级别日志
     */
    func info(_ items: Any...)
    
    /**
     *  debug 级别日志
     */
    func debug(_ items: Any...)
    
    /**
     *  verbose 级别日志
     */
    func verbose(_ items: Any...)
}
