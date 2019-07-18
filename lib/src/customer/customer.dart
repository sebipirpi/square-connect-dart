import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/customer/customer-enums-converter.dart';
import 'package:square_connect/src/shared-enums-converter.dart';
import 'package:uuid/uuid.dart';

import '../helper-classes.dart';

/// An object containing all methods for the Customers API. Retrieve this object with `SquareConnect.instance.customersApi`.
class CustomersApi {
  final String _token;
  final Client _client;

  CustomersApi(this._token, this._client);

  /// Creates a customer with a business. Must provide at least one of: `given_name`, `family_name`, `company_name`, `email_address`, `phone_number`
  Future<CreateCustomerResponse> createCustomer({
    /// The given name (or first name) for the new [Customer].
    String givenName,

    /// The family name (or last name) for the new [Customer].
    String familyName,

    /// The company name for the new [Customer].
    String companyName,

    /// The nickname for the new [Customer].
    String nickname,

    /// The email address for the new [Customer].
    String emailAddress,

    /// The phone number for the new [Customer].
    String phoneNumber,

    /// The external reference id (from alternate system) for the new [Customer].
    String referenceId,

    /// The note for the new [Customer].
    String note,

    /// The new [Customer]'s birthday.
    DateTime birthday,

    /// The Address for the new [Customer].
    Address address,

    /// The idempotency key for the request to prevent duplicates of the same call. This will be set if let null, but set it if you are worried about calling this method multiple times.
    String idempotencyKey,
  }) async {
    Map<String, dynamic> body = {};

    if (givenName != null) body['given_name'] = givenName;
    if (familyName != null) body['family_name'] = familyName;
    if (companyName != null) body['company_name'] = companyName;
    if (nickname != null) body['nickname'] = nickname;
    if (emailAddress != null) body['email_address'] = emailAddress;
    if (address != null) body['address'] = address.toJson();
    if (phoneNumber != null) body['phone_number'] = phoneNumber;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (note != null) body['note'] = note;
    if (birthday != null) body['birthday'] = birthday.toUtc().toIso8601String();
    if (idempotencyKey != null) body['idempotency_key'] = idempotencyKey;
    if (body['idempotency_key'] == null) body['idempotency_key'] = Uuid().v4();

    var obj = RequestObj(
      token: _token,
      path: '/v2/customers',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );
    var response = await obj.makeCall();
    return CreateCustomerResponse.fromJson(json.decode(response.body));
  }

  /// Creates a new [Card] on file for a given customer. Card entry must come from Reader SDK or In App Payments SDK, which are both avalible for Flutter.
  Future<CreateCustomerCardResponse> createCustomerCard({
    /// The id of the [Customer] this [Card] will be added to.
    @required String customerId,

    /// The card nonce representing the new [Card]. This is genreated from the SqPaymentForm.
    String cardNonce,

    /// The billing address for the new [Card].
    Address billingAddress,

    /// The cardholder's name for the new [Card].
    String cardholderName,

    /// An identifying token generated by SqPaymentForm.verifyBuyer(). Verification tokens encapsulate customer device information and 3-D Secure challenge results to indicate that Square has verified the buyer identity.
    String verificationToken,
  }) async {
    Map<String, dynamic> body = {};

    if (cardNonce != null) body['card_nonce'] = cardNonce;
    if (billingAddress != null) body['billing_address'] = billingAddress;
    if (cardholderName != null) body['cardholder_name'] = cardholderName;
    if (verificationToken != null)
      body['verification_token'] = verificationToken;

    var obj = RequestObj(
      token: _token,
      path: '/v2/customers/$customerId/cards',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );
    var response = await obj.makeCall();
    return CreateCustomerCardResponse.fromJson(json.decode(response.body));
  }

  /// Deletes a [Customer] specified by the `customerId`
  Future<DeleteCustomerResponse> deleteCustomer({
    /// The customer id of the [Customer] to be deleted.
    @required String customerId,
  }) async {
    if (customerId == null) throw ArgumentError('customerId must not be null');
    var obj = RequestObj(
      token: _token,
      path: '/v2/customers/$customerId',
      method: RequestMethod.delete,
      client: _client,
    );

    var response = await obj.makeCall();
    return DeleteCustomerResponse.fromJson(json.decode(response.body));
  }

  /// Deletes a [Customer]'s [Card] on file.
  Future<DeleteCustomerCardResponse> deleteCustomerCard(
      {

      /// The id of the [Customer] the [Card] belongs to.
      String customerId,

      /// The id of the [Card] to be deleted.
      String cardId}) async {
    if (customerId == null) throw ArgumentError('customerId must not be null');
    if (cardId == null) throw ArgumentError('cardId must not be null');
    var obj = RequestObj(
      token: _token,
      path: '/v2/customers/$customerId/cards/$cardId',
      method: RequestMethod.delete,
      client: _client,
    );

    var response = await obj.makeCall();
    return DeleteCustomerCardResponse.fromJson(json.decode(response.body));
  }

  /// Lists a businesses [Customer]s.
  Future<ListCustomersResponse> listCustomers({
    /// A pagination cursor returned by a previous call.
    String cursor,

    /// The field the [Customer]s should be sorted on.
    CustomerSortField sortField,

    /// The order the [Customer]s should be sorted on.
    SortOrder sortOrder,
  }) async {
    List<QueryParam> queryParams = [];
    if (sortOrder != null)
      queryParams
          .add(QueryParam('sort_order', getStringFromSortOrder(sortOrder)));
    if (sortField != null)
      queryParams.add(
          QueryParam('sort_field', getStringFromCustomerSortField(sortField)));

    var obj = RequestObj(
      token: _token,
      cursor: cursor,
      path: '/v2/customers',
      method: RequestMethod.get,
      client: _client,
      queryParams: queryParams,
    );

    var response = await obj.makeCall();
    return ListCustomersResponse.fromJson(json.decode(response.body));
  }

