//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AttachmentsApi
void main() {
  // final instance = AttachmentsApi();

  group('tests for AttachmentsApi', () {
    // Add attachment to post
    //
    // Adds an attachment with the post as it's container.
    //
    //Future addAttachmentToPost(int id) async
    test('test addAttachmentToPost', () async {
      // TODO
    });

    // Add attachment to wiki page
    //
    // Adds an attachment with the wiki page as it's container.
    //
    //Future addAttachmentToWikiPage(int id) async
    test('test addAttachmentToWikiPage', () async {
      // TODO
    });

    // Create Attachment
    //
    // Clients can create attachments without a container first and attach them later on. This is useful if the container does not exist at the time the attachment is uploaded. After the upload, the client can then claim such containerless attachments for any resource eligible (e.g. WorkPackage) on subsequent requests. The upload and the claiming *must* be done for the same user account. Attachments uploaded by another user cannot be claimed and once claimed for a resource, they cannot be claimed by another.  The upload request must be of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` *must* be indicated in the `Content-Disposition` of this part, although it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.
    //
    //Future<AttachmentModel> createAttachment() async
    test('test createAttachment', () async {
      // TODO
    });

    // Create work package attachment
    //
    // To add an attachment to a work package, a client needs to issue a request of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` must be indicated in the `Content-Disposition` of this part, however it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.
    //
    //Future<AttachmentModel> createWorkPackageAttachment(int id) async
    test('test createWorkPackageAttachment', () async {
      // TODO
    });

    // Delete attachment
    //
    // Permanently deletes the specified attachment.
    //
    //Future deleteAttachment(int id) async
    test('test deleteAttachment', () async {
      // TODO
    });

    // List attachments by post
    //
    // 
    //
    //Future<AttachmentsModel> listAttachmentsByPost(int id) async
    test('test listAttachmentsByPost', () async {
      // TODO
    });

    // List attachments by wiki page
    //
    // 
    //
    //Future<AttachmentsModel> listAttachmentsByWikiPage(int id) async
    test('test listAttachmentsByWikiPage', () async {
      // TODO
    });

    // List attachments by work package
    //
    // 
    //
    //Future<AttachmentsModel> listWorkPackageAttachments(int id) async
    test('test listWorkPackageAttachments', () async {
      // TODO
    });

    // View attachment
    //
    // 
    //
    //Future<AttachmentModel> viewAttachment(int id) async
    test('test viewAttachment', () async {
      // TODO
    });

  });
}
