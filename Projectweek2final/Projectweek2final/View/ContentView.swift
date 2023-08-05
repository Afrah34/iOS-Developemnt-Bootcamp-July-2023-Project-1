//
//  ContentView.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 18/01/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks = [
        Task(title: "Buy groceries", description: "Milk, eggs, bread, etc.", priority: .MEDIUM, status: .Done),
        Task(title: "Call the doctor", description: "Make an appointment for next week.", priority: .LOW, status: .Backlog),
        Task(title: "Finish the presentation", description: "Due tomorrow!", priority: .HIGH, status: .Todo)
    ]
    @State var searchText:String=""
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    //Title
                    Text("")
                        .font(.system(.largeTitle))
                        .navigationTitle("Tasks")
                    Text("new task")
                    NavigationLink {
                        AddNewTaskView(selectOption1: .HIGH, selectOption2: .Backlog)
                    } label: {
                        Image(systemName: "plus.diamond.fill")
                    }
                }
                // Search Box
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Search" , text: $searchText)
                        .frame(height: 40)
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 4)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(25)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

