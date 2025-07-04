/* Copyright (c) 2016 Google Inc.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import GoogleMaps
import UIKit

// Change this key to a valid key registered with the demo app bundle id.
let mapsAPIKey = ""

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    if mapsAPIKey.isEmpty {
      fatalError("Please provide an API Key using mapsAPIKey")
    }
    GMSServices.provideAPIKey(mapsAPIKey)
    GMSServices.addInternalUsageAttributionID("gmp_git_iosmapsutils_v6.2.0")
    let masterViewController = MasterViewController()
    let navigationController = UINavigationController(rootViewController: masterViewController)
    window?.rootViewController = navigationController
    return true
  }
}

