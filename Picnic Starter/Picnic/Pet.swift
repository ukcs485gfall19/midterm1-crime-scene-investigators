//
//  Pet.swift
//  Picnic
//
//  Created by Cameron Lydon on 9/29/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import Foundation

class Pet {
  var name: String?
  var species: String?
  var breed: String?
  var color: String?
  var age: Int?
  
  // returns a tuple of Pet information
  func getPetInformation() -> (String, String, String, String, Int){
    let info = (name!, species!, breed!, color!, age!)
    return info
  }
}
