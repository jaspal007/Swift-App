import SwiftUI

struct ContentView: View{
    var body: some View{
        VStack(alignment: .center) {
            MapView().frame(height: 300)
            CircleImage().frame(height: 200).offset(y: -100).padding(.bottom, -100)
            VStack(alignment: .center) {
                let text = Text("Taylor Swift")
                text.font(.largeTitle).fontWeight(.heavy).fontDesign(.serif).foregroundStyle(.mint)
                HStack {
                    Text("The Music Industry,").font(.subheadline).fontDesign(.rounded)
                        .fontWeight(.bold)
                    Text("Tennessee").fontDesign(.rounded)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
            }
            .padding()
            Divider()
            VStack (alignment: .leading) {
                Text("Highlights").font(.title2).fontWeight(.black).multilineTextAlignment(.leading)
                Text("She has been peaking her career for 18 years winning over 13 Grammies").multilineTextAlignment(.leading)
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
