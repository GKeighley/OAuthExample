//
//  OAuthSettings.swift
//  OAuthExample
//
//  Created by Glenn Keighley on 9/22/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import Foundation

//Permissions defined at:
//https://console.developers.google.com/project/oauthexample-1076/permissions/projectpermissions

//Assumes flow documented at:
//https://developers.google.com/identity/protocols/OAuth2InstalledApp

struct OAuthSettings{
    let settings = [
        "client_id": "841152855380-p3h6866h09djlgkvn4lriq5l49ilnv7j.apps.googleusercontent.com",
        "client_secret": "BxMPOuN4Ja3PQhOTLGWGxanw",
        "authorize_uri": "https://accounts.google.com/o/oauth2/auth",
//       "token_uri": "https://authorize.smartplatforms.org/token",
        "scope": "https://www.googleapis.com/auth/drive",
        "redirect_uris": ["OAuthExample://"],   // don't forget to register this scheme
        "keychain": false,     // if you DON'T want keychain integration
        "title": "OAuthExample Service"  // optional title to show in views
        ]
}