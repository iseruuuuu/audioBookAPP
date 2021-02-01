   
   import UIKit
   import AVFoundation
   
   class SpeechService {
    
    private let synthesizer = AVSpeechSynthesizer()
    var rate: Float = AVSpeechUtteranceDefaultSpeechRate
    var voice = AVSpeechSynthesisVoice(language: "ja_JP")
    
    func say(_ phrase: String) {
        let utterance = AVSpeechUtterance(string: phrase)
        utterance.rate = rate
        utterance.voice = voice
        utterance.pitchMultiplier = 0.8
        
        synthesizer.speak(utterance)
    }
    
    func stop() {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
    }
    
   }
