# 🚀 Fim de Expediente (Dev to Gamer)

Um script em PowerShell simples e direto ao ponto para desenvolvedores que precisam fazer a transição rápida do ambiente de trabalho para jogos pesados no PC.

## ⚠️ O Problema
Depois de um dia inteiro codando, com emuladores mobile, bancos de dados e IDEs abertas, o Windows e seus processos em segundo plano continuam segurando gigabytes de RAM em cache. Fechar tudo na mão ou reiniciar o PC quebra o fluxo quando você só quer bater o ponto e ir jogar.

## 💡 A Solução
O **Fim de Expediente** automatiza essa limpeza. Com apenas um clique duplo, o script:
1. Encerra silenciosamente processos pesados de desenvolvimento.
2. Força o *Garbage Collector* do sistema a liberar a memória em cache (Standby List).
3. Entrega a RAM livre e limpa direto para o seu jogo.

## 🛠️ Como usar
1. Clone este repositório na sua máquina:
   ```bash
   git clone [https://github.com/JulioCaetanovds/fim-de-expediente.git](https://github.com/JulioCaetanovds/fim-de-expediente.git)
   ```
2. Abra o arquivo `OptimizeGameMode.ps1` e edite a array `$apps` com os nomes dos processos que você costuma usar no seu dia a dia (ex: `code`, `studio`, `qemu-system-x86_64`, `chrome`).
3. Execute o atalho `Jogar.bat` (ele pedirá permissão de Administrador automaticamente, o que é estritamente necessário para realizar o *flush* da memória do Windows).
4. Abra seu jogo e aproveite a performance máxima da sua máquina!
