
import SwiftUI

struct ContentView: View {
    @State var left=1
     @State var right=1
    let dicer=[1,2,3,4,5,6]
    var body: some View {
      
       
        ZStack{
            Image("background").resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
            VStack{
                Spacer()
                Image("diceeLogo")
                
                
                HStack{
//                    let n=dicer[Int.random(in: 0...5)]
                    ExtractedView(value: left)
                    
                    Divider()
                    Divider()
                    Divider()
                    Divider()
                    Divider()
                    
//                    let n1=dicer[Int.random(in: 0...5)]
                    ExtractedView(value: right)
                    
                }
                
                Button("ROLL") {
                    self.left=dicer[Int.random(in: 0...5)]
                    self.right=dicer[Int.random(in: 0...5)]
                   
                }.foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.system(size: 28))
                    .background(.red)
                    .padding(.all).padding()
                    
            }
        }
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    let value:Int
    var body: some View {
        Image("dice\(value)")
            
            
    }
}
