import SwiftUI

struct AccentText: View
{
    @State var text: String
    
    var body: some View
    {
        Text(text)
            .foregroundColor(Color("Flame"))
            .font(.custom("Hasubi Mono", size: 20))
    }
}

struct AccentText_Previews: PreviewProvider
{
    static var previews: some View
    {
        AccentText(text: "papap")
    }
}
