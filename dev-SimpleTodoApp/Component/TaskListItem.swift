import SwiftUI

struct TaskListItem: View {
    var title: String
    var done: Bool

    var body: some View {
        HStack {
            if (!done) {
                Image(systemName: "square")
                    .foregroundColor(.gray)
            } else {
                Image(systemName: "checkmark.square.fill")
                    .foregroundColor(.green)
            }
            Text(title)
            Spacer()
        }
    }
}

struct TaskListItem_Previews: PreviewProvider {
    static var previews: some View {
        List {
            TaskListItem(title: "hoge", done: false)
            TaskListItem(title: "hufa", done: true)
        }
    }
}
