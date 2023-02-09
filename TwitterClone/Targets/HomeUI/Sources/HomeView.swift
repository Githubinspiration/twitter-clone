//
//  HomeView.swift
//  TTwin
//

import SwiftUI
import TwitterCloneUI
import Auth
import Feeds
import Search
import Profile
import TimelineUI

public struct HomeView: View {
    @StateObject
    var feedsClient: FeedsClient
    
    @StateObject
    var profileInfoViewModel = ProfileInfoViewModel()
    
    @State
    private var isAddingTweet = false
        
    @State private var isShowingProfile = false

    public init(authUser: AuthUser) {
        _feedsClient = StateObject(wrappedValue: FeedsClient.productionClient(authUser: authUser))
    }

    public var body: some View {
        NavigationStack {
            VStack {
                TabView {
                    ZStack {
                        FeedsView()
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                
                                Button {
                                    self.isAddingTweet.toggle()
                                } label: {
                                    Image(systemName: "plus.circle.fill")
                                        .font(.system(size: 42))
                                        .padding(.all)
                                }
                                .sheet(isPresented: $isAddingTweet, content: {
                                    AddNewTweetView()
                                        .environmentObject(feedsClient)
                                })
                            }
                        }
                    }.tabItem {
                        Image(systemName: "house")
                    }
                    SearchView(feedsClient: feedsClient)
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }
                    
                    Text("")
                        .tabItem {
                            Image(systemName: "waveform.and.mic")
                        }
                    
                    Text("")
                        .tabItem {
                            Image(systemName: "bell")
                        }
                        .badge(10)
                    
                    Text("")
                        .tabItem {
                            Image(systemName: "text.bubble")
                        }
                }
                //                TabBarView()
                //                    .frame(width: .infinity, height: 68)
            } // Header, scrollable feeds, tab bar
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    ProfileImage(imageUrl: profileInfoViewModel.feedUser?.profilePicture, action: {
                        self.isShowingProfile.toggle()
                    })
                    .sheet(isPresented: $isShowingProfile, content: {
                        MyProfile(contentView: { AnyView(MyProfileInfoAndTweets(feedsClient: feedsClient))
                        })
                            .environmentObject(feedsClient)
                    })
                }
                
                ToolbarItem(placement: .principal) {
                    Button {
                        print("TTwin logo pressed")
                    } label: {
                        TTwinLogo()
                    }
                }
            }
        }
        .environmentObject(feedsClient)
        .environmentObject(profileInfoViewModel)
        .task {
            profileInfoViewModel.feedUser = try? await feedsClient.user()
            try? await feedsClient.follow(target: feedsClient.authUser.userId, activityCopyLimit: 10)
        }
    }
}

// struct HomeTimelineView_Previews: PreviewProvider {
//    static let auth = TwitterCloneAuth()
//    static var feedClient = FeedsClient.previewClient()
//    static var previews: some View {
//        HomeTimelineView()
//            .environmentObject(auth)
//            .environmentObject(feedClient)
//            .preferredColorScheme(.dark)
//    }
// }
