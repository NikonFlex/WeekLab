import SwiftUI
import UIKit

extension UIScrollView
{
    open override var clipsToBounds: Bool
    {
        get { false }
        set { }
    }
}

struct ContentView: View
{
    var body: some View
    {
        ZStack
        {
            CommonBackground()
            
            ScrollView(showsIndicators: false)
            {
                VStack
                {
                    WeekDay(day: "MONDAY").padding(4)
                    WeekDay(day: "TUESDAY").padding(4)
                    WeekDay(day: "WEDNESDAY").padding(4)
                    WeekDay(day: "THURSDAY").padding(4)
                    WeekDay(day: "FRIDAY").padding(4)
                    WeekDay(day: "SATURDAY").padding(4)
                    WeekDay(day: "SUNDAY").padding(4)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
