//
//  details.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 20/01/1445 AH.
//

import Foundation
class TaskViewModel : Identifiable , ObservableObject {
    
    @Published var tasks : [Task] = [
        Task(title: "week", description: "week of app ", priority: .HIGH, status: .Todo),
        Task(title: "Publish An Article", description: " ", priority: .LOW, status: .Backlog),
        Task(title: "Swimming ", description: "Swimming every Tuesday", priority: .HIGH, status: .Done),
        Task(title: "week", description: "week of app ", priority: .MEDIUM, status: .InProgress),
        
    ]
    
    @Published var sortType : SortType = .priority
    @Published var isPresented = false
    @Published var searched = ""
    
    func addTask(task : Task){
        tasks.append(task)
    }
    
    func removeTask(indexAt : IndexSet){
        tasks.remove(atOffsets: indexAt)
    }
    func sort(){
            
            switch sortType {
            case .priority :
                tasks.sort(by: { $0.priority.rawValue > $1.priority.rawValue })
            case .Status :
                tasks.sort(by: { $0.status.rawValue > $1.status.rawValue })
            }
        }
        
    }
