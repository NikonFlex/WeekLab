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
            
            HStack(spacing: 0)
            {
                Text("1200")
                    .foregroundColor(Color("TimberWolf"))
                    .font(.custom("Disket Mono", size: 30))
                    .shadow(color: Color("TimberWolf"), radius: 6)
                    .frame(width: 45, height: 70)
                
                VStack(spacing: 0)
                {
                    Text("Репетитор по английскому")
                        .foregroundColor(Color("FloralWhite"))
                        .font(.custom("Hasubi Mono", size: 20))
                        .frame(width: screen.width - 36 - 45, height: 50, alignment: .center)
                    
                    TimberWolfDivider(shift: 45)
                    
                    HStack(spacing: 0)
                    {
                        Spacer()
                            .frame(width: 10, height: 0)
                        
                        AccentText(text: "Delete").onTapGesture { print("delete") }
                        
                        Spacer()
                            .frame(width: 10, height: 0)
                        
                        AccentText(text: "Edit").onTapGesture { print("edit") }
                        
                        Spacer()

                        Text("Remind on: 11.00")
                            .foregroundColor(Color("FloralWhite"))
                            .font(.custom("Hasubi Mono", size: 20))
                            .frame(width: .nan, height: 50, alignment: .center)
                        
                        Spacer()
                            .frame(width: 10, height: 0)
                            
                    }
                    .frame(width: screen.width - 36 - 45, height: 20)
                }
            }
            .frame(width: screen.width - 36, height: 70)
            
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
