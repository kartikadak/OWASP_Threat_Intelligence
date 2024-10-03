#!/bin/bash

# Configuration
DOCKER_CONTAINER_ID=""
LOCAL_LOG_DIR=""
S3_BUCKET=""
AWS_REGION=""
AWS_ACCESS_KEY_ID=""
AWS_SECRET_ACCESS_KEY=""

# Function to check the last command status
check_status() {
    if [ $? -ne 0 ]; then
        echo "Error: $1"
        exit 1
    fi
}

# Step 1: Copy logs from Docker container to local directory
echo "Copying logs from Docker container..."
sudo docker cp ${DOCKER_CONTAINER_ID}:/var/log/modsecurity ${LOCAL_LOG_DIR}
check_status "Failed to copy logs from Docker container."

# Step 2: Set AWS credentials
export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}

# Step 3: Upload only audit.log to S3 bucket
echo "Uploading audit.log to S3 bucket..."
aws s3 cp ${LOCAL_LOG_DIR}/audit.log ${S3_BUCKET}/audit.log --region ${AWS_REGION}
check_status "Failed to upload audit.log to S3."

# Clean up (optional)
echo "Cleaning up local log directory..."
rm -rf ${LOCAL_LOG_DIR}/*
check_status "Failed to clean up local log directory."

echo "Audit log successfully copied and uploaded."
