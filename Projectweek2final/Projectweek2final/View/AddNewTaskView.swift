//
//  AddNewTaskView.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 19/01/1445 AH.
//

import SwiftUI

struct AddNewTaskView: View {
    @State  var title : String = ""
    @State var description : String = ""
    @State var selectOption1 :  Priority
    @State var selectOption2 : Status
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    TextField("Title",text:  $title)
                    TextField("Description" , text: $description)
                    HStack{
                        Picker("Priority", selection:
                                $selectOption1) {
                            ForEach(Priority.allCases){
                                option in Text(String(describing: option))
                            }
                        }
                    }
                    HStack{
                        Picker("status", selection:
                                $selectOption2) {
                            ForEach(Status.allCases){
                                option in Text(String(describing: option))
                            }
                        }
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 4)
                .navigationBarItems(trailing: Button(action: {
                    
                },
                                                     label: {
                    Text("add")}
                                                    ))
            }
        }
    }
}

struct AddNewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTaskView(selectOption1: .HIGH, selectOption2: .Backlog)
    }
}
