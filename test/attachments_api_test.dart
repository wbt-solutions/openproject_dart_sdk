import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for AttachmentsApi
void main() {
  var instance = AttachmentsApi();

  group('tests for AttachmentsApi', () {
    // Delete attachment
    //
    // Permanently deletes the specified attachment.
    //
    //Future apiV3AttachmentsIdDelete(int id) async 
    test('test apiV3AttachmentsIdDelete', () async {
      // TODO
    });

    // View attachment
    //
    //Future apiV3AttachmentsIdGet(int id) async 
    test('test apiV3AttachmentsIdGet', () async {
      // TODO
    });

    // List attachments
    //
    //Future apiV3WorkPackagesIdAttachmentsGet(int id) async 
    test('test apiV3WorkPackagesIdAttachmentsGet', () async {
      // TODO
    });

    // Add attachment
    //
    // To add an attachment to a work package, a client needs to issue a request of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` must be indicated in the `Content-Disposition` of this part, however it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.
    //
    //Future apiV3WorkPackagesIdAttachmentsPost(int id) async 
    test('test apiV3WorkPackagesIdAttachmentsPost', () async {
      // TODO
    });

  });
}
