import SwiftUI

struct WeekDayBackView: View
{
    @State public var day: Card
    
    var body: some View
    {
        ZStack
        {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: screen.width - 30, height: (screen.width - 30) / 1.2)
                .shadow(color: Color("EerieBlack"), radius: 6, x: 0, y: 5)
            
            Text("")
                .frame(width: screen.width - 30, height: (screen.width - 30) / 1.2)
                .background(Gradient(colors: [Color("EerieBlack"), Color("BlackOlive")]))
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color("Flame"), lineWidth: 3)
                        .shadow(color: Color("Flame"), radius: 6)
                )
            
            VStack(spacing: 1)
            {
                Spacer()
                    .frame(width: screen.width - 30, height: 2)
                
                Text("plans for " + day.rawValue)
                    .font(.custom("Disket Mono", size: 15))
                    .foregroundColor(Color("FloralWhite"))
                    .frame(width: screen.width - 30, height: 20)
                
                Divider()
                    .overlay(Color("TimberWolf"))
                    .frame(width: screen.width - 36, height: 1)
                
                ScrollView(showsIndicators: false)
                {
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                }
                .frame(width: screen.width - 30, height: (screen.width - 30) / 1.2 - 50)
                
                Spacer()
            }
            .frame(width: screen.width - 30, height: (screen.width - 30) / 1.2)
        }
    }
}



struct WeekDayBackView_Previews: PreviewProvider
{
    static var previews: some View
    {
        WeekDayBackView(day: Card.Wednesday)
    }
}
