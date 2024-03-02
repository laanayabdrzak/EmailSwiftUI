//
//  ViewModel.swift
//  EmailSwiftUI
//
//  Created by LAANAYA Abderrazak on 2/3/2024.
//

import SwiftUI

final class ViewModel: ObservableObject {
    let openURL: OpenURLProtocol
    init(openURL: OpenURLProtocol = UIApplication.shared) {
        self.openURL = openURL
    }
    
    func email() {
        guard let url = URL(string: "support@example.com") else { return }
        openURL.open(url)
    }
    
    func emailWithSubject() {
        let subject = "Feedback"
        let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        guard let url = URL(string: "support@example.com?subject=\(encodedSubject)") else { return }
        openURL.open(url)
    }
    
    func emailWithSubjectAndBody() {
        let subject = "Feedback"
        let body = "I wanted to share some feedback about...'the issue' ok"
        
        let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        if let url = URL(string: "support@example.com?subject=\(encodedSubject)&body=\(encodedBody)") {
            openURL.open(url)
        }
    }
}
