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
                
                TimberWolfDivider(shift: 0)
                
                ScrollView(showsIndicators: false)
                {
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                    IssueView(day: day, time: "12.00")
                }
                .clipShape(Rectangle())
                .frame(width: screen.width - 30, height: (screen.width - 30) / 1.2 - 50)
                .lineSpacing(0)
                
                TimberWolfDivider(shift: 0)
                
                HStack
                {
                    AccentText(text: "Add new plan")
                        .onTapGesture
                        {
                            print("add new plan")
                        }
                    
                    Spacer()
                    
                    AccentText(text: "Clear all")
                        .onTapGesture
                        {
                            print("clear all")
                        }
                }.frame(width: screen.width - 100, height: 20)
                
                Spacer()
                    .frame(width: screen.width - 30, height: 2)
                
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

