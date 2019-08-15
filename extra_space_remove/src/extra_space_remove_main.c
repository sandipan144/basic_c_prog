#include"extra_space_remove_func.h"

int main(){
	char str[MAX_STRING_SIZE] = {0};
	int l;
	printf("Enter a string :");
	fgets(str, MAX_STRING_SIZE, stdin);
	l = strlen(str);
	printf("The modified string is: %s\n", remove_extra_space(str,l));
	return 0;
}
