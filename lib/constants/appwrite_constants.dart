class AppwriteConstants {
  static const String databaseId = '64db403b1a782694d5b6';
  static const String projectId = '64db374ce1365d6311c8';
  static const String endPoint = 'http://172.31.48.1/v1';

  static const String usersCollection = '64db724e3ff7746f0fbb';
  static const String tweetsCollection = '64db7f2291a391d360e9';
  static const String notificationsCollection = '64db9ec9aeb680a50b69';

  static const String imagesBucket = '64db85dacc2132efb7af';

  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
