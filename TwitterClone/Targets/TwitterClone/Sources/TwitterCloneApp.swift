import SwiftUI

import StreamChatSwiftUI

import TwitterCloneUI
import Timeline
import Auth
import AuthUI
import Feeds

@main
struct TwitterCloneApp: App {
        
    @StateObject
    var feedClient = FeedsClient.productionClient(region: .euWest, auth: TwitterCloneAuth())
//    var feedClient = FeedsClient.previewClient()
    
    var body: some Scene {
        WindowGroup {
            if feedClient.auth.authUser != nil {
                HomeTimelineView().environmentObject(feedClient)
            } else {
                StartView().environmentObject(feedClient.auth)
            }
            
            
            // MARK: For previewing
            //LogIn()
            //StartView()
            //MyProfile()
            //OthersProfile()
            //ProfileInfoView(myProfile: MyProfileData)
            //MyProfileInfoAndTweets()
            //UnFollowerProfileInfoAndTweets()
            //ProfileFollower()
            //ProfileUnfollower()
        }
    }
}

