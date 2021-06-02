///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'data.pb.dart' as $0;
export 'data.pb.dart';

class DonorPatientsClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$0.Util, $0.User>(
      '/pb.DonorPatients/CreateUser',
      ($0.Util value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.Util, $0.User>(
      '/pb.DonorPatients/Login',
      ($0.Util value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$0.Util, $0.StatusSuccessful>(
      '/pb.DonorPatients/DeleteUser',
      ($0.Util value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatusSuccessful.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$0.Util, $0.User>(
      '/pb.DonorPatients/UpdateUser',
      ($0.Util value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$0.Util, $0.User>(
      '/pb.DonorPatients/GetUser',
      ($0.Util value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getAllDonors = $grpc.ClientMethod<$0.Util, $0.User>(
      '/pb.DonorPatients/GetAllDonors',
      ($0.Util value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getAllPatients = $grpc.ClientMethod<$0.Util, $0.User>(
      '/pb.DonorPatients/GetAllPatients',
      ($0.Util value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$sendRequest = $grpc.ClientMethod<$0.Util, $0.StatusSuccessful>(
      '/pb.DonorPatients/SendRequest',
      ($0.Util value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatusSuccessful.fromBuffer(value));
  static final _$acceptRequest =
      $grpc.ClientMethod<$0.Util, $0.StatusSuccessful>(
          '/pb.DonorPatients/AcceptRequest',
          ($0.Util value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.StatusSuccessful.fromBuffer(value));
  static final _$cancelRequest =
      $grpc.ClientMethod<$0.Util, $0.StatusSuccessful>(
          '/pb.DonorPatients/CancelRequest',
          ($0.Util value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.StatusSuccessful.fromBuffer(value));
  static final _$cancelConnection =
      $grpc.ClientMethod<$0.Util, $0.StatusSuccessful>(
          '/pb.DonorPatients/CancelConnection',
          ($0.Util value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.StatusSuccessful.fromBuffer(value));

  DonorPatientsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> createUser($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> login($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatusSuccessful> deleteUser($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> updateUser($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> getUser($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseStream<$0.User> getAllDonors($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAllDonors, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.User> getAllPatients($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAllPatients, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.StatusSuccessful> sendRequest($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatusSuccessful> acceptRequest($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatusSuccessful> cancelRequest($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatusSuccessful> cancelConnection($0.Util request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelConnection, request, options: options);
  }
}

abstract class DonorPatientsServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.DonorPatients';

  DonorPatientsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Util, $0.User>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.User>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.StatusSuccessful>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.StatusSuccessful value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.User>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.User>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.User>(
        'GetAllDonors',
        getAllDonors_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.User>(
        'GetAllPatients',
        getAllPatients_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.StatusSuccessful>(
        'SendRequest',
        sendRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.StatusSuccessful value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.StatusSuccessful>(
        'AcceptRequest',
        acceptRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.StatusSuccessful value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.StatusSuccessful>(
        'CancelRequest',
        cancelRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.StatusSuccessful value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Util, $0.StatusSuccessful>(
        'CancelConnection',
        cancelConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Util.fromBuffer(value),
        ($0.StatusSuccessful value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> createUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return createUser(call, await request);
  }

  $async.Future<$0.User> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return login(call, await request);
  }

  $async.Future<$0.StatusSuccessful> deleteUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$0.User> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.User> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return getUser(call, await request);
  }

  $async.Stream<$0.User> getAllDonors_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async* {
    yield* getAllDonors(call, await request);
  }

  $async.Stream<$0.User> getAllPatients_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async* {
    yield* getAllPatients(call, await request);
  }

  $async.Future<$0.StatusSuccessful> sendRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return sendRequest(call, await request);
  }

  $async.Future<$0.StatusSuccessful> acceptRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return acceptRequest(call, await request);
  }

  $async.Future<$0.StatusSuccessful> cancelRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return cancelRequest(call, await request);
  }

  $async.Future<$0.StatusSuccessful> cancelConnection_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Util> request) async {
    return cancelConnection(call, await request);
  }

  $async.Future<$0.User> createUser($grpc.ServiceCall call, $0.Util request);
  $async.Future<$0.User> login($grpc.ServiceCall call, $0.Util request);
  $async.Future<$0.StatusSuccessful> deleteUser(
      $grpc.ServiceCall call, $0.Util request);
  $async.Future<$0.User> updateUser($grpc.ServiceCall call, $0.Util request);
  $async.Future<$0.User> getUser($grpc.ServiceCall call, $0.Util request);
  $async.Stream<$0.User> getAllDonors($grpc.ServiceCall call, $0.Util request);
  $async.Stream<$0.User> getAllPatients(
      $grpc.ServiceCall call, $0.Util request);
  $async.Future<$0.StatusSuccessful> sendRequest(
      $grpc.ServiceCall call, $0.Util request);
  $async.Future<$0.StatusSuccessful> acceptRequest(
      $grpc.ServiceCall call, $0.Util request);
  $async.Future<$0.StatusSuccessful> cancelRequest(
      $grpc.ServiceCall call, $0.Util request);
  $async.Future<$0.StatusSuccessful> cancelConnection(
      $grpc.ServiceCall call, $0.Util request);
}
