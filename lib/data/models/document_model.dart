class DocumentModel {
  final int? id;
  final int? registrationId;
  final String? documentType;
  final String? filePath;
  final String? verificationStatus;

  DocumentModel({
    this.id,
    this.registrationId,
    this.documentType,
    this.filePath,
    this.verificationStatus,
  });
}