//
//  ServicesListViewModel.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import SwiftUI
import Combine
import ServicesSampleData

final class ServicesListViewModel: ObservableObject {

    @Published var searchText: String = ""
    @Published var filteredServices: [Service] = []

    private var services: [Service] = []
    private var cancellables = Set<AnyCancellable>()

    init() {
        loadMockData()
        setupSearch()
    }

    private func setupSearch() {

        $searchText
            .debounce(for: .milliseconds(300), scheduler: RunLoop.main)
            .removeDuplicates()
            .sink { [weak self] text in
                self?.filterService(text)
            }
            .store(in: &cancellables)
    }

    private func filterService(_ searchText: String) {

        guard !searchText.isEmpty else {
            filteredServices = services
            return
        }

        let query = searchText.lowercased()
        filteredServices = services.filter({
            $0.title.lowercased().contains(query) ||
            $0.description.lowercased().contains(query) ||
            $0.customerName.lowercased().contains(query)
        })
    }

    private func loadMockData() {

        let sampleData = SampleData.generateServices()
        services = sampleData
        filteredServices = sampleData
    }

    func refreshData() async {

        try? await Task.sleep(for: .seconds(2))
        loadMockData()
    }
}
