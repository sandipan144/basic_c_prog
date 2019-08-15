#include"extra_space_remove_func.h"

char *remove_extra_space(char str[], int len){
	int i;
	char *str_1 = NULL, *base = NULL;
	str_1 = (char *)malloc(len * sizeof(char));
	base = str_1;
	for(i = 0;i < (len-1);i++){
		if(str[i] == ' ' || str[i] == '\t'){
		       if(str[i+1] == ' ' || str[i+1] == '\t'){
			       continue;
		       }
		       else{
			       *str_1++ = ' ';
		       }
		}
		else{
			*str_1++ = str[i];
		}
	}
	*str = '\0';
	return base;
}
