- Hash Pointers and Data Structures
	- hash pointer
		- pointer to where previous block is stored + cryptographic hash of that block
			- chain is structured in a way that a block that is not the genesis block will keep a tamper-sensitive record of all previous blocks in the chains and a pointer to the last directly accessible node
		- allows easy retrieval and then verification
		- NOTE:: Keep in mind the 3 properties of hash when solving hash problems later on
	- merkle tree
		- used for transaction verficaiton/checking if transaction exists in tree/chain
		- binary tree formed by hash pointers, stores hash of the chain not the actual data
			- if odd number of transactions to calc, duplicate the last stored hash node.
		- chain nodes are leaf nodes
		- root of tree aka as merkle root, i.e. hash of the whole chain/tree. represents integrity of entire set of data, value needs to be stored securely/obtained via a trustworthy mechanism
		- first transaction like a binary tree, is at the bottom leftmost
		- provides traversal efficiency
			- to check a certain block, use merkle proof
				- get one transaction, use hash of siblings to generate merkle root and compare w stored value
		- verifies membership in O(logn)

Lecture 3.3 PK Cyptography
Lecture 3.4 PK Identity
- public key used to gen a private key which is one-way hashed to gen a bitcoin address aka identity

- goofycoin aka shahab coin
	- 