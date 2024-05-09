
class HashNode<K, V> {
  K key;
  V value;
  int hashCode;
  HashNode<K, V>? next;
  HashNode(K key, V value, int hashCode)
      : this.key = key,
        this.value = value,
        this.hashCode = hashCode;
}

class HashTable<K, V> {
  late List<HashNode<K, V>?> bucketArray;
  late int numBuckets;
  late int size;

  HashTable() {
    bucketArray = [];
    numBuckets = 100;
    size = 0;
    for (int i = 0; i < numBuckets; i++) {
      bucketArray.add(null);
    }
  }
  int sizes() {
    return size;
  }

  bool isEmpty() {
    return sizes() == 0;
  }

  int hashCodes(K key) {
    return Object.hashAll([key]);
  }

  int getBucketIndex(K key) {
    // int hashCode = hashCode(key);
    int hashCode = hashCodes(key);
    int index = hashCode % numBuckets;
    // key.hashCode() could be negative.
    index = index < 0 ? index * -1 : index;
    return index;
  }

  V? remove(K key) {
    // Apply hash function to find index for given key
    int bucketIndex = getBucketIndex(key);
    int hashCode = hashCodes(key);
    // Get head of chain
    HashNode<K, V>? head = bucketArray.elementAt(bucketIndex);

    // Search for key in its chain
    HashNode<K, V>? prev = null;
    while (head != null) {
      // If Key found
      if (head.key == key && hashCode == head.hashCode) break;

      // Else keep moving in chain
      prev = head;
      head = head.next;
    }

    // If key was not there
    if (head == null) return null;

    // Reduce size
    size--;

    // Remove key
    if (prev != null)
      prev.next = head.next;
    else
      bucketArray.insert(bucketIndex, head.next);

    return head.value;
  }

  V? getKey(K key) {
    // Find head of chain for given key
    int bucketIndex = getBucketIndex(key);
    int hashCode = hashCodes(key);

    HashNode<K, V>? head = bucketArray.elementAt(bucketIndex);

    // Search key in chain
    while (head != null) {
      if (head.key == key && head.hashCode == hashCode) return head.value;
      head = head.next;
    }

    // If key not found
    print("KeyAt ${key}");
    return null;
  }

  void add(K key, V value) {
    // Find head of chain for given key
    int bucketIndex = getBucketIndex(key);
    int hashCode = hashCodes(key);
    HashNode<K, V>? head = bucketArray.elementAt(bucketIndex);

    // Check if key is already present
    while (head != null) {
      if (head.key == key && head.hashCode == hashCode) {
        head.value = value;
        return;
      }
      head = head.next;
    }

    // Insert key in chain
    size++;
    head = bucketArray.elementAt(bucketIndex);
    HashNode<K, V> newNode = HashNode<K, V>(key, value, hashCode);
    newNode.next = head;
    bucketArray.insert(bucketIndex, newNode);

    // If load factor goes beyond threshold, then
    // double hash table size
    if ((1.0 * size) / numBuckets >= 0.7) {
      List<HashNode<K, V>?> temp = bucketArray;
      bucketArray = [];
      numBuckets = 2 * numBuckets;
      size = 0;
      for (int i = 0; i < numBuckets; i++) bucketArray.add(null);

      for (HashNode<K, V>? headNode in temp) {
        while (headNode != null) {
          add(headNode.key, headNode.value);
          headNode = headNode.next;
        }
      }
    }
    print("Key: ${key}" + " " + "Value: ${value}");
  }
}

void main() {
  HashTable hashTable = HashTable();
  hashTable.hashCode;
  hashTable.isEmpty();
  hashTable.add(10, "Object1");
  hashTable.add(20, "Object2");
}

