//
//  Question.swift
//  Quizzler
//
//  Created by Karlis Butins on 18/02/2021.
//  Copyright © 2021 karliscodingco. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String){
        text = q
        answer = a
    }
}
