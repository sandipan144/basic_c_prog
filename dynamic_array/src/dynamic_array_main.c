#include "dynamic_array_func.h"

int main(){

	int i,n;
	int *array = NULL, *base_address = NULL;
	printf("Enter the size of the array: ");
	scanf("%d", &n);
	array = (int *)calloc(n, sizeof(int)); //assign size to array
	base_address = array; //storing initial address
	printf("Enter %d numbers:\n",n);
	for(i = 0; i<n; i++){
		scanf("%d",array);
		array++;
	}
	print_array(base_address,n); //passing the starting address and size of array
	return 0;
}
