Program Pzim ;
var a,b,escolha:integer;
var nome:array [1..1000,1..3] of string;   {1000 grupos com 3 nomes cada.}
	Begin
		clrscr;
		Writeln ('Bem vindo ao programa de organiza��o de grupos de TCC.');
		Writeln('Cada grupo h� de ter apenas 3 componentes, nem mais nem menos.');
		writeln('');
		writeln('O Limite m�ximo de cadastros por sess�o do programa � de 1000 grupos.'); {A partir de 10.000 comecei a reparar que o pascalzim apresentava demora expressiva ao abrir o console, ent�o deixei o m�ximo em 1000 linhas e, consequentemente, 1000 grupos.}
		writeln('');
		a:=1;
		b:=1;
		escolha:=1;
		repeat
			write('A seguir, insira os nomes dos integrantes do grupo ',a,', separando-os pela tecla Enter: ');
			for b:=1 to 3 do
				begin
					read(nome[a,b]);	{Inicia-se em [1,1], com o loop vai at� [1,3], com os tr�s nomes em mesma linha (1 grupo)}
				end;
			writeln('');
			writeln('Grupo ', a,' cadastrado. � composto por: ',nome[a,1],', ', nome[a,2],' e ', nome[a,3],'.'); {Como a varia pra cada grupo, l� a linha de cada loop espec�fico}
			writeln('');
			writeln('Voc� j� cadastrou ',a,' grupo(s). Deseja cadastrar mais um?');
			a:=a+1;     {Aqui a recebe um acr�scimo de 1, mudando a linha que ser� armazenada a pr�xima informa��o. Se o usu�rio n�o quiser mais, n�o faz diferen�a, pois o loop ainda n�o repetiu. Se ele quiser repetir, a pr�xima repeti��o j� est� em outra coordenada.}
			writeln('');
			Writeln('Sim? Digite 1.');
			Writeln('N�o? Digite 2.');
			read(escolha);
			writeln('');
		until escolha=2;
		readkey;
	End.