## Numerical Questions on Memory Organization

* Mapping -- Direct, Associative and Set Associative
* Hit and Miss
* Disk Latency


Ques 1. A digital computer has a memory unit of 64K x 16 and a cache memory of 1K words. The cache uses direct mapping with a block size of 4 words.
1. How many bits are there in the tag, index, block, and word fields of the address format?
2. How many bits are there in each word of the cache, and how are they divided into functions? Include the valid bit.
3. How many blocks can the cache accommodate?

Ans. Memory Unit => Main Memory (MM) => Physical Memory => 64K words = 2^6 * 2^10 = 2^16 words
Each word would have a 16-bit address. This is needed to identify all the words in MM uniquely.
Address Format for Direct Mapping: TAG + Line Number + Block Offset

MM size = 64K x 16 = 2^16 * 16 => 2^16 words
Address = 16 bits

Block Size = 4 words = 2^2 words => 2 bits for Block Offset

Cache Size = 1K words = 2^10 words => 10 bits to uniquely identify each word in cache memory

Now, line size = 4 words

So, number of lines = 2^10 / 2^2 = 2^8 = 256 lines

Number of bits in Line Number field = 8 bits

TAG + Line Number + Block Offset = 16
TAG + 8 + 2 = 16 => TAG = 6

2. MM size = 64K x 16 = 2^16 * 16 
Therefore, 16 bits for Address(MAR) and  16 bits for Data(MBR)
Here, each word of cache will contain = Data + tag + valid = 16+6+1 = 23 bits in a word



