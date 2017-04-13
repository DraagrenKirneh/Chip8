as yet unclassified
downloadGamesPackZophar

	| link contentStream zip buffer |
	
	link := 'http://www.zophar.net/download_file/11688'.
	contentStream := (ZnEasy get: link) contents readStream.
	zip := ZipArchive new .
	zip readFrom: contentStream.
	
	buffer := (ByteArray new: 4096) readStream.
		
	zip members do: [ :member |
		member uncompressDataTo: buffer.
		self repository at: ('ZopharPack:', member fileName) put: member contents asByteArray.
		buffer reset
	].
	