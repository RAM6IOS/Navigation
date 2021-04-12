
// SwiftUI iPhone
import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                CircleNembeVime(color: .red, namber: 1)
                    .navigationTitle("Read Oen" )
                    .offset( y:-60)
                
                NavigationLink(
                    
                    destination: GreenTowView(coloe: .green)
                       
                        //.navigationTitle("Read Oen")
                        
                     ,
                    label: {
                        Text("Navigate")
                            .bold()
                            .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                )
            }
        }
        .accentColor(Color(.label))
       
        
    }
}

struct GreenTowView: View {
    var coloe:Color
    var body: some View {
        
            VStack{
                CircleNembeVime(color: coloe, namber: 2)
                    .navigationTitle("Read Tow")
                    .offset( y:-60)
                
                NavigationLink(
                    
                    destination:OrangethreView()
                        //.navigationTitle("Read Oen")
                        
                     ,
                    label: {
                        Text("Navigate")
                            .bold()
                            .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                )
            }
        
       
        
    }
}

struct OrangethreView: View {
  
    var body: some View {
        
            VStack{
                CircleNembeVime(color: .orange, namber: 3)
                    .navigationTitle("Read Thrie")
                    .offset( y:-60)
                
                
            }
        
       
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
struct CircleNembeVime: View {
    var color: Color
    var namber : Int
    var body: some View {
        ZStack{
            
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(namber)")
                .foregroundColor(.white)
                .font(.system(size:70 , weight: .bold))
        }
    }
}
