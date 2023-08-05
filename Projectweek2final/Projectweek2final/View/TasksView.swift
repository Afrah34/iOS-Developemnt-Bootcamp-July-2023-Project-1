//
//  TasksView.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 19/01/1445 AH.
//

import SwiftUI


struct TasksView: View {
    @State private var tasks = [Task]
  @State private var selectedTask: Task?

  var body: some View {
    NavigationView {
      List {
        ForEach(tasks) { task in
          TaskRow(task: task)
            .onTapGesture {
              selectedTask = task
            }
        }
      }
      .navigationBarTitle("Tasks")
      .sheet(item: $selectedTask) { task in
        TaskDetailsView(task: task)
      }
    }
  }

  func addTask() {
    let task = Task(title: "New Task", priority: .low, status: .backlog)
    tasks.append(task)
  }

  func deleteTask(task: Task) {
    tasks.remove(task)
  }

  func editTask(task: Task) {
    let updatedTask = Task(
      title: task.title,
      priority: task.priority,
      status: task.status
    )
    tasks[tasks.firstIndex(of: task)!] = updatedTask
  }

  func prioritizeTask(task: Task, priority: TaskPriority) {
    task.priority = priority
  }

  func changeTaskStatus(task: Task, status: TaskStatus) {
    task.status = status
  }

  func filterTasks(byStatus status: TaskStatus) -> [Task] {
    return tasks.filter { task in
      task.status == status
    }
  }

  func searchTasks(byTitle title: String) -> [Task] {
    return tasks.filter { task in
      task.title.contains(title)
    }
  }

  func storeTasks() {
    // TODO: Implement code to store tasks locally
  }

  func loadTasks() {
    // TODO: Implement code to load tasks locally
  }
}

struct TaskRow: View {
  @State private var isEditing = false
  let task: Task

  var body: some View {
    HStack {
      Text(task.title)
        .font(.headline)
      Spacer()
      if isEditing {
        Button(action: {
          isEditing = false
        }) {
          Text("Cancel")
        }
      } else {
        Button(action: {
          isEditing = true
        }) {
          Text("Edit")
        }
      }
    }
    .sheet(isPresented: $isEditing) {
      TaskDetailsView(task: task)
    }
  }
}

struct TaskDetailsView: View {
  @State private var task = Task(title: "", priority: .low, status: .backlog)

  var body: some View {
    Form {
      TextField("Title", text: $task.title)
        .font(.headline)
      Picker("Priority", selection: $task.priority) {
        ForEach(TaskPriority.allCases) { priority in
          Text(priority.description).tag(priority)
        }
      }
      Picker("Status", selection: $task.status) {
        ForEach(TaskStatus.allCases) { status in
          Text(status.description).tag(status)
        }
      }
    }
    .navigationBarTitle("Task Details")
    .navigationBarItems(trailing: Button(action: {
      task = Task(title: "", priority: .low, status: .backlog)
    }) {
      Text("Cancel")
    })
  }
}

enum TaskPriority: String, CaseIterable {
  case low
  case medium
  case high
}

enum TaskStatus: String, CaseIterable {
  case backlog
  case todo
  case inProgress
  case done
}

struct Task: Identifiable {
  let id = UUID()
  let title: String
  let priority: TaskPriority
  let status: TaskStatus
}



struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
        TaskDetailsView()
        TaskRow()
    }
}
