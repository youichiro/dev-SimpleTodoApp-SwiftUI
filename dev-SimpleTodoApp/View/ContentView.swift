import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TaskListView()
                .tabItem { Image(systemName: "checkmark.square") }
            Text("WIP")
                .tabItem{ Image(systemName: "calendar") }
            Text("WIP")
                .tabItem{ Image(systemName: "circle.circle") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
