# Health Check de SO (RHEL)

![Ansible](https://img.shields.io/badge/Ansible-Core%202.16-blue.svg)
![RHEL](https://img.shields.io/badge/RHEL-7%20%7C%208%20%7C%209%20%7C%2010-red.svg)

Este repositório fornece automações em Ansible para a coleta de dados e geração de relatórios de *Health Check* (verificação de integridade) diretamente em sistemas operacionais **Red Hat Enterprise Linux (RHEL)**.

## 📋 Funcionalidades

A automação acessa os servidores alvo e extrai métricas de saúde do sistema operativo, consolidando as informações em relatórios fáceis de analisar. O repositório conta com dois playbooks principais, variando de acordo com o formato de saída desejado:

* **`playbook_health-check_txt_output.yml`**: Gera o relatório de health check em formato de texto puro (`.txt`).
* **`playbook_health-check_html_output.yml`**: Gera o relatório formatado em HTML (`.html`), ideal para visualização estruturada em navegadores e compartilhamento com equipes.

## ⚙️ Pré-requisitos e Compatibilidade

* **Ansible:** Testado e homologado no **Ansible Core 2.16**.
* **Sistemas Operacionais Suportados (Target):** RHEL 7, 8, 9 e 10.
* **Acessos:** O *Control Node* deve ter conectividade SSH e privilégios suficientes (ex: `sudo` ou `root`) nos *Managed Nodes* para realizar as coletas das métricas de sistema.

## 🚀 Como Usar

### Execução Padrão
Para executar a automação e gerar os relatórios com as configurações padrão, utilize o comando `ansible-playbook` apontando para o seu arquivo de inventário (ex: `-i inventario.ini`) e o playbook desejado:

```bash
ansible-playbook -i inventario.ini playbook_health-check_txt_output.yml
```

### Personalização através de Variáveis Extras (`extra vars`)

A automação permite modificar seu comportamento dinamicamente através de variáveis extras passadas via linha de comando (`-e` ou `--extra-vars`).

#### 1. Coleta de Logs de Erro (`coleta_logs_on`)
Caso deseje realizar uma varredura nos registros do sistema em busca de logs que contenham a string `error`, ative a variável `coleta_logs_on=true`:

```bash
ansible-playbook -e coleta_logs_on=true playbook_health-check_html_output.yml
```

> ⚠️ **ADVERTÊNCIA IMPORTANTE:** A coleta de logs baseada na string de erro pode retornar volumes de texto muito extensos, dependendo da saúde do servidor. Isso pode gerar uma **sobrecarga expressiva no consumo de memória** da máquina onde a automação está sendo disparada (*Control Node*). Utilize este recurso com cautela e preferencialmente sob demanda.

#### 2. Alterar o Diretório de Saída (`dir_output`)
Por padrão, os relatórios são salvos no diretório corrente ou pré-definido pelo playbook. Para definir um local de salvamento customizado, utilize a variável `dir_output`:

```bash
ansible-playbook -e dir_output=/caminho/para/meus/relatorios playbook_health-check_html_output.yml
```

#### 💡 Exemplo Combinado
É possível utilizar múltiplas variáveis na mesma execução. Para gerar relatórios HTML em um diretório específico com a análise de logs de erro ativada:

```bash
ansible-playbook -e "coleta_logs_on=true dir_output=/tmp/relatorios_saude" playbook_health-check_html_output.yml
```

Aviso: A ferramenta instala o pacote sssd-tools via dnf.