  /// Retrieves a [Customer] from a specified `customerId`.
  Future<RetrieveCustomerResponse> retrieveCustomer({
    /// The id of the [Customer] to be returned.
    @required String customerId,
  }) async {
    if (customerId == null) throw ArgumentError('customerId must not be null');

    var obj = RequestObj(
      token: _token,
      path: '/v2/customers/$customerId',
      method: RequestMethod.get,
      client: _client,
    );
    var response = await obj.makeCall();
    return RetrieveCustomerResponse.fromJson(json.decode(response.body));
  }

  /// Searches for customers meeting given criteria.
  Future<SearchCustomersResponse> searchCustomers({
    /// A pagination cursor returned by a previous call.
    String cursor,

    /// The limit of how many [Customer]s should be returned with a single call.
    int limit,

    /// The creation source used to filter customers.
    CustomerCreationSource creationSource,

    /// The starting time of customer creation time.
    DateTime createdAtStart,

    /// The ending time of customer creation time.
    DateTime createdAtEnd,

    /// The starting time of the last customer update.
    DateTime updatedAtStart,

    /// The ending time of the customer update.
    DateTime updatedAtEnd,

    /// THe field used to sort the [Customer]s.
    CustomerSortField sortField,

    /// The order to sort the [Customer]s.
    SortOrder sortOrder,
  }) async {
    Map<String, dynamic> body = {};

    if (cursor != null) body['cursor'] = cursor;
    if (limit != null) body['limit'] = limit;

    body['query'] = Map<String, dynamic>();
    if (createdAtStart != null ||
        createdAtEnd != null ||
        updatedAtStart != null ||
        updatedAtEnd != null ||
        creationSource != null)
      body['query']['filter'] = Map<String, dynamic>();
    if (createdAtStart != null || createdAtEnd != null)
      body['query']['filter']['created_at'] = Map<String, dynamic>();
    if (updatedAtStart != null || updatedAtEnd != null)
      body['query']['filter']['updated_at'] = Map<String, dynamic>();

    if (createdAtStart != null)
      body['query']['filter']['created_at']['start_at'] =
          createdAtStart.toUtc().toIso8601String();
    if (createdAtEnd != null)
      body['query']['filter']['created_at']['end_at'] =
          createdAtEnd.toUtc().toIso8601String();
    if (updatedAtStart != null)
      body['query']['filter']['updated_at']['start_at'] =
          updatedAtStart.toUtc().toIso8601String();
    if (updatedAtEnd != null)
      body['query']['filter']['updated_at']['end_at'] =
          updatedAtEnd.toUtc().toIso8601String();
    if (creationSource != null)
      body['query']['filter']['creation_source'] =
          getStringFromCustomerCreationSource(creationSource);

    if (sortField != null || sortOrder != null)
      body['query']['sort'] = Map<String, dynamic>();

    if (sortField != null)
      body['query']['sort']['field'] =
          getStringFromCustomerSortField(sortField);
    if (sortOrder != null)
      body['query']['sort']['order'] = getStringFromSortOrder(sortOrder);

    var obj = RequestObj(
      token: _token,
      path: '/v2/customers/search',
      method: RequestMethod.post,
      client: _client,
      body: body,
    );
    var response = await obj.makeCall();
    return SearchCustomersResponse.fromJson(json.decode(response.body));
  }

  /// Updates a [Customer] specified by the `customer id`.
  Future<UpdateCustomerResponse> updateCustomer({
    /// The id of the [Customer] to be updated.
    @required String customerId,

    /// The given name (or first name) to be set on the [Customer].
    String givenName,

    /// The family name (or last name) to be set on the [Customer].
    String familyName,

    /// The company name to be set on the [Customer].
    String companyName,

    /// The nickname to be set on the [Customer].
    String nickname,

    /// The email address to be set on the [Customer].
    String emailAddress,

    /// The physical address to be set on the [Customer].
    Address address,

    /// The phone number to be set on the [Customer].
    String phoneNumber,

    /// The external reference id (from an external system) to be set on the [Customer].
    String referenceId,

    /// The note to be set on the [Customer].
    String note,

    /// The birthday to be set on the [Customer].
    DateTime birthday,
  }) async {
    Map<String, dynamic> body = {};

    if (givenName != null) body['given_name'] = givenName;
    if (familyName != null) body['family_name'] = familyName;
    if (companyName != null) body['company_name'] = companyName;
    if (nickname != null) body['nickname'] = nickname;
    if (emailAddress != null) body['email_address'] = emailAddress;
    if (address != null) body['address'] = address.toJson();
    if (phoneNumber != null) body['phone_number'] = phoneNumber;
    if (referenceId != null) body['reference_id'] = referenceId;
    if (note != null) body['note'] = note;
    if (birthday != null) body['birthday'] = birthday.toUtc().toIso8601String();

    var obj = RequestObj(
      token: _token,
      path: '/v2/customers/$customerId',
      method: RequestMethod.put,
      client: _client,
      body: body,
    );
    var response = await obj.makeCall();
    return UpdateCustomerResponse.fromJson(json.decode(response.body));
  }
}
