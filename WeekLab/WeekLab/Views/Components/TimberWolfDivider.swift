import SwiftUI

struct TimberWolfDivider: View
{
    @State var shift: Int
    
    var body: some View
    {
        Divider()
            .overlay(Color("TimberWolf"))
            .frame(width: screen.width - 36 - CGFloat(shift), height: 1)
    }
}

struct TimberWolfDivider_Previews: PreviewProvider
{
    static var previews: some View
    {
        TimberWolfDivider(shift: 5)
    }
}
