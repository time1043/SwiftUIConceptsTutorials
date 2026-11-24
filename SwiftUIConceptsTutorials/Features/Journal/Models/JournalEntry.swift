//
//  JournalEntry.swift
//  SwiftUIConceptsTutorials
//
//  Created by oswin902 on 2026/11/24.
//

import SwiftUI

struct JournalEntry: Identifiable, Hashable {
    let id = UUID()
    let createdDate: Date
    var text = ""
    
    init(createdDate: Date = Date(), text: String = "") {
        self.createdDate = createdDate
        self.text = text
    }
}
