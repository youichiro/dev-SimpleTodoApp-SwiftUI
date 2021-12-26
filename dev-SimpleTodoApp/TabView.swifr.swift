import SwiftUI

struct TabView: View {
    var body: some View {
        TabView {
            Text("hoge").tabItem{ Text("A") }
            Text("hoge").tabItem{ Text("B") }
            Text("hoge").tabItem{ Text("C") }
        }
    }
}
