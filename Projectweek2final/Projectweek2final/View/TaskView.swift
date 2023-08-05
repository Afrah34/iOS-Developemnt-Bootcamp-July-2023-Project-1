//
//  TaskView.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 20/01/1445 AH.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Button(action: {},
                           label: {Image(systemName: "trash")})
                    Button(action: {},
                           label: {Image(systemName: "pencil.line")})
                }
                .padding(30)
                Spacer()
                
                
            }
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
