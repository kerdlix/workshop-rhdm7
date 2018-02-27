
# WORKSHOP RHDM7
Workshop sobre o Red Hat Decision Manager 7 (ex-BRMS)

## Laboratório 04 - Deployment de Regras
Este laboratório explorará o deployment das regras. Existem algumas opções para isso. Trabalharemos com dois formatos:

1. Decision Deployment Unit (KJar) no Decision Central
2. Source to Image (S2I) no Openshift

## Decision Deployment Unit (KJar) no Decision Central
Esta opção cria um Decision Deployment Unit (KJar) via Decision Central (ou como um pipeline no Openshift) e faz o push do Decision Central para o KIE-Controller do Decision Server. O Decision Server faz o pull do deployment unit (KJar) do repositório Maven.

Esta opção é utilizada quando o usuário quer controlar o deployment das regras da interface visual do Decision Central ou KIE-Controller. Pode ser feito o deploy de novas regras em runtime sem a necessidade de um build de uma imagem de container do Decision Server.

## Source to Image (S2I) no Openshift
Esta opção utiliza o processo de S2I do Openshift na qual os artefatos de regras (regras, modelos DMN, Decision Tables, etc) criados via interface visual do Decision Central são armazenados em um repositório GIT. A imagem do Decision Server para fazer o build do S2I no Openshift baixa os fontes do repositório GIT e cria um Decision Deployment Unit (KJar). Após, o processo S2I cria um container de microserviço (ou microregra) e executa o deploy no Openshift.

Esta opção é utilizada quando se quer imagens imutáveis do Decision Server. Quando uma nova regra precisa de deploy, uma nova imagem de microserviço é criada novamente através do processo de S2I.
