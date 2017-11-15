NTFSDISK ?= Hitachi
NTFSID ?= $$(df -h | grep $(NTFSDISK) | cut -d" " -f 1)
	
mount-ntfs:
	if [ "$(NTFSID)" == '' ]; then \
		NTFSID=/dev/$$(shell diskutil list | grep NTFS | awk '{print $$5}'); \
	else \
		diskutil unmount "$(NTFSID)"; \
	fi
	@cd /Volumes && sudo mkdir "$(NTFSDISK)"
	sudo mount -w -t ntfs -o rw,nobrowse "$(NTFSID)" /Volumes/"$(NTFSDISK)"
