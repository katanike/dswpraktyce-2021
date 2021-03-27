EC2_SSH_PEM_PATH := ~/.ssh/ds-key-pair.pem
S3_BUCKET_URI	 := s3://uwm-dswpythonie-2021
EMR_MASTER_IP 	 := 34.238.166.218
USER_ID			 := user-01
ACCOUNT_ID		 := 619731119112


.PHONY: replace_cached_key
replace_cached_key:
	@ssh-keygen -R $(EMR_MASTER_IP)
	@ssh-keyscan -H $(EMR_MASTER_IP) >> ~/.ssh/known_hosts

.PHONY: ssh_into_master
ssh_into_master: replace_cached_key
	ssh -i $(EC2_SSH_PEM_PATH) hadoop@$(EMR_MASTER_IP)
# ssh -i ~/.ssh/ds-key-pair.pem hadoop@34.230.25.190

.PHONY: ssh_tunnel_into_master
ssh_tunnel_into_master: replace_cached_key
	ssh -i $(EC2_SSH_PEM_PATH) -ND 8157 hadoop@$(EMR_MASTER_IP)
#	ssh -i ~/.ssh/ds-key-pair.pem -ND 8157 hadoop@34.230.25.190
.PHONY: enable_hue
enable_hue: replace_cached_key
	ssh -i $(EC2_SSH_PEM_PATH) -L 8888:$(EMR_MASTER_IP):8888 hadoop@$(EMR_MASTER_IP) -fN


.PHONY: launch_jupyter
launch_jupyter: replace_cached_key upload_notebook_dependencies
	jupyter notebook
