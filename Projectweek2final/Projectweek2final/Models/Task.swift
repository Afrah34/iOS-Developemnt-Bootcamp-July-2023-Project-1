//
//  Task.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 19/01/1445 AH.
//

import Foundation
struct Task: Identifiable , Equatable{
    let id: UUID = UUID()
    let title: String
    let description: String
    let priority : Priority
    let status : Status
}
enum Priority : String, CaseIterable , Identifiable{
    case LOW
    case  MEDIUM
    case HIGH
    var id: Self{self}
    
}
enum Status : Int , CaseIterable ,Identifiable {
    case Backlog
    case   Todo
    case  Done
    case  InProgress
    var id: Self {self}
    
}

