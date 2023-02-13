import SwiftUI
import Spaces
import StreamChatSwiftUI

import TwitterCloneUI
import TimelineUI
import HomeUI
import Auth
import AuthUI
import Feeds
import Profile
import Search

@main
struct TwitterCloneApp: App {
    
    init() {
        
        URLSession.shared.configuration.urlCache?.memoryCapacity = 400_000_000 // ~400 MB memory space
        URLSession.shared.configuration.urlCache?.diskCapacity = 1_000_000_000 // ~1GB disk cache space
    }
    
    // swiftlint:disable:next force_try
    @StateObject var auth = try! TwitterCloneAuth(baseUrl: "http://localhost:8080")
    @StateObject var purchaseManager = PurchaseManager()
    
    var body: some Scene {
        WindowGroup {
            if let authUser = auth.authUser {
                HomeView(authUser: authUser).environmentObject(auth).onReceive(auth.$authUser) { authUser in
                    purchaseManager.configure(userId: authUser?.userId)
                }
            } else {
                StartView().environmentObject(auth)
            }
            // MARK: For previewing
        }
    }
}

