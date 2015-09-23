//
//  OAuthSettings.swift
//  OAuthExample
//
//  Created by Glenn Keighley on 9/22/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import Foundation
import p2_OAuth2


struct OAuthSettings{
    let settings = [
        "client_id": "53e934f1aa8ab276f003",
        "client_secret": "88b6ee25735548eb57c5b4297a8785bd962afa6f",
        "authorize_uri": "https://github.com/login/oauth/authorize",
       "token_uri": "https://github.com/login/oauth/access_token",
        //"scope": "user",
        "redirect_uris": ["com.Epocrates.OAuthExample://"],   // don't forget to register this scheme
        "keychain": false,     // if you DON'T want keychain integration
        "title": "GitHub OAuthExample Service",  // optional title to show in views
        "secret_in_body":true,
        "verbose": true
        ]
}


class OAuthSingleton {
    static let sharedInstance = OAuthSingleton()
    
    let settingsInstance = OAuthSettings()
    var oauth2:OAuth2CodeGrant?
    
    init(){
        oauth2 = OAuth2CodeGrant(settings:settingsInstance.settings )
    }
    

}