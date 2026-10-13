# Pacote criativo: Casa Das Tintas (Aruana, Aracaju)

## 1. A ideia central

**Acertar na primeira vez.** Quem compra tinta tem medo de três coisas: a cor sair diferente, a tinta não cobrir e levar lata demais ou de menos. O site inteiro vende uma ideia: na Casa Das Tintas você sai com a tinta certa, na cor certa e na quantidade certa. O vídeo mostra a cor caindo, mergulhando e assentando. A página termina com a cor "no lugar", pronta.

## 2. Paleta (direção; valores finais saem do vídeo aprovado)

```css
:root{
  --canvas:#150F24;        /* berinjela profunda, tom da piscina de tinta no escuro */
  --panel:#21183A;
  --accent:#FFC21A;        /* amarelo açafrão: só CTA, foco e 1 ou 2 destaques */
  --accent-hover:#FFD457;
  --accent-muted:rgba(255,194,26,.18);
  --text-secondary:#C9C0DA;
  --text-primary:#F7F2EA;  /* branco gelo, cor de tinta, nunca #fff */
  /* cores das faixas de tinta, usadas só em detalhes desenhados */
  --tinta-vermelho:#FF4A2E; --tinta-turquesa:#00B3A4; --tinta-cobalto:#3554FF; --tinta-magenta:#E8318A;
}
```

## 3. Tipografia

- Display: **Bricolage Grotesque** 700 e 800 (tem ã, ç, õ, á, ê).
- Texto: **Figtree** 400 e 600.
- Etiquetas: **JetBrains Mono** 500.

## 4. Storyboard (3 cenas de 5s emendadas, cerca de 15s, rolagem de ~1000vh)

| Cena | Mundo | Câmera | Fronteira | Quadro final |
|---|---|---|---|---|
| 1 | Fundo escuro de estúdio; quatro faixas grossas de tinta (vermelho, açafrão, turquesa, cobalto) despencam do alto, torcendo | Desce junto com a tinta | Nenhuma | Faixas no meio da queda, perto de uma superfície brilhante lá embaixo (termina em movimento) |
| 2 | As faixas batem numa piscina de tinta brilhante, coroa de respingo | Mergulha para dentro da tinta | Respingo, gotas na lente, um instante de desfoque | Dentro da tinta: redemoinho de cores em movimento (termina em movimento) |
| 3 | Redemoinho abstrato de cores | Continua descendo; o redemoinho desacelera | Nenhuma | Superfície de tinta marmorizada vista de cima, parada, ocupando a tela toda (tela sem bordas cortáveis, segura para texto) |

As emendas caem dentro do movimento e do desfoque, então não aparecem.

## 5. Mapa das faixas de texto (pontos de partida, validados no teste de rolagem)

| Faixa | Trecho | O que o vídeo mostra | Texto (final) | Entrada |
|---|---|---|---|---|
| 1 | 0.00 a 0.18 | Tinta começa a cair | Etiqueta: "CASA DAS TINTAS · ARUANA, ARACAJU" / Título: "A cor que você imaginou." / Linha: "Role e veja ela chegar na parede." | Palavras descem (drift-down) |
| 2 | 0.22 a 0.40 | Faixas torcendo na queda | "Cor igual ao catálogo." / "A gente confere com você antes de você levar." | Letras se entrelaçam (weave) |
| 3 | 0.44 a 0.62 | Respingo e mergulho | "Nem lata a mais." / "Nem lata a menos." | Palavras batem com impacto (punch) |
| 4 | 0.66 a 0.82 | Redemoinho de cores | "Parede, fachada, madeira ou portão." / "A tinta certa pra cada uma." | Letras se juntam do redemoinho (scatter) |
| 5 | 0.86 a 1.00 | Tinta assenta, marmorizada | Título: "Acerte na primeira demão." / Linha: "Fale com a Casa Das Tintas do jeito que preferir." / Botões: "Chamar no WhatsApp" · "Ligar agora" · "Como chegar" | Título sobe palavra por palavra, linha e botões chegam depois |

## 6. Hero estático (celular e movimento reduzido)

Título: "A cor que você imaginou, na primeira demão." / Linha: "Tintas, cores e orientação de quem entende, no Aruana." / Botões: WhatsApp, Ligar, Como chegar.

## 7. Seções abaixo do vídeo

1. **"Pintura que dá errado custa duas vezes."** Três cartões com imagem: Cor diferente do catálogo / Tinta que não cobre / Lata sobrando ou faltando. Cada um com a resposta da loja.
2. **Momento interativo: "Quanta tinta eu preciso?"** Calculadora: largura e altura da parede, número de paredes, demãos. Mostra litros e latas sugeridas (18 L, 3,6 L, 0,9 L). Botão: "Confirmar no WhatsApp", que leva a conta pronta na mensagem.
3. **"Pra cada superfície, uma tinta."** Parede interna (acrílica), fachada (acrílica para área externa), madeira e metal (esmalte). Três imagens geradas.
4. **Como funciona:** 1. Conte o que vai pintar. 2. A gente indica tinta e quantidade. 3. Você pinta sem susto.
5. **Perguntas frequentes** (dúvidas reais): quantas latas, qual tinta para área externa, quantas demãos, cor escura para clara, se dá para tirar dúvida pelo WhatsApp.
6. **Visite a loja:** Av. Melício Machado, 540, Aruana, Aracaju/SE, CEP 49038-443. Telefone (79) 3243-6199. WhatsApp (79) 98101-8248. Abre às 8h. Mapa e botão "Abrir no mapa".
7. **Chamada final** com os três botões, e rodapé com @casadastintasaruana.

Mensagem pronta do WhatsApp: "Olá, Casa Das Tintas! Vim pelo site e quero um orçamento de tinta."

## 8. Camada desenhada

- Assinatura: **a borda que escorre**. Cada seção termina numa borda de tinta desenhada em SVG, e os escorridos descem conforme a pessoa rola.
- Linhas de pincel em SVG que se desenham sozinhas nos títulos.
- Gotas de tinta flutuando bem de leve ao fundo, e um fundo fixo com manchas de cor que se movem devagar (ciclo de 60s ou mais).
- Movimento reduzido: tudo aparece no estado final.

## 9. Engenharia

Vídeo baixado inteiro em memória com anel de carregamento, suavização da rolagem, buscas no vídeo sem sobreposição, escrita no DOM só quando muda, faixas com tempo de leitura no teste de rolagem, sistema de legibilidade em quatro camadas, cinco regras do hero estático com ouvintes ao vivo, página completa mesmo sem vídeo.

## 10. Revisão de texto

Todo texto acima vai para o site exatamente assim. Antes de mostrar, o site passa pela varredura: zero travessão, zero palavra de propaganda genérica, tudo em português do Brasil.
