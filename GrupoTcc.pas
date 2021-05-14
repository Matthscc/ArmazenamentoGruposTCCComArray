Program Pzim ;
var a,b,escolha:integer;
var nome:array [1..1000,1..3] of string;   {1000 grupos com 3 nomes cada.}
	Begin
		clrscr;
		Writeln ('Bem vindo ao programa de organização de grupos de TCC.');
		Writeln('Cada grupo há de ter apenas 3 componentes, nem mais nem menos.');
		writeln('');
		writeln('O Limite máximo de cadastros por sessão do programa é de 1000 grupos.'); {A partir de 10.000 comecei a reparar que o pascalzim apresentava demora expressiva ao abrir o console, então deixei o máximo em 1000 linhas e, consequentemente, 1000 grupos.}
		writeln('');
		a:=1;
		b:=1;
		escolha:=1;
		repeat
			write('A seguir, insira os nomes dos integrantes do grupo ',a,', separando-os pela tecla Enter: ');
			for b:=1 to 3 do
				begin
					read(nome[a,b]);	{Inicia-se em [1,1], com o loop vai até [1,3], com os três nomes em mesma linha (1 grupo)}
				end;
			writeln('');
			writeln('Grupo ', a,' cadastrado. É composto por: ',nome[a,1],', ', nome[a,2],' e ', nome[a,3],'.'); {Como a varia pra cada grupo, lê a linha de cada loop específico}
			writeln('');
			writeln('Você já cadastrou ',a,' grupo(s). Deseja cadastrar mais um?');
			a:=a+1;     {Aqui a recebe um acréscimo de 1, mudando a linha que será armazenada a próxima informação. Se o usuário não quiser mais, não faz diferença, pois o loop ainda não repetiu. Se ele quiser repetir, a próxima repetição já está em outra coordenada.}
			writeln('');
			Writeln('Sim? Digite 1.');
			Writeln('Não? Digite 2.');
			read(escolha);
			writeln('');
		until escolha=2;
		readkey;
	End.