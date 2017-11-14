NTFSDISK?=Hitachi
NTFSID?=$(shell df -h | grep ${NTFSDISK} | cut -d" " -f 1)

mount-ntfs:
	diskutil unmount ${NTFSID}
	@cd /Volumes && sudo mkdir ${NTFSDISK}
	sudo mount -w -t ntfs -o rw,nobrowse ${NTFSID} /Volumes/${NTFSDISK}
