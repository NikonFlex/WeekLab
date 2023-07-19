import SwiftUI

struct WeekDayFrontView: View
{
    @State public var day: Card
    
    var body: some View
    {
        ZStack
        {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: screen.width - 30, height: (screen.width - 30) / 1.2)
                .shadow(color: Color("EerieBlack"), radius: 6, x: 0, y: 5)
            
            Text(day.rawValue)
                .frame(width: screen.width - 30, height: (screen.width - 30) / 1.2)
                .background(Gradient(colors: [Color("EerieBlack"), Color("BlackOlive")]))
                .foregroundColor(Color("TimberWolf"))
                .font(.custom("Disket Mono", size: 45))
                .shadow(color: Color("TimberWolf"), radius: 6)
                .cornerRadius(25)
        }
    }
}

struct WeekDayFrontView_Previews: PreviewProvider
{
    static var previews: some View
    {
        WeekDayFrontView(day: Card.Wednesday)
    }
}
