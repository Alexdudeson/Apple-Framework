//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Alexey Yarov on 10.11.2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                        }
                    }
                }
        .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) { FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                isShowingDetailView: $viewModel.isShowingDetailView) }
        }
    }
}

@available(iOS 14.0, *)
struct FrameworkGridView_Previews: PreviewProvider {
    @available(iOS 14.0, *)
    static var previews: some View {
        if #available(iOS 14.0, *) {
            FrameworkGridView()
                .preferredColorScheme(.dark)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
     
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame (width: 100 ,height: 100 )
            Text(framework.name)
                .font(.title)
                .fontWeight(.light)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
