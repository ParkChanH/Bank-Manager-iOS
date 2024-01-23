//
//  QueueTests.swift
//  QueueTests
//
//  Created by 박찬호 on 1/24/24.
//

import XCTest
@testable import BankManagerConsoleApp

final class QueueTests: XCTestCase {

    func test큐_작업_확인() {
        let queue = Queue<String>()

        // Enqueue 테스트
        queue.enqueue("고객1")
        queue.enqueue("고객2")
        
        // 비어있는지 확인
        XCTAssertFalse(queue.isEmpty)

        // 디큐 테스트
        XCTAssertEqual(queue.dequeue(), "고객1")
        XCTAssertEqual(queue.dequeue(), "고객2")

        // 큐가 비어있는지 확인
        XCTAssertTrue(queue.isEmpty)

        // 클리어 테스트
        queue.enqueue("고객3")
        queue.clear()
        XCTAssertTrue(queue.isEmpty)
    }

    // 성능 테스트 케이스 (필요한 경우)
    func testPerformanceExample() throws {

    }
}
