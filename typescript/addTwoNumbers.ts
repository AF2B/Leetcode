class ListNode {
  val: number;
  next: ListNode | null;
  constructor(val?: number, next?: ListNode | null) {
    this.val = val ?? 0;
    this.next = next ?? null;
  }
}

function listNodeToArray(node: ListNode | null): number[] {
  const result: number[] = [];
  while (node) {
    result.push(node.val);
    node = node.next;
  }
  return result;
}

function arrayToListNode(arr: number[]): ListNode | null {
  if (arr.length === 0) return null;
  const head = new ListNode(arr[0]);
  let current = head;
  for (let i = 1; i < arr.length; i++) {
    current.next = new ListNode(arr[i]);
    current = current.next;
  }
  return head;
}

function addTwoNumbers(
  l1: ListNode | null,
  l2: ListNode | null
): ListNode | null {
  const arr1 = listNodeToArray(l1);
  const arr2 = listNodeToArray(l2);

  const result: number[] = [];
  let carry = 0;
  let i = 0;

  while (i < arr1.length || i < arr2.length || carry > 0) {
    const digit1 = i < arr1.length ? arr1[i] : 0;
    const digit2 = i < arr2.length ? arr2[i] : 0;

    const sum = digit1 + digit2 + carry;
    result.push(sum % 10);
    carry = Math.floor(sum / 10);
    i++;
  }

  return arrayToListNode(result);
}
