import SwiftUI

@main
struct testAppApp: App{
    @State private var modelData = ModelData()
    var body: some Scene{
        WindowGroup{
            ContentView().environment(modelData)
        }
    }
}
