//
//  ProfileSummaryView.swift
//  TwitterCloneUI
//
//  Created by amos.gyamfi@getstream.io on 30.1.2023.
//  Copyright © 2023 Stream.io Inc. All rights reserved.
//

import SwiftUI
import TwitterCloneUI
import Feeds

public struct ProfileSummaryView: View {
    var feedsClient: FeedsClient
    @StateObject var profileInfoViewModel = ProfileInfoViewModel()

    @State private var isEditingPresented = false
    public init (feedsClient: FeedsClient) {
        self.feedsClient = feedsClient
    }

    public var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                ProfileInfoView(viewModel: profileInfoViewModel)
                    .padding(.top)
                    .task {
                        profileInfoViewModel.feedUser = try? await feedsClient.user()
                    }

                List {
                    // Link to the full profile page: MyProfile.swift
                    NavigationLink {
                        MyProfile()
                    } label: {
                        Image(systemName: "person.circle.fill")
                        Text("View full profile")
                    }

                    // Link to the full profile page: MyProfile.swift
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear.circle.fill")
                        Text("Settings")
                    }
                }
                .listStyle(.plain)
                
                Spacer()
            }
            .padding()
            .navigationTitle("")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    ProfileImage(imageUrl: "https://picsum.photos/id/64/200", action: {})
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        self.isEditingPresented.toggle()
                    } label: {
                        Text("Edit profile")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                    .buttonStyle(.borderedProminent)
                    .sheet(isPresented: $isEditingPresented) {
                        EditProfileView(feedsClient: feedsClient)
                    }
                }
            }
        }
    }
}
