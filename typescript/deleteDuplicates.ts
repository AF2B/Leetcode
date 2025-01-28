class ListNode {
    val: number;
    next: ListNode | null;
    
    constructor(val?: number, next?: ListNode | null) {
        this.val = val === undefined ? 0 : val;
        this.next = next === undefined ? null : next;
    }
}

const auxRemoveDuplicates = (node: ListNode | null): ListNode | null => {
    if (!node?.next) {
        return node;
    }

    const valueToRemove: number = node.val;

    while (node.next && node.next.val === valueToRemove) {
        node.next = node.next.next;
    }
    
    return node;
};

const deleteDuplicates = (head: ListNode | null): ListNode | null => {
    if (!head?.next) {
        return head;
    }

    let current: ListNode | null = head;
    
    while (current?.next) {
        if (current.val === current.next.val) {
            current = auxRemoveDuplicates(current);
        } else {
            current = current.next;
        }
    }
    
    return head;
};
