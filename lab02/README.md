# WORKSHOP RHDM7
Workshop sobre o Red Hat Decision Manager 7 (ex-BRMS)

## Laboratório 02 - Instalação no Standalone
Nesta nova versão, o Red Hat Decision Manager 7 oferece duas formas de instalação: Standalone e Openshift.

A instalação no Openshift é contemplata [rhdm7-install-demo](https://github.com/jbossdemocentral/rhdm7-install-demo). Faça o clone e execute a opção 2 - Automated installation. Será criado o projeto RHDM7 Install Demo no Openshift. Dentro terão 2 pods. O Kie-Server (rhdm7-install-kieserver), para execução das regras e o Decision Manager (rhdm7-install-rhdmcentr) para a autoria das regras.

O acesso ao Decision Central é feito através da URL obtida no menu "Applications -> Routes". Clique na coluna "Hostname" do Nome "rhdm7-install-rhdmcentr".

```
usuário: dmAdmin
password: redhatdm1!
```

