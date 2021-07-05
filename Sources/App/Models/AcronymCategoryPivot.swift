//
//  File.swift
//  
//
//  Created by vladislavpanev on 19.06.2021.
//

import Foundation
import Fluent

final class AcronymCategoryPivot: Model {
    static let schema = "acronym-category-pivot"
    
    @ID
    var id: UUID?
    
    @Parent(key: "acronymID")
    var acronym: Acronym
    
    @Parent(key: "categoryID")
    var category: Category
    
    init() { }
    
    init(
        id: UUID? = nil,
        acronym: Acronym,
        category: Category
    ) throws {
        self.id = id
        self.$acronym.id = try acronym.requireID()
        self.$category.id = try category.requireID()
    }
}