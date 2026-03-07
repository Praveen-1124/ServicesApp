//
//  ServiceTiltleView.swift
//  ServicesApp
//
//  Created by Praveen A on 07/03/26.
//

import SwiftUI

struct ServiceTiltleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
    }
}

#Preview {
    ServiceTiltleView(title: "Interior Design Project")
}
