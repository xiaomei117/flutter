enum ServiceType {
  serviceTypeNone,
  serviceTypeText,
  serviceTypeAudio,
  serviceTypeVideo,
  serviceTypeTextCall,
  serviceTypeAudioCall,
  serviceTypeVideoCall,
}

class Strings{
  static const String textServiceTitle = 'Text Reading';
  static const String audioServiceTitle = 'Audio Reading';
  static const String videoServiceTitle = 'Video Reading';
  static const String liveTextChat = 'Live Text Chat';
  static const String liveAudioChat = 'Live Audio Chat';
  static const String liveVideoChat = 'Live Video Chat';
  final int type;

  Strings(this.type);

  String title() {
    switch (ServiceType.values[type]) {
      case ServiceType.serviceTypeText:
        {
          return Strings.textServiceTitle;
        }
      case ServiceType.serviceTypeAudio:
        {
          return Strings.audioServiceTitle;
        }
      case ServiceType.serviceTypeVideo:
        {
          return Strings.videoServiceTitle;
        }
      case ServiceType.serviceTypeTextCall:
        {
          return Strings.liveTextChat;
        }
      case ServiceType.serviceTypeAudioCall:
        {
          return Strings.liveAudioChat;
        }
      case ServiceType.serviceTypeVideoCall:
        {
          return Strings.liveVideoChat;
        }
      default:
        return '';
    }
  }
}
