# BTL-Spoke

- This module deploys Aviatrix Spoke G/Ws  building on the MCNA (Mulit Cloud Network Architecture) core -   Azure + GCP
- This repo will be linked to TFC workspace to trigger deployment,  apply method : manual (plan runs;  apply awaits manual confirmation)



## Architecture
![Architecture](https://github.com/patelavtx/LabShare/blob/main/BTL-core.png)

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
```

### Export Google Creds
```
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your-key-file.json"

OR 

in provider.
```


### VM access

```
gcloud auth login
gcloud config set project PROJECT_ID

gcloud compute ssh INSTANCE_NAME --zone ZONE

