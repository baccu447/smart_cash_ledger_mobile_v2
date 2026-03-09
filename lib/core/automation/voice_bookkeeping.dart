import 'dart:async';

class VoiceBookkeeper {
  // late final SpeechToText _speechToText;
  bool _isListening = false;
  String _lastRecognizedWords = '';

  Future<void> initSpeech() async {
    // _speechToText = SpeechToText();
    // await _speechToText.initialize();
    print('Speech to text initialized');
  }

  void startListening(Function(String) onResult) {
    _isListening = true;
    // _speechToText.listen(onResult: (result) {
    //   _lastRecognizedWords = result.recognizedWords;
    //   onResult(_lastRecognizedWords);
    // });
    print('Started listening...');
    
    // Simulating voice recognition callback
    Future.delayed(const Duration(seconds: 2), () {
      onResult('৫০০ টাকা চাল কেনা');
    });
  }

  void stopListening() {
    _isListening = false;
    // _speechToText.stop();
    print('Stopped listening');
  }

  Future<Map<String, dynamic>> parseVoiceInput(String text) async {
    // E.g., send the text to Gemini or parse using local NLP logic to extract amount, category.
    // "৫০০ টাকা চাল কেনা" -> 500 BDT, Expense, Groceries
    return {
      'amount': 500,
      'type': 'expense',
      'category': 'Groceries',
      'note': 'চাল কেনা'
    };
  }
}