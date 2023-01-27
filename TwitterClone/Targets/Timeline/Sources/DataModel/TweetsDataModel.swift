//
//  TweetsDataModel.swift
//  TTwin
//

import Foundation
import Feeds

// Data structure
struct ForYouTweetsStructure: Identifiable {
    var id = UUID()
    var userProfilePhoto: String
    var userName: String
    var userHandle: String
    var tweetSentAt: String
    var actionsMenuIcon: String
    var tweetSummary: String
    var hashTag: String
    var tweetPhoto: String
    var numberOfComments: String
    var numberOfLikes: String
}

// This is the same as the above but removes the tweet with image
public struct FollowingTweetsStructure: Identifiable {
    public var id = UUID()
    public var userProfilePhoto: String
    public var userName: String
    public var userHandle: String
    public var tweetSentAt: String
    public var actionsMenuIcon: String
    public var tweetSummary: String
    public var hashTag: String
    public var numberOfComments: String
    public var numberOfLikes: String
}

// TODO add sample data
public let ForYouTweetData = [PostActivity]()

let ForYouTweetDataOld = [
    ForYouTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/219/200",
        userName: "Happy Thoughts",
        userHandle: "@HappyThoughts",
        tweetSentAt: "2h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Starting the day with a positive attitude is key to a happy life 🥰",
        hashTag: "#happylife",
        tweetPhoto: "https://picsum.photos/id/220/350/200",
        numberOfComments: "1",
        numberOfLikes: "2"),
    
    ForYouTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/25/200",
        userName: "Book Worm",
        userHandle: "@bookworm",
        tweetSentAt: "3h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Just finished reading the latest bestseller and I am blown away by the author's storytelling skills",
        hashTag: "#BookReview",
        tweetPhoto: "https://picsum.photos/id/81/350/200",
        numberOfComments: "5",
        numberOfLikes: "10"),
    
    ForYouTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/3/200",
        userName: "Pet Parent",
        userHandle: "@petParent",
        tweetSentAt: "5h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Spending the afternoon playing with my furry best friend 🐇 🐈",
        hashTag: "",
        tweetPhoto: "https://picsum.photos/id/120/350/200",
        numberOfComments: "42",
        numberOfLikes: "458"),
    
    ForYouTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/4/200",
        userName: "Foodie Fiesta",
        userHandle: "@foodie",
        tweetSentAt: "10h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Trying out a new Mexican restaurant and loving the flavors 🥗",
        hashTag: "",
        tweetPhoto: "https://picsum.photos/id/62/350/200",
        numberOfComments: "1",
        numberOfLikes: "3"),
    
    ForYouTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/15/200",
        userName: "Awo Yaa",
        userHandle: "@awoyaa",
        tweetSentAt: "15h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "What is $0 in Swift? 👩‍💻",
        hashTag: "#Swift #SwiftUI",
        tweetPhoto: "https://picsum.photos/id/18/350/200",
        numberOfComments: "70",
        numberOfLikes: "123")
]

public let FollowingTweetData = [
    FollowingTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/129/200",
        userName: "Fintelligence",
        userHandle: "@TechGuru1",
        tweetSentAt: "30 min",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "The future is here and it's all about Artificial Intelligence and MachineLearning 👩‍🏫",
        hashTag: "#Tech",
        numberOfComments: "1",
        numberOfLikes: "2"),
    
    FollowingTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/137/200",
        userName: "Thailand Lovers",
        userHandle: "@travel-girl",
        tweetSentAt: "1h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Exploring the beautiful beaches of Thailand and loving every minute of it",
        hashTag: "",
        numberOfComments: "1",
        numberOfLikes: "2"),
    
    FollowingTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/106/200",
        userName: "Oma Picsum Kuva",
        userHandle: "@Fitness1",
        tweetSentAt: "5h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Beginning my day with a 5k run and feeling energized 🏃🏾‍♂️",
        hashTag: "#fitness",
        numberOfComments: "1",
        numberOfLikes: "2"),
    
    FollowingTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/6/200",
        userName: "Tuntematon Potilas",
        userHandle: "@MusicLover",
        tweetSentAt: "10h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Listening to my favorite band's new album on repeat. It's amazing music🎻",
        hashTag: "",
        numberOfComments: "1",
        numberOfLikes: "2"),
    
    FollowingTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/254/200",
        userName: "Kirjan Mies",
        userHandle: "@bookworm",
        tweetSentAt: "11h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Just finished reading the latest bestseller and I am blown away by the author's storytelling skills",
        hashTag: "",
        numberOfComments: "5",
        numberOfLikes: "10"),
    
    FollowingTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/33/200",
        userName: "Pet Parent",
        userHandle: "@petParent",
        tweetSentAt: "15h",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Spending the afternoon playing with my furry best friend 🥰",
        hashTag: "#petsparent",
        numberOfComments: "42",
        numberOfLikes: "458"),
    
    FollowingTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/44/200",
        userName: "Foodie Fiesta",
        userHandle: "@foodie",
        tweetSentAt: "1 day",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "Trying out a new Mexican restaurant and loving the flavors",
        hashTag: "",
        numberOfComments: "1",
        numberOfLikes: "3"),
    
    FollowingTweetsStructure(
        userProfilePhoto: "https://picsum.photos/id/267/200",
        userName: "Awo Yaa",
        userHandle: "@awoyaa",
        tweetSentAt: "2 days",
        actionsMenuIcon: "ellipsis.circle",
        tweetSummary: "What is $0 in Swift?",
        hashTag: "#Swift #SwiftUI",
        numberOfComments: "70",
        numberOfLikes: "123")
]



