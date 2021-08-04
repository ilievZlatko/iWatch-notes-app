//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Zlatko Iliev on 4.08.21.
//

import SwiftUI

struct CreditsView: View {
  @State private var randomNumber: Int = Int.random(in: 1 ..< 4)
  
  private var randomImage: String {
    return "developer-no\(randomNumber)"
  }
  
  var body: some View {
    VStack(spacing: 3) {
      // PROFILE IMAGE
      Image(randomImage)
        .resizable()
        .scaledToFit()
        .layoutPriority(1)
      
      // HEADER
      HeaderView(title: "Credits")
      
      // CONTENT
      Text("Zlatko Iliev")
        .foregroundColor(.primary)
        .fontWeight(.bold)
      
      Text("Developer")
        .font(.footnote)
        .foregroundColor(.secondary)
        .fontWeight(.light)
    }
  } //: VSTACK
}

struct CreditsView_Previews: PreviewProvider {
  static var previews: some View {
    CreditsView()
  }
}
