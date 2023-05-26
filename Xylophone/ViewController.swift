import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnKeyPressed(_ sender: UIButton) {
        let title = sender.title(for: .selected)!
        //print(title)
        
        let audioSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: title, ofType: "wav")!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioSound as URL)
              audioPlayer.prepareToPlay()
        } catch {
            print("Problem in getting File")
        }
        audioPlayer.play()
    }
    
}

