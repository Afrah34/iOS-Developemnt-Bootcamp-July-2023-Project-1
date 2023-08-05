//
//  TasksExplore View.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 18/01/1445 AH.
//

import SwiftUI

/*struct TasksExplore_View: View {
    @State var searchText:String=""
    let arrayOfList : Array<String> = []
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    //Title
                    Text("")
                        .font(.system(.largeTitle))
                        .navigationTitle("Tasks")
                       // .toolbar{
                    NavigationLink {
                            AddNewTask_View()
                        } label: {
                            Image(systemName: "plus.diamond.fill")
                               
                        }
                       /* Button(action: {
                            
                        },
                               label: {
                            Image(systemName: "plus.diamond.fill")
                        })*/
                    
                        }//
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
                //  }
                
                Form{
                    
                }
                //  .navigationTitle("Tasks")
                
            }
        }
    }

/*struct AddNewTask_View: View {
    @State var title : String = ""
    @State var description : String = ""
    var body: some View{
        NavigationStack{
            VStack{
                TextField("Title" , text: $title)
                TextField("Description" , text: $description)
                 
                    .padding(.vertical, 8)
                    .padding(.horizontal, 4)
                  
                   
            }
        }
    }
}*/
struct TasksExplore_View_Previews: PreviewProvider {
    static var previews: some View {
        TasksExplore_View()
       // AddNewTask_View()
    }
}*/
