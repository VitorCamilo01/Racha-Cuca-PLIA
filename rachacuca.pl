resolve(S) :-
    S = salao(_,_,_,_,_),
	%A mulher que vai Tingir os cabelos está exatamente à esquerda da Cláudia.
    exatamente_a_esquerda(A,B,S),
    fazer(A,tingir),
    nome(B,claudia),
    %A moça que está no meio vai Alisar os cabelos.
    terceira_cadeira(C,S),
    fazer(C,alisar),
    %Quem vai Cortar os cabelos está em algum lugar entre a Fluminense e a que tem a bolsa Vermelha, que está à direita.
    fazer(D, cortar),
    em_algum_lugar_a_esquerda(F, D, S),
    gentilico(F, fluminense),
    em_algum_lugar_a_esquerda(D, E, S),
    bolsa(E, vermelha),
	%Quem vai fazer Maquiagem está na primeira cadeira.
    fazer(G,maquiagem),
    primeira_cadeira(G,S),
    %A Paulista está sentada exatamente à esquerda da Publicitária.
    gentilico(H,paulista),
    exatamente_a_esquerda(H,I,S),
    profissao(I,publicitaria),
    %A Mariana trabalha como Tradutora.
    alguma_mulher(J,S),
    nome(J,mariana),
    profissao(J,tradutora),
    %A Dentista está sentada na quarta cadeira.
    profissao(K,dentista),
    quarta_cadeira(K,S),
    %A Cozinheira está sentada ao lado da Mineira.
    profissao(L,cozinheira),
    ao_lado_de(L,M,S),
    gentilico(M,mineiro),
    %A Ana está exatamente à direita da mulher que veio fazer Maquiagem.
    nome(N,ana),
    exatamente_a_direita(N,G,S),
    %Tina está sentada em uma das pontas.
    nome(O,tina),
    uma_das_pontas(O,S),
    %A Paulista adora Limonada
    suco(H,limonada),
    %A dona da bolsa Vermelha está sentada em algum lugar à esquerda da que bebe suco de Morango.
    em_algum_lugar_a_esquerda(E,Q,S),
    suco(Q,morango),
    %Quem bebe suco de Laranja está na segunda cadeira.
    suco(R,laranja),
    segunda_cadeira(R,S),
    %A dona da bolsa Verde está sentada ao lado de quem bebe suco de Maracujá.
    bolsa(T,verde),
    ao_lado_de(T,U,S),
    suco(U,maracuja),
    %A Mineira está sentada exatamente à direita da dona da bolsa Branca.
    exatamente_a_direita(M,V,S),
    bolsa(V,branca),
    %A Sul-rio-grandense adora suco de Morango.
    gentilico(Q,gaucha),
    %A Advogada está sentada ao lado da mulher que veio Cortar os cabelos.
    profissao(W,advogada),
    ao_lado_de(W,D,S),
    %A dona da bolsa Amarela está sentada exatamente à esquerda da dona da bolsa Branca.
    bolsa(Y,amarela),
    exatamente_a_esquerda(Y,V,S),
    %fechamento
    alguma_mulher(A1,S),
    bolsa(A1,azul),
    alguma_mulher(A2,S),
    gentilico(A2,baiana),
    alguma_mulher(A3,S),
    suco(A3,abacaxi),
    alguma_mulher(A4,S),
    nome(A4,vivian),
    alguma_mulher(A6,S),
    fazer(A6,manicure).

	fazer(mulher(_,_,_,_,_,F),F).
	nome(mulher(_,_,_,N,_,_),N).
	gentilico(mulher(_,G,_,_,_,_),G).
	bolsa(mulher(B,_,_,_,_,_),B).
	profissao(mulher(_,_,_,_,P,_),P).
	suco(mulher(_,_,S,_,_,_),S).

	alguma_mulher(X,salao(X,_,_,_,_)).
	alguma_mulher(X,salao(_,X,_,_,_)).
	alguma_mulher(X,salao(_,_,X,_,_)).
	alguma_mulher(X,salao(_,_,_,X,_)).
	alguma_mulher(X,salao(_,_,_,_,X)).

    exatamente_a_direita(X,Y,salao(Y,X,_,_,_)).
	exatamente_a_direita(X,Y,salao(_,Y,X,_,_)).
	exatamente_a_direita(X,Y,salao(_,_,Y,X,_)).
	exatamente_a_direita(X,Y,salao(_,_,_,Y,X)).

	exatamente_a_esquerda(X,Y,S) :-
    	exatamente_a_direita(Y,X,S).

	em_algum_lugar_a_esquerda(X,Y,salao(X,Y,_,_,_)).
	em_algum_lugar_a_esquerda(X,Y,salao(X,_,Y,_,_)).
	em_algum_lugar_a_esquerda(X,Y,salao(X,_,_,Y,_)).
	em_algum_lugar_a_esquerda(X,Y,salao(X,_,_,_,Y)).
	em_algum_lugar_a_esquerda(X,Y,salao(_,X,Y,_,_)).
	em_algum_lugar_a_esquerda(X,Y,salao(_,X,_,Y,_)).
	em_algum_lugar_a_esquerda(X,Y,salao(_,X,_,_,Y)).
	em_algum_lugar_a_esquerda(X,Y,salao(_,_,X,Y,_)).
	em_algum_lugar_a_esquerda(X,Y,salao(_,_,X,_,Y)).
	em_algum_lugar_a_esquerda(X,Y,salao(_,_,_,X,Y)).    

	ao_lado_de(X,Y,S) :-
    	exatamente_a_esquerda(X,Y,S);
    	exatamente_a_esquerda(Y,X,S).

	uma_das_pontas(X,salao(X,_,_,_,_)).
	uma_das_pontas(X,salao(_,_,_,_,X)).

    terceira_cadeira(X,salao(_,_,X,_,_)).
	primeira_cadeira(X,salao(X,_,_,_,_)).
	quarta_cadeira(X,salao(_,_,_,X,_)).
    segunda_cadeira(X,salao(_,X,_,_,_)).
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    