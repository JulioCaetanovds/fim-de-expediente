# Fim de Expediente (Memory Optimizer) 🚀

Um script em PowerShell focado em otimização de recursos do sistema operacional. Desenvolvido para realizar a transição rápida de ambientes de desenvolvimento com alta carga de memória para cenários de alto desempenho.

## ⚠️ O Problema
Ecossistemas de desenvolvimento Fullstack e Mobile (envolvendo ferramentas como Android Studio, instâncias do Docker, OpenJDK e instâncias do WSL) realizam alocações massivas de memória RAM. 

Mesmo após o encerramento das interfaces gráficas dessas aplicações, processos em segundo plano e o próprio gerenciamento de cache do Windows (Standby List) retêm gigabytes de dados na memória. Essa retenção ineficiente causa gargalos de hardware e *resource starvation* quando o sistema precisa alocar recursos rapidamente para novas tarefas pesadas, como renderização 3D ou jogos de alta performance.

## 💡 A Solução
Este script automatiza a liberação profunda de memória através de duas etapas arquiteturais:
1. **Encerramento de Processos:** Varre e derruba silenciosamente ferramentas pesadas de desenvolvimento que permanecem ativas em background.
2. **Flush de Memória:** Redefine o *Working Set* dos processos remanescentes e invoca o *Garbage Collector* (`[System.GC]`) do .NET, forçando o Windows a despejar as páginas de memória em cache e entregando a RAM fisicamente livre.

## 🛠️ Como usar

1. Clone este repositório na sua máquina:
   ```bash
   git clone [https://github.com/JulioCaetanovds/fim-de-expediente.git](https://github.com/JulioCaetanovds/fim-de-expediente.git)
   ```

2. Abra o arquivo `OptimizeGameMode.ps1` e edite a array `$apps` para incluir os binários do seu ambiente de trabalho. (Padrão incluso: `code`, `studio64`, `qemu-system-x86_64`, `docker`, `java`, `Postman`, entre outros).

3. Execute o atalho `Jogar.bat`. 
   > **Nota técnica:** O atalho solicitará elevação de privilégio (Administrador) automaticamente. Isso é um requisito estrito do sistema operacional para permitir a manipulação e o *flush* da memória em cache.

4. O sistema estará com a RAM otimizada e pronta para o próximo workload pesado.
