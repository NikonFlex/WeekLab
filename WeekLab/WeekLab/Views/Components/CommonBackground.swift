import SwiftUI

struct CommonBackground: View
{
    var body: some View
    {
        Rectangle()
            .fill(Gradient(colors: [Color("TimberWolf"), Color("FloralWhite")]))
            .ignoresSafeArea()
    }
}

struct CommonBackground_Previews: PreviewProvider
{
    static var previews: some View
    {
        CommonBackground()
    }
}
