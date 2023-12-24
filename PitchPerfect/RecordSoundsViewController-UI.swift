import UIKit
import AVFoundation

extension RecordSoundsViewController {
    
    //MARK: - Configuring UI functions
    func configureUi(isRecording: Bool){
        recordingLabel.text = isRecording ? "Recording in Progress" : "Tap to record"
        stopRecordingButton.isEnabled = isRecording
        recordButton.isEnabled = !isRecording
    }
    
    //MARK: - Audio Manipulation Functions
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            performSegue(withIdentifier: "stopRecording", sender: audioRecorder.url)
        } else {
            print("recording was not successfull")
        }
    }
}
