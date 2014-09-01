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
	char str[200];
	scanf(" %20s", &str);
	printf("You entered: %s\n", str);
	printf("ALSO, FOR FUTURE REFERENCE AND ARCHIVING, YOU SAID OXYHAEMOGLOBIN %d TIMES.\n", what); 
	return 0;
}

