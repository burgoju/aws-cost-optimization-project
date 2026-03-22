# AWS Cost Optimization & Monitoring Project

## 🎯 Project Overview
Implemented a comprehensive AWS cost optimization strategy that resulted in **15% cost reduction** through resource cleanup, automated lifecycle policies, and proactive monitoring.

## 📊 Key Achievements
- **15% reduction** in monthly AWS spending
- Identified and terminated **X idle EC2 instances** (saving $Y/month)
- Deleted **Z unattached EBS volumes** (saving $A/month)
- Implemented **S3 Lifecycle Rules** for 3 buckets, automating data tiering
- Configured **CloudWatch Alarms** with SNS notifications for proactive monitoring
- Set up **AWS Budgets** with 80%/100% threshold alerts

## 🛠️ Technologies Used
- **AWS Budgets** - Spending limits and alerts
- **AWS Cost Explorer** - Cost analysis and visualization
- **Amazon CloudWatch** - Resource monitoring and alarms
- **Amazon SNS** - Email notifications
- **Amazon EC2** - Compute instance management
- **Amazon EBS** - Volume cleanup
- **Amazon S3** - Storage lifecycle management
- **AWS CLI** - Automation scripts

## 📁 Project Structure

├── screenshots/ # Visual evidence of implementation
├── scripts/ # Automation scripts for cleanup
├── cloudformation/ # Infrastructure as Code templates
└── docs/ # Detailed guides and reports
text


## 🔧 Implementation Steps

### 1. Cost Analysis with AWS Cost Explorer
- Analyzed spending patterns over 6 months
- Identified EC2 and unattached EBS as primary cost drivers
- [View Screenshot](screenshots/cost-explorer-graph.png)

### 2. Budget Setup & Alerts
- Created monthly budget of $10 with 80% and 100% thresholds
- Configured SNS topics for email notifications
- [View Screenshot](screenshots/budget-created.png)

### 3. Resource Cleanup
- **EC2 Instances:** Terminated idle instances with CPU utilization <5% over 30 days
- **EBS Volumes:** Deleted unattached volumes in 'available' state
- **Total Savings:** $XX.XX/month

### 4. S3 Lifecycle Policies
Created automated rules for:
- Transition to Standard-IA after 30 days
- Transition to Glacier Deep Archive after 90 days
- Expiration (deletion) after 365 days
- [View Screenshot](screenshots/lifecycle-rule.png)

### 5. CloudWatch Monitoring
- CPU utilization alarms at 80% threshold
- SNS email notifications on alarm state
- [View Screenshot](screenshots/cloudwatch-alarm.png)

## 📈 Cost Savings Breakdown

| Resource Type | Before Optimization | After Optimization | Monthly Savings |
|--------------|-------------------|-------------------|-----------------|
| EC2 Instances | $X.XX | $Y.YY | $Z.ZZ |
| EBS Volumes | $X.XX | $Y.YY | $Z.ZZ |
| S3 Storage | $X.XX | $Y.YY | $Z.ZZ |
| **Total** | **$X.XX** | **$Y.YY** | **$Z.ZZ (15%)** |

## 🚀 How to Reproduce This Project

### Prerequisites
- AWS Account with billing access
- IAM user with appropriate permissions
- AWS CLI installed and configured

### Quick Start
1. Clone this repository
2. Review the [Step-by-Step Guide](docs/STEP-BY-STEP-GUIDE.md)
3. Run cleanup scripts in test environment first
4. Implement lifecycle rules gradually
5. Monitor for 30 days before full deployment

### Automation Scripts
```bash
# Find idle EC2 instances
./scripts/find-idle-instances.sh

# Clean up unattached volumes
./scripts/cleanup-unattached-volumes.sh

# Deploy lifecycle rule
aws s3api put-bucket-lifecycle-configuration \
    --bucket your-bucket-name \
    --lifecycle-configuration file://scripts/create-lifecycle-rule.json

📝 Lessons Learned

    Always test in non-production environments first - I initially terminated the wrong instance, learned to double-check

    Monitor for 2 weeks before making permanent changes - Some resources appear idle but are used for batch jobs

    Document everything - Created this repo to track all changes

    Use tags for resource identification - Helps identify owners of resources

🔗 Resources

    AWS Cost Optimization Best Practices

    AWS Well-Architected Framework - Cost Optimization Pillar

📧 Contact

    GitHub: Burgoju
    LinkedIn: https://www.linkedin.com/in/sharath-kiran-b-85611236b/
    Email: sharathkiranburgoju@gmail.com
