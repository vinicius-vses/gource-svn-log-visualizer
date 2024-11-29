# Gource SVN Log Visualizer

Este repositório contém um script `.bat` desenvolvido como **pré-requisito da disciplina de Projeto Integrado (PI)** do Instituto Federal de São Paulo (IFSP). O objetivo é automatizar a geração de uma visualização animada do histórico de commits de um repositório SVN utilizando as ferramentas **Gource** e **FFmpeg**. O script também permite personalizar os nomes de usuários no log para facilitar a identificação dos contribuintes.

## 🚀 Funcionalidades

- Realiza o **checkout** do repositório SVN.
- Gera o log do repositório no formato XML.
- Substitui identificadores dos usuários por nomes personalizados.
- Gera um vídeo com o histórico do projeto usando o **Gource**.
- Exporta o vídeo em alta qualidade no formato MP4.

## 🛠️ Pré-requisitos

Certifique-se de que os seguintes softwares estão instalados no sistema:

- [SVN](https://subversion.apache.org/)
- [PowerShell](https://docs.microsoft.com/pt-br/powershell/)
- [Gource](https://gource.io/)
- [FFmpeg](https://ffmpeg.org/)
