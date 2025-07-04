#include <stdio.h>
#include <conio.h>
#include <alloc.h>
typedef struct treeNode *treePointer;
struct treeNode
{
    int data;
    treePointer leftChild, rightChild;
};
treePointer root = NULL;
void create();
void preOrder(treePointer);
void main()
{
    int choice;
    do
    {
        clrscr();
        printf("\n\tBINARY SEARCH TREE OPERATIONS\n");
        printf("\n\t\t1. Create");
        printf("\n\t\t2. Traverse preorder");
        printf("\n\t\t3. Exit");
        printf("\n\n\tEnter your choice(1-3) : ");
        scanf("%d", &choice);
        switch (choice)
        {
        case 1:
            create();
            break;
        case 2:
            if (root == NULL)
                printf("\nTree is empty...");
            else
            {
                printf("\nPreorder traversal is ");
                preOrder(root);
            }
            break;
        default:
            continue;
        }
        getch();
    } while (choice != 3);
}
void create()
{
    int i, n = 0, left;
    treePointer node, temp, p;
    if (root != NULL)
    {
        printf("\nTree already exists...");
        return;
    }
    printf("\nEnter the number of nodes : ");

    scanf("%d", &n);
    printf("\nEnter %d nodes for the binary search tree:\n", n);
    root = (treePointer)malloc(sizeof(*root));
    scanf("%d", &root->data);
    root->leftChild = root->rightChild = NULL;
    for (i = 0; i < n - 1; i++)
    {
        temp = (treePointer)malloc(sizeof(*temp));
        scanf("%d", &temp->data);
        temp->leftChild = temp->rightChild = NULL;
        node = root;
        while (node != NULL)
        {
            left = 0;
            p = node;
            if (temp->data < node->data)
            {
                left = 1;
                node = node->leftChild;
            }
            else
                node = node->rightChild;
        }
        if (left)
            p->leftChild = temp;
        else
            p->rightChild = temp;
    }
    printf("\n\nBinary search tree created with %d nodes...", n);
}
void preOrder(treePointer node)
{
    if (node == NULL)
        return;
    printf(" %d", node->data);
    preOrder(node->leftChild);
    preOrder(node->rightChild);
}