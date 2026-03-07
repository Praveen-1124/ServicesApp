//
//  ServicesListView.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import SwiftUI
import ServicesSampleData

struct ServicesListView: View {
    
    @StateObject private var viewModel = ServicesListViewModel()
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            Divider()
            List(viewModel.filteredServices) { service in
                ServiceRow(service: service)
                    .listRowSeparator(.hidden)
                    .onTapGesture {
                        path.append(service)
                    }
            }
            .listStyle(.plain)
            .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer(displayMode: .always) , prompt: "Search Services")
            .refreshable {
                await viewModel.refreshData()
            }
            .navigationTitle("Services")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Service.self) { service in
                ServiceDetailsView(service: service)
            }
        }
        
    }
}

#Preview {
    ServicesListView()
}
