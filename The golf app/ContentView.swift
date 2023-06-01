import SwiftUI
import UIKit

struct GolfButtonLayout: View {
    let links: [String] = [
        "https://www.youtube.com/watch?v=xG66WXfnCTg", // Slice improvement video link
        "https://www.youtube.com/watch?v=EndU64gWnAQ", // Hook improvement video link
        "https://www.youtube.com/watch?v=On7K89a1Buw", // Top improvement video link
        "https://www.youtube.com/watch?v=ihWxNa8gUgY", // Chunk improvement video link
        "https://www.youtube.com/watch?v=EubxU2vLM2s"  // Shank improvement video link
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Group {  Button(action: {
                // Open the Slice improvement video link
                openLink(url: links[0])
            }) {
                Text("Slice Fix")
                    .italic()
                    .bold()
                    .padding()
            }
                Image("Slice Fix")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
            }
            Spacer()
            Group {
                Button(action:{
                // Open the Hook improvement video link
                openLink(url: links[1])
            }) {
                Text("Hook Fix")
                    .italic()
                    .bold()
                    .padding()
            }
                Image("Hook Fix")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
            }
            Spacer()
            Group {   Button(action: {
                // Open the Top improvement video link
                openLink(url: links[2])
            }) {
                Text("Top Fix")
                    .italic()
                    .bold()
            }
                Image("Top Fix")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
            }
                Spacer()
            Group {    Button(action: {
                // Open the Chunk improvement video link
                openLink(url: links[3])
            }) {
                Text("Chunk Fix")
                    .italic()
                    .bold()
                    .padding()
            }
                Image("Chunk Fix")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
             
            }
                Spacer()
            Group {   Button(action: {
                // Open the Shank improvement video link
                openLink(url: links[4])
            }) {
                Text("Shank Fix")
                    .italic()
                    .bold()
                    .padding()
            }
                Image("Shank Fix")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                   
            }
         
        }
    }
    
    func openLink(url: String) {
        guard let url = URL(string: url) else {
            return // Handle invalid URL case
        }
        UIApplication.shared.open(url)
    }
}

struct GolfApp: App {
    var body: some Scene {
        WindowGroup {
            GolfButtonLayout()
        }
    }
}

struct GolfApp_Previews: PreviewProvider {
    static var previews: some View {
        GolfButtonLayout()
    }
}
