with Ada.Text_IO; use Ada.Text_IO;
with Sort;

procedure Main is
   L : Sort.List := (9,4,2,1,5,2,5,1);
   index0 : Integer := 0;
   last_index : Integer := 7;
begin
   Sort.Print_List (L);
   L := Sort.Merge (L, index0, last_index);
   Sort.Print_List (L);
end Main;
