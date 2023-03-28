## Numerical Questions on Memory Organization

* Mapping -- Direct, Associative and Set Associative
* Hit and Miss
* Disk Latency


Ques 1. A digital computer has a memory unit of 64K x 16 and a cache memory of 1K words. The cache uses direct mapping with a block size of 4 words.
1. How many bits are there in the tag, index, block and word fields of the address format?
2. How many bits are there in each word of the cache, and how are they divided into functions? Include the valid bit.
3. How many blocks can the cache accommodate?

Ans. Memory Unit => Main Memory (MM) => Physical Memory => 64K words = 2^6 * 2^10 = 2^16 words
Each word would have 16 bit address. This is needed to uniquely identify all the words in MM.


