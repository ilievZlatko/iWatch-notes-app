//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Zlatko Iliev on 4.08.21.
//

import SwiftUI

struct DetailView: View {
  let note: Note
  let count: Int
  let index: Int
  
  @State private var isCretidsPresented: Bool = false
  @State private var isSettingsPresented: Bool = false
  
  var body: some View {
    VStack(alignment: .center, spacing: 3) {
      // HEADER
      HeaderView()
      
      // CONTENT
      Spacer()
      
      ScrollView(.vertical) {
        Text(note.text)
          .font(.title3)
          .fontWeight(.semibold)
          .multilineTextAlignment(.center)
      }
      
      Spacer()
      
      // FOOTER
      HStack(alignment: .center) {
        Image(systemName: "gear")
          .imageScale(.large)
          .onTapGesture {
            isSettingsPresented.toggle()
          }
          .sheet(isPresented: $isSettingsPresented, content: {
            SettingsView()
          })
        
        Spacer()
        
        Text("\(index + 1) / \(count)")
        
        Spacer()
        
        Image(systemName: "info.circle")
          .imageScale(.large)
          .onTapGesture {
            isCretidsPresented.toggle()
          }
          .sheet(isPresented: $isCretidsPresented, content: {
            CreditsView()
          })
      } //: HSTACK
      .foregroundColor(.secondary)
    } //: VSTACK
    .padding(3)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var sampleData: Note = Note(id: UUID(), text: "Hello, World!")
  
  static var previews: some View {
    DetailView(note: sampleData, count: 5, index: 1)
  }
}
