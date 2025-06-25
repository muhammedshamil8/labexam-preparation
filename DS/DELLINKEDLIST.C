#include<stdio.h>
#include<alloc.h>
#include<conio.h>
typedef struct listnode* listpointer;
struct listnode
{
int data;
listpointer next;
};
listpointer fnode=NULL,p;
int listSize=0;
void create();
void list();
void del(int);
void main()
{
int choice;
int n,pos;
do
{
clrscr();
printf("\n\tLINKED LIST OPERATIONS\n");
printf("\n\t\t1. CREATE");
printf("\n\t\t2. LIST");
printf("\n\t\t3. DELETE");
printf("\n\t\t4. EXIT");
printf("\n\n\tEnter your choice(1-4) : ");
scanf("%d",&choice);
switch(choice)
{
case 1:create();
break;
case 2:list();
break;
case 3:printf("\nEnter the data : ");
scanf("%d",&n);
del(n);
break;
default:continue;
}
getch();
}while(choice!=4);
}
void create()
{
int i;
if(fnode!=NULL)
{
printf("\nList already created...");
return;
}
printf("\nEnter the number of elements : ");

scanf("%d",&listSize);
if(listSize<1) return;
printf("\nEnter %d elements into list :\n",listSize);
fnode=(listpointer)malloc(sizeof(*fnode));
scanf("%d",&fnode->data);
fnode->next=NULL;
p=fnode;
for(i=0;i<listSize-1;i++)
{
p->next=(listpointer)malloc(sizeof(*p));
p=p->next;
scanf("%d",&p->data);
}
p->next=NULL;
printf("\nList created and %d elements inserted into the
list",listSize);
}
void list()
{
if(fnode==NULL)
{
printf("\nList is empty...");
return;
}
printf("\nElements in the list :\n\n");
for(p=fnode;p!=NULL;p=p->next)
printf(" %d",p->data);
}
void del(int x)
{
listpointer d;
if(fnode==NULL)
{
printf("\nList is empty...");
return;
}
if(fnode->data==x)
{
d=fnode;
fnode=fnode->next;
}
else
{
for(p=fnode;p->next!=NULL && p->next->data!=x;p=p->next)
;
if(p->next==NULL)
{
printf("\nElement not found...");
return;
}
d=p->next;
p->next=d->next;
}
free(d);
listSize--;
printf("\nOne element deleted...");
}