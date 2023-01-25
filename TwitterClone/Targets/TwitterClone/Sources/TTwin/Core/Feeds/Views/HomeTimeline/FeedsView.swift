import SwiftUI

import TwitterCloneFeeds

struct FeedsView: View {
    @EnvironmentObject var feedClient: FeedsClient
    
    @State private var selection = 0
    
    var body: some View {
        VStack {
            Picker("For You and Following picker", selection: $selection) {
                Text("For You").tag(0)
                Text("Following").tag(2)
            }
            .pickerStyle(.segmented)
            .labelsHidden()
            
            // MARK: Display the content under each picker
            if selection == 0 {
                ForYouFeedsView(forYouTweets: feedClient.activities)
            } else {
                FollowingFeedsView(followingTweets: FollowingTweetData)
            }
        }
    }
}

struct FeedsView_Previews: PreviewProvider {
    static var previews: some View {
        FeedsView()
            .preferredColorScheme(.dark)
    }
}
