//
//  JournalEntryListItem.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

struct JournalEntryListItem: View {
    let journalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            DateView(date: journalEntry.createdDate)
            Text("\(journalEntry.text)")
                .lineLimit(2)
        }
    }
}
