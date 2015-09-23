//
//  ViewController.swift
//  OAuthExample
//
//  Created by Glenn Keighley on 9/22/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import UIKit
import p2_OAuth2


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapAuthorize(sender: AnyObject) {
        let settingsInstance = OAuthSettings();
        let oauth2 = OAuth2CodeGrant(settings:settingsInstance.settings )
        oauth2.onAuthorize = { parameters in
            print("Did authorize with parameters: \(parameters)")
        }
        oauth2.onFailure = { error in        // `error` is nil on cancel
            if nil != error {
                print("Authorization went wrong: \(error!.localizedDescription)")
            }
        }
        oauth2.authConfig.authorizeEmbedded = true
        oauth2.authConfig.authorizeContext = self
        // see **Advanced Settings** for more options
        oauth2.authorize()
    }

}

