#include<stdio.h>
#include<alloc.h>
#include<conio.h>
typedef struct listnode* listpointer;
struct listnode
{
int data;
listpointer next;
};
void main()
{
int i,n;
listpointer fnode,p;
clrscr();
printf("\nEnter the number of elements : ");
scanf("%d",&n);
if(n<1) return;
printf("\nEnter %d elements into list :\n",n);
fnode=(listpointer)malloc(sizeof(*fnode));
scanf("%d",&fnode->data);
fnode->next=NULL;
p=fnode;
for(i=0;i<n-1;i++)
{
p->next=(listpointer)malloc(sizeof(*p));
p=p->next;
scanf("%d",&p->data);
}
p->next=NULL;
printf("\nElements in the list :\n\n");
for(p=fnode;p!=NULL;p=p->next)
printf(" %d",p->data);
getch();
}