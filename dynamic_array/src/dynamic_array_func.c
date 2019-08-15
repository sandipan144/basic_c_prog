#include "dynamic_array_func.h"

void print_array(int *a, int size){
	int i;
	printf("The array elements are : ");
	for(i=0;i<size;i++){
		printf("%d ", *a);
		a++;
	}
	printf("\n");
}
