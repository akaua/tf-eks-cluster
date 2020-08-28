# tf-eks-cluster

## Criação de EKS com terraform

### Pré requisitos

#### - Terraform v0.12.28
#### - kubectl
#### - aws cli

### Executando Stack
```sh
$ terraform init
$ terraform apply
```
### Configurando kubectl
```sh
$ aws eks --region us-east-1 update-kubeconfig --name training-eks-sR8eLIil
```
### Configurando Metric Server
```sh
$ kubectl apply -f bin/metrics-server-0.3.6/deploy/1.8+/
```
### Verificando Deployment de Metric Server
```sh
$ kubectl get deployment metrics-server -n kube-system
```
### Configurando K8s Dashboard
```sh
$ kubectl apply -f bin/dashboard/
```
### Acesso ao Dashboard
#### Obs:. Abra em outro terminal essa etapa
```sh
$ kubectl proxy
```
### Configurando autenticação para dashboard
```sh
$ kubectl apply -f bin/auth_dashboard/
```
### Gerando token de autenticação
```sh
$ kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep service-controller-token | awk '{print $1}')
```
#### Copie o token no final do output e cole na interface do dashboard


