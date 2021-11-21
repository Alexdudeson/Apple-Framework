//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Alexey Yarov on 16.11.2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published  var isShowingDetailView = false
}
