# DescoShop Infrastructure Setup

## Provisionamento de Infraestrutura

1. Clone o repositório.
2. Configure suas credenciais AWS.
3. Navegue até a pasta `descoshop-infra`.
4. Execute `terraform init` e `terraform apply` para provisionar os recursos.

## Estrutura de Módulos

O projeto está organizado nos seguintes módulos:
- `eks`: Provisiona o cluster EKS.
- `s3_cloudfront`: Configura o bucket S3 e a distribuição CloudFront.
- `rds`: Provisiona o banco de dados PostgreSQL no RDS.
- `observability`: Configura Prometheus, Grafana e Loki.

## Implantação da Aplicação

1. Faça push do código para o branch `main`.
2. A pipeline de CI/CD do GitHub Actions será acionada automaticamente para build e deploy.

## Observabilidade

1. Acesse o Grafana para monitoramento:
   - URL: `http://<grafana-url>`
   - Usuário: `admin`
   - Senha: `admin`

## Solução de Problemas

- Utilize o Grafana e o Prometheus para monitorar a aplicação e verificar logs.
- Consulte a documentação do ArgoCD para gerenciar a entrega contínua.

