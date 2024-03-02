//
//  ContentView.swift
//  EmailSwiftUI
//
//  Created by LAANAYA Abderrazak on 2/3/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Button("Click me to email", action: {
                viewModel.emailWithSubjectAndBody()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: ViewModel())
}
