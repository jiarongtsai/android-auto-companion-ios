// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: third_party/companion_protos/intent.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Com_Google_Companionprotos_RemoteIntent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var notificationTitle: String = String()

  public var notificationContent: String = String()

  public var action: String = String()

  public var uri: String = String()

  public var packageName: String = String()

  public var flags: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "com.google.companionprotos"

extension Com_Google_Companionprotos_RemoteIntent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RemoteIntent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "notification_title"),
    2: .standard(proto: "notification_content"),
    3: .same(proto: "action"),
    4: .same(proto: "uri"),
    5: .standard(proto: "package_name"),
    6: .same(proto: "flags"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.notificationTitle) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.notificationContent) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.action) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.uri) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.packageName) }()
      case 6: try { try decoder.decodeSingularInt32Field(value: &self.flags) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.notificationTitle.isEmpty {
      try visitor.visitSingularStringField(value: self.notificationTitle, fieldNumber: 1)
    }
    if !self.notificationContent.isEmpty {
      try visitor.visitSingularStringField(value: self.notificationContent, fieldNumber: 2)
    }
    if !self.action.isEmpty {
      try visitor.visitSingularStringField(value: self.action, fieldNumber: 3)
    }
    if !self.uri.isEmpty {
      try visitor.visitSingularStringField(value: self.uri, fieldNumber: 4)
    }
    if !self.packageName.isEmpty {
      try visitor.visitSingularStringField(value: self.packageName, fieldNumber: 5)
    }
    if self.flags != 0 {
      try visitor.visitSingularInt32Field(value: self.flags, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Google_Companionprotos_RemoteIntent, rhs: Com_Google_Companionprotos_RemoteIntent) -> Bool {
    if lhs.notificationTitle != rhs.notificationTitle {return false}
    if lhs.notificationContent != rhs.notificationContent {return false}
    if lhs.action != rhs.action {return false}
    if lhs.uri != rhs.uri {return false}
    if lhs.packageName != rhs.packageName {return false}
    if lhs.flags != rhs.flags {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
