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

import XCTest

@testable import AndroidAutoConnectedDeviceTransport

/// Fake peripheral for testing generic transport.
@available(iOS 12.0, *)
public final class FakePeripheral: TransportPeripheral {
  public typealias DiscoveryContext = Any

  public let id = UUID()
  public var onStatusChange: ((PeripheralStatus) -> Void)? = nil
  public var displayName = "abc"
  public var isConnected = false

  public var status = PeripheralStatus.discovered {
    didSet {
      onStatusChange?(status)
    }
  }

  public init() {}
}
