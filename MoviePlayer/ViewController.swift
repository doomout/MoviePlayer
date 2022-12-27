
import UIKit
import AVKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //내부 비디오 재생
    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        //비디오 파일명을 사용하여 비디오가 저장된 앱 내부의 파일 경로를 받아온다.
        let filePath:String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4")
        
        //앱 내부의 파일명을 NSURL형식으로 변경한다.
        let url = NSURL(fileURLWithPath: filePath!)
        
        playVideo(url: url)
    }
    
    private func playVideo(url: NSURL)
    {
        //인스턴스를 생성
        let playerController = AVPlayerViewController()
        
        //앞에서 얻은 비디오 url로 초기화 된 AVPlayer의 인스턴스를 생성한다.
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        //비디오를 재생한다.
        self.present(playerController, animated: true)
        {
            player.play()
        }
    }
    
    //외부 파일 영상
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/wZh4sZ-QjHc")!
        
        playVideo(url: url)
    }
}

