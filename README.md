# AccessibleGame
----------------

Só mostrando como configurar para uso de uma "raquete" como a de um jogo de 
Ping Pong ou Breakout feito em SpriteKit mas com considerações para jogadores
usuários de Voice Over.

A configuração do Voice Over para a raquete pode ser encontrada na função 
`didMove(to view: SKView)` na classe `GameScene`. 

Uma alternativa de adaptação ao uso de Voice Over pode ser encontrada em um 
comentário na função `viewDidLoad()`, na classe `GameViewController`. Maiores 
explicações se encontram no comentário.


## Instalação/Execução

Este projeto foi crido com o Xcode 15.0 beta 4 (15A5195m). Pode apresentar 
problemas em versões de Xcode diferentes. Porém, o código básico de poder 
ser copiado de GameViewController.swift e GameScene.swift sem variação para
versões de Xcode não muito diferentes. É preciso, no entanto, a criação de
um SpriteNode com identificação "raquete" no arquivo GameScene.sks do projeto
template de jogo básico. Apenas copiar o tal sks do projeto para outras 
versões de Xcode pode apresentar problemas.

Pelo projeto atual, requer o iOS 17.0, atualmente em beta.
