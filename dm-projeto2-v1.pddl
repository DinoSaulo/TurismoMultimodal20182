; Estações ;
; Praça da República == EsPR ;
; Cais do Apolo == EsCAP ;
; Praça do Diário = EsPD ;
; Alfândega = EsAf ;
; Mercado São José = EsMSJ ;
; Santa Rita = EsSR ;

; Lotação inicial: ;
; EsPR == 1 ;
; EsCAP == 1 ;
; EsPD == 1 ;
; EsAf == 0 ;
; EsMSJ == 2 ;
; EsSR == 3 ;

; Amigos: ;
; José, Maria & José ;

; Trajetos: ;
; João: EsCAP -> EsAf ;
; José: EsPR & EsMSJ (tanto faz a ordem) ;
; Maria: EsPD & EsMSJ (tanto faz a ordem) ;
; José e Maria combinaram de se encontrar no Mercado São José, então o primeiro que chegar lá vai ficar esperando o outro chegar para visitarem o Mercado,

; Lacal de Inicio: ;
; João = EsPD ; 
; Maria = EsAf ;
; José = EsCAP ;

; Grafo do mapa: ;
; EsPR -> EsCAP, EsPD ;
; EsCAP -> EsPR, EsAf ;
; EsPD -> EsPR, EsMSJ, EsSR ;
; EsAf -> EsCAP ;
; EsMSJ == EsSR, EsPD;
; EsSR == EsMSJ, EsPD, EsAf ;

(define (domain recife-c)
 (:requirements :strips)

 (:action pega-bicicleta
   :parameters (?quem ?de ?para)
   :precondition (and (eh-ciclista ?quem))
   
 )

 (:action anda-na-bicicleta
   :parameters (?quem ?de ?para)
   :precondition (and (eh-ciclista ?quem))
   
 )

 (:action caminha
   :parameters (?quem ?de ?para)
   :precondition (and (eh-ciclista ?quem))
   
 )

 (:action espera-5min
   :parameters (?quem ?de ?para)
   :precondition (and (eh-ciclista ?quem))
   
 )

)