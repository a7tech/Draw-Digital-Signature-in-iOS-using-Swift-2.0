


import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var imgview: UIImageView!
    @IBOutlet weak var SignatureView: INSignatureView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Capture(sender: AnyObject) {
        let image:UIImage = SignatureView.getSignatureImage()
        imgview.image = image
        UIImageWriteToSavedPhotosAlbum(SignatureView.getSignatureImage(), nil, nil, nil)
    }
    @IBAction func Reset(sender: AnyObject) {
        SignatureView.clearSignature()
        imgview.image = nil
    }
}
