text = fileread('Windows Default Set.txt');
%text=text(1:500)
mid = regexprep(text,'[^\n]*?Command Window[^\n]*?\n','AAA$0BBB');
out = regexprep(mid,'(\nBBB|^).*?(AAA|$)','\n');
%%
out = regexprep(out,'\n','|\n|');
out = regexprep(out,'\t','\t|');
fileID = fopen('Shortcut_of_Command_Window.md','w');
fwrite(fileID,out)
fclose(fileID); 
