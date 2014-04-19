%{
  int what=0;
%}

%%

oxyhaemaglobin {ECHO; what++;}

%%

int main() 
{
	printf("====== BEGIN ====\n"); 
	yylex();
	printf("====== END ====\n"); 
	printf("ALSO, FOR FUTURE REFERENCE AND ARCHIVING, YOU SAID OXYHAEMOGLOBIN %d TIMES.\n", what); 
	return 0;
}

