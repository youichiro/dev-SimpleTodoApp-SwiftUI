import SwiftUI

struct TaskList: View {
    @State var tasks = model.tasks

    var body: some View {
        List {
            ForEach(tasks.filter { !$0.done }) { task in
                TaskListItem(title: task.title, done: task.done)
            }
            .onDelete { offsets in
                tasks.remove(atOffsets: offsets)
            }
            .onMove { source, destination in
                tasks.move(fromOffsets: source, toOffset: destination)
            }

            Section(header: Text("Complated")) {
                ForEach(tasks.filter { $0.done }) { task in
                    TaskListItem(title: task.title, done: task.done)
                }
                .onDelete { offsets in
                    tasks.remove(atOffsets: offsets)
                }
                .onMove { source, destination in
                    tasks.move(fromOffsets: source, toOffset: destination)
                }
            }
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
    }
}
