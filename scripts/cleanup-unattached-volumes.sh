#!/bin/bash
# Script to find and delete unattached EBS volumes

echo "Finding unattached EBS volumes..."

# Find volumes in 'available' state
VOLUMES=$(aws ec2 describe-volumes \
    --filters "Name=status,Values=available" \
    --query "Volumes[].VolumeId" \
    --output text)

if [ -z "$VOLUMES" ]; then
    echo "No unattached volumes found!"
    exit 0
fi

echo "Found volumes: $VOLUMES"
echo "Do you want to delete these volumes? (yes/no)"
read CONFIRMATION

if [ "$CONFIRMATION" = "yes" ]; then
    for VOLUME in $VOLUMES; do
        echo "Deleting volume: $VOLUME"
        aws ec2 delete-volume --volume-id $VOLUME
    done
    echo "Cleanup complete!"
else
    echo "Operation cancelled"
fi
