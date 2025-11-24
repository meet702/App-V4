//
//  DataStored.swift
//  App-V4
//
//  Created by SDC-USER on 21/11/25.
//

class DataStored {
    private var memoryRecap: [MemoryRecap] = []
    
    static let shared = DataStored()
    
    func loadMemoryRecapCard() {
        let memoryRecapCard: [MemoryRecap] = [MemoryRecap(title: "Memory Recap", suBTitle: "A look back at your beautiful moments")]
    }
}
