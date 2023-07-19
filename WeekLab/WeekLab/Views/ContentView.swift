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
                    WeekDayView(day: Card.Monday).padding(4)
                    WeekDayView(day: Card.Tuesday).padding(4)
                    WeekDayView(day: Card.Wednesday).padding(4)
                    WeekDayView(day: Card.Thursday).padding(4)
                    WeekDayView(day: Card.Friday).padding(4)
                    WeekDayView(day: Card.Saturday).padding(4)
                    WeekDayView(day: Card.Sunday).padding(4)
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
