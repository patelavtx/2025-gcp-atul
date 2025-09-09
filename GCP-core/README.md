# BTL-Core

- This module deploys Aviatrix Transit G/Ws  in a MCNA (Mulit Cloud Network Architecture) core -   Azure + GCP
- This repo will be linked to TFC workspace to trigger deployment,  apply method : manual (plan runs;  apply awaits manual confirmation)


## Architecture
![Architecture](https://github.com/patelavtx/LabShare/blob/main/Az-GCPtransit.png)

### Segmentation

![Architecture](https://github.com/patelavtx/LabShare/blob/main/BTL-coreSeg.png)

## Validated environment
```
Terraform v1.3.6
on linux_amd64 (WSL) and TFC workspace
+ provider aviatrixsystems/aviatrix v3.0.1

```

## providers.tf
```
terraform {
  required_providers {
    aviatrix = {
      source  = "aviatrixsystems/aviatrix"
      version = "~>3.0.1"
    }
  }
}

