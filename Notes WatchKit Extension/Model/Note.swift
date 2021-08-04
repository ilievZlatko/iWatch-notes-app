//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Zlatko Iliev on 30.07.21.
//

import Foundation

struct Note: Identifiable, Codable {
  let id: UUID
  let text: String
}
