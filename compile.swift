import CoreML

let modelFiles = [
    "AudioEncoder.mlmodel",
    "MelSpectrogram.mlmodel",
    "TextDecoder.mlmodel"
]

let modelPath = "/Users/eawlot3000/cherish/WhisperKit/Models/whisperkit-coreml/openai_whisper-large-v2"

for file in modelFiles {
    let modelURL = URL(fileURLWithPath: "\(modelPath)/\(file)")
    do {
        let compiledModelURL = try MLModel.compileModel(at: modelURL)
        print("Model compiled at: \(compiledModelURL.path)")
    } catch {
        print("Failed to compile model \(file): \(error.localizedDescription)")
    }
}

