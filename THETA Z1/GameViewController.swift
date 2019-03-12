//
//  GameViewController.swift
//  THETA Z1
//
//  Created by Toshihiro Goto on 2019/03/05.
//  Copyright © 2019 Toshihiro Goto. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    @IBOutlet weak var scnView: SCNView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a new scene
        let scene = SCNScene(named: "main.scn")!

        // retrieve the SCNView
        //let scnView = self.view as! SCNView
        
        // set the scene to the view
        scnView.scene = scene
        
        // allows the user to manipulate the camera
        scnView.allowsCameraControl = true
        
        // show statistics such as fps and timing information
        scnView.showsStatistics = true
        
        // configure the view
        scnView.backgroundColor = UIColor.black
        
    }
    
    @IBAction func selectImage(_ sender: UISegmentedControl) {
        let bg: UIImage?
        
        switch sender.selectedSegmentIndex {
        case 0:
            bg = UIImage(named:"001.JPG")
        case 1:
            bg = UIImage(named:"002.JPG")
        case 2:
            bg = UIImage(named:"003.JPG")
        case 3:
            bg = UIImage(named:"004.JPG")
        case 4:
            bg = UIImage(named:"005.JPG")
        case 5:
            bg = UIImage(named:"006.JPG")
        default:
            bg = nil
        }
        
        scnView.scene?.background.contents = bg
        scnView.scene?.lightingEnvironment.contents = bg
        
//        print("fieldOfView: \(String(describing: scnView.pointOfView?.camera?.fieldOfView))")
//        print("focalLength: \(String(describing: scnView.pointOfView?.camera?.focalLength))")
//        print("sensorHeight: \(String(describing: scnView.pointOfView?.camera?.sensorHeight))")
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

}
