//
//  InfoRowView.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import SwiftUI
import ServicesSampleData

struct InfoRowView: View {
    let icon: ImageResource
    var title: String? = nil
    var description: String? = nil
    var caption: String? = nil
    
    var body: some View {
        HStack(alignment: .top) {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 28)
            VStack(alignment: .leading, spacing: 6) {
                if let title {
                    InfoText(title, font: .headline, foregroundStyle: .primary)
                }
                if let description {
                    InfoText(description, font: .body)
                }
                if let caption {
                    InfoText(caption, font: .callout)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private func InfoText(_ text: String, font: Font, foregroundStyle: HierarchicalShapeStyle = .secondary) -> some View {
        Text(text)
            .font(font)
            .foregroundStyle(foregroundStyle)
            .multilineTextAlignment(.leading)
    }
}

#Preview {
    let data = SampleData.generateSingleService()
    InfoRowView(icon: .clockCheck, title: data.title, description: data.description, caption:  data.serviceNotes)
}
