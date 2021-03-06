/*
 *  Copyright 2019 Google LLC. All Rights Reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

import Foundation

/// Objects conforming to this protocol can observe an operation by receiving calls when the
/// operation starts, finishes or spawns a new operation.
public protocol OperationObserver {
  /// Informs the observer the operation started.
  ///
  /// - Parameter operation: The operation that started.
  func operationDidStart(_ operation: GSJOperation)

  /// Informs the observer the operation spawned a new operation.
  ///
  /// - Parameters:
  ///   - operation: The operation that started.
  ///   - newOperation: The newly spawned operation.
  func operation(_ operation: GSJOperation, didSpawnOperation newOperation: Operation)

  /// Informs the observer the operation finished.
  ///
  /// - Parameters:
  ///   - operation: The operation that finished.
  ///   - errors: An array of errors generated by the operation, if any.
  func operationDidFinish(_ operation: GSJOperation, withErrors errors: [Error])
}
