import SwiftUI

struct IssueView: View
{
    @State var day: Card
    @State var time: String
    
    var body: some View
    {
        VStack(spacing: 0)
        {
            TimberWolfDivider(shift: 0)
            
            ScrollView(.horizontal, showsIndicators: false)
            {
                HStack(spacing: 0)
                {
                    Text("1200")
                        .foregroundColor(Color("TimberWolf"))
                        .font(.custom("Disket Mono", size: 30))
                        .shadow(color: Color("TimberWolf"), radius: 6)
                        .frame(width: 45, height: 70)
                        .onTapGesture { print("time") }
                    
                    VStack(spacing: 0)
                    {
                        Text("Репетитор по английскому")
                            .foregroundColor(Color("FloralWhite"))
                            .font(.custom("Hasubi Mono", size: 20))
                            .frame(width: screen.width - 36 - 45, height: 50, alignment: .center)
                            .onTapGesture { print("content") }
                        
                        TimberWolfDivider(shift: 45)
                        
                        HStack(spacing: 0)
                        {
                            Spacer()
                            
                            Text("Remind on: 11.00")
                                .foregroundColor(Color("Flame"))
                                .font(.custom("Hasubi Mono", size: 20))
                                .onTapGesture { print("remindTime") }
                            
                            Spacer()
                                .frame(width: 10, height: 0)
                            
                        }
                        .frame(width: screen.width - 36 - 45, height: 20)
                    }
                }
                .frame(width: screen.width - 36, height: 70)
            }
            .frame(width: .infinity, height: 70)
            
            TimberWolfDivider(shift: 0)
        }
    }
}

struct IssueView_Previews: PreviewProvider
{
    static var previews: some View
    {
        IssueView(day: Card.Wednesday, time: "aaa")
    }
}
