//
//  BankManager.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class Queue<T> {
    private var bankQueue = LinkedList<T>()
    
    /// 큐가 비어 있는지 확인
    public var isEmpty: Bool {
        return bankQueue.isEmpty
    }
    
    /// 큐에 요소를 추가
    public func enqueue(_ element: T) {
        bankQueue.append(data: element)
    }
    
    /// 큐에서 첫 번째 요소를 제거하고 반환
    public func dequeue() -> T? {
        guard let firstNode = bankQueue.dequeue() else { return nil }
        return firstNode.data
    }
    
    /// 큐의 모든 요소를 제거
    public func clear() {
        bankQueue.clear()
    }

    // LinkedList 내의 개별 요소나타냄
    private class Node<U> {
        var data: U
        var next: Node<U>?

        init(data: U, next: Node<U>? = nil) {
            self.data = data
            self.next = next
        }
    }

    // LinkedList 클래스는 Queue를 구현하기 위한 연결 리스트
    private class LinkedList<U> {
        private var head: Node<U>?
        
        /// 리스트가 비어 있는지 확인
        var isEmpty: Bool {
            return head == nil
        }

        /// 리스트의 끝에 새로운 요소를 추가
        func append(data: U) {
            if head == nil {
                head = Node(data: data)
                return
            }

            var node = head
            while let nextNode = node?.next {
                node = nextNode
            }
            node?.next = Node(data: data)
        }

        /// 리스트의 첫 번째 요소를 제거
        func dequeue() -> Node<U>? {
            let firstNode = head
            head = head?.next
            return firstNode
        }

        /// 리스트의 모든 요소를 제거
        func clear() {
            head = nil
        }
    }
}
