//
//  ContentView.swift
//  CalendarTest
//
//  Created by Larry Burris on 1/21/21.
//
import SwiftUI

struct ContentView: View
{
    @State private var dateValue = Date()
    
    var body: some View
    {
        DatePicker("Choose a date:", selection: $dateValue, in: ...Date(), displayedComponents: .date)
            .datePickerStyle(GraphicalDatePickerStyle())
        
        Text("Selected date is \(formatDate(dateValue))")
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}

func formatDate(_ date: Date) -> String
{
    let formatter = DateFormatter()
    
    formatter.dateFormat = "EEEE, MMM dd, yyyy"
    
    return formatter.string(from: date)
}


