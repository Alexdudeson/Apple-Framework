//
//  SafariView.swift
//  Apple-Framework
//
//  Created by Alexey Yarov on 16.11.2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable  {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext <SafariView>)
    -> SFSafariViewController {
       SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext <SafariView>) {}
    
}
