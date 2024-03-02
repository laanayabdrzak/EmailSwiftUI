//
//  OpenURLProtocol.swift
//  EmailSwiftUI
//
//  Created by LAANAYA Abderrazak on 2/3/2024.
//

import SwiftUI

protocol OpenURLProtocol {
    func open(_ url: URL)
}

extension UIApplication: OpenURLProtocol {
    func open(_ url: URL) {
        open(url, options: [:], completionHandler: nil)
    }
}
