fid = fopen('LoveTest.provn','w');
fprintf(fid,'document\n');
e1 = subfnEntity(fid,'jason');
e2 = subfnEntity(fid,'floh');
e3 = subfnEntity(fid,'theliau');
e4 = subfnEntity(fid,'sezni');
a1 = subfnActivity(fid,'love');
d1 = subfnwasDerivedFrom(fid,e2,e3,'',a1);
d2 = subfnwasDerivedFrom(fid,e2,e4,'',a1);
u1 = subfnUsed(fid,a1,e1);
u2 = subfnUsed(fid,a1,e2);
fprintf(fid,'endDocument\n');
fclose(fid)