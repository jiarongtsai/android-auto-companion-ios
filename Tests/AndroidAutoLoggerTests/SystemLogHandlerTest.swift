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
import os.log

@testable import AndroidAutoLogger

/// Unit tests for the `SystemLogHandler`.
@available(iOS 10.0, *)
class SystemLogHandlerTest: XCTestCase {
  public func testOSLogTypeConversions() {
    XCTAssertEqual(Logger.Level.debug.osLogType, OSLogType.debug)
    XCTAssertEqual(Logger.Level.info.osLogType, OSLogType.info)
    XCTAssertEqual(Logger.Level.standard.osLogType, OSLogType.default)
    XCTAssertEqual(Logger.Level.error.osLogType, OSLogType.error)
    XCTAssertEqual(Logger.Level.fault.osLogType, OSLogType.fault)
  }
}
