Extension { #name : 'FileReference' }

{ #category : '*PharoMemFile-Core' }
FileReference >> memoryBinaryReadStream [
	| contentsReadStream contents |
	contentsReadStream := self binaryReadStream.
	contents := contentsReadStream contents.
	contentsReadStream close.
	
	^	ReadStream on: contents
]
