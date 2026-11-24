//
//  DetailView.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

struct DetailView: View {
    @Binding var selectedEntry: JournalEntry?
    
    var body: some View {
        if let entry = selectedEntry {
            JournalEntryView(journalEntry: entry)
        } else {
            Text("Select a journal entry")
        }
    }
}
