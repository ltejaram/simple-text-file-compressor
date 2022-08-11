#include <iostream>
#include <bits/stdc++.h>
using namespace std;
struct node
        {
    int frequency;
    string key;
    struct node*left,*right,*parent;
    node() : frequency(0),left(nullptr), right(nullptr),parent(nullptr) {}
    node(string k,int x) : key(k),frequency(x) ,left(nullptr), right(nullptr),parent(nullptr){}
    node(string k,int x, node *left, node *right) : key(k),frequency(x), left(left), right(right),parent(nullptr) {}
};
int search(string str,vector<node*> narray)
{
    for(int i=0;i<narray.size();i++)
    {
        if(narray[i]->key==str)
            return i;
    }
    return -1;
}
node* search_tree(node*root,string str)
{
    if(root!=nullptr)
    {
        if(root->key==str)
            return root;
        node *k= search_tree(root->left,str);
        if(k!=nullptr)
            return k;
        else
            return search_tree(root->right,str);
    }
    return nullptr;
}
string code_generate(node *root,string str)
{
    string code;
    node *k= search_tree(root,str);
    node *t=k;
    while(k!= nullptr && k->parent!=nullptr)
    {
        node* l=k->parent;
        if(k==l->left)
            code='0'+code;
        if(k==l->right)
            code='1'+code;
        k=k->parent;
    }
    return code;
}
struct compare
{
    bool operator() (node* &p1, node* & p2)
    {

        return p1->frequency > p2->frequency;
    }
};

int main() {
    // compression start 
    ifstream input;
    input.open("../input.txt");
    string str1;
    string temp;
    while(getline(input,temp))
    {
        str1+=temp;

        str1+='\n';
    }
    str1.erase(str1.end()-1);

    vector<node*> narray;
    stringstream ss(str1);
    vector<string> nonrepstring;
    char *str=(char *) malloc(sizeof(char)*100000);
    strcpy(str,str1.c_str());
    for (;str[0]!='\0';) {
        char *str2=(char *) malloc(sizeof(char)*1000);
        if(str[0]=='\n') {
            strcpy(str2,"\\n");
            str=str+ strlen(str2);
        }
        else if(str[0]==' ')
        {
            strcpy(str2," ");
            str=str+ strlen(str2);
            continue;
        }
        else {
            sscanf(str, "%s", str2);
            str=str+ strlen(str2);
        }
        int idx= search(str2,narray);
        if(idx==-1)
        {
            node *t=new node(str2,1);
            narray.push_back(t);
            nonrepstring.push_back(str2);
        }
        else {
            narray[idx]->frequency++;
        }
    }
    priority_queue<node*,vector<node*>,compare >pq;
    for(auto x:narray)
        pq.push(x);

    while(pq.size()>1)
    {
        node *k1=pq.top();
        pq.pop();
        node *k2=pq.top();
        pq.pop();
        node *fin=new node("$",k1->frequency+k2->frequency,k1,k2);
        k1->parent=fin;
        k2->parent=fin;
        pq.push(fin);
    }
    node *root=pq.top();
    pq.pop();
    map<string,string> codestore;
    input.close();
    ofstream output;
    output.open("../output.hof");
    for(auto x:nonrepstring)
    {
       string code= code_generate(root,x);
       output<<x<<" "<<code<<" ";
       codestore[x]=code;
    }
    output<<"\n";
    strcpy(str,str1.c_str());
    for (;str[0]!='\0';) {
        char *str2 = (char *) malloc(sizeof(char) * 100);
        if (str[0] == '\n') {
            strcpy(str2, "\\n");

            str = str + strlen(str2);

        } else if (str[0] == ' ') {
            strcpy(str2, " ");
            str = str + strlen(str2);
            continue;
        } else {
            sscanf(str, "%s", str2);
            str = str + strlen(str2);
        }
        output<<codestore[str2];
    }
    output.close();
    
    // decompression start
    map<string ,string> decode;
    ifstream input2;        
    input2.open("../output.hof");
    string mapread;
    getline(input2,mapread);

    stringstream ss1(mapread);
    while(!ss1.eof())
    {
        string temp,temp1;
        ss1>>temp;
        ss1>>temp1;
        if(temp=="\\n")
            temp="\n";
        decode[temp1]=temp;
    }
    ofstream output2;
    output2.open("../output2.txt");
    string coded_string;
    getline(input2,coded_string);
    stringstream ss2(coded_string);

    string ans="";
    while (!ss2.eof())
    {
        char k;
        ss2>>k;
        string temp;
        temp+=k;
        while(decode.find(temp)==decode.end() && !ss2.eof())
        {
            ss2>>k;
            temp+=k;
        }
        if(decode.find(temp)!=decode.end()) {
           output2<<decode[temp];
           if(!ss2.eof())
               output2<<" ";
        }
    }
    output2.close();
    return 0;
}
