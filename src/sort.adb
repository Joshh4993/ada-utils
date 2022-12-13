with Ada.Text_IO; use Ada.Text_IO;

package body Sort is 
   function Bubble (L : in out List) return List is
   begin
      for I in L'Range loop -- outer loop
         declare
            J : Integer := 0;
         begin
            loop --inner loop
               exit when J >= L'Length - I - 1;
               if L (J) > L (J + 1) then
                  declare
                     X: Integer := L (J);
                     Y: Integer := L (J + 1);
                  begin
                     L (J) := Y;
                     L (J+1) := X;
                  end;
               end if;
               J := J+1;
            end loop;
         end;
      end loop;
      return L;
   end Bubble; 
   function Insertion (L : in out List) return List is
   begin
      for I in L'Range loop --outer loop
         declare
            key: Integer := L (I);
            j: Integer := I - 1;
         begin
            while j >= 0 and then key < L (j) loop
               L (j+1) := L (j);
               j := j - 1;
            end loop;
            L (j+1) := key;
         end;
      end loop;
      return L;
   end Insertion;
   function EndMerge(L: in out List; left: in out Integer; middle: in out Integer; right: in out Integer) return List is
      n1 : Integer := 0;
      n2 : Integer := 0;
      leftList : MergeList := MergeList(<>);
   begin
      n1 := middle - left + 1;
      n2 := right - middle;
      leftList := MergeList(0 .. n1);
      Put (leftList);
   end EndMerge;
   function Merge (L: in out List; left: in out Integer; right: in out Integer) return List is
   begin
      if left < r then
         declare
            middle : Integer := 0;
         begin
            middle := left+(right-1)/2;
            Merge(L, left, middle);
            Merge(L, middle+1, right);
            EndMerge(L, left, middle, right);
         end;
      end if;
      return L;
   end Merge;
   procedure Print_List (L : in List) is
   begin
      for I in L'Range loop
         Put (Integer'Image (L (I)));
      end loop;
      New_Line;
   end Print_List;
end Sort;
