package sort is
   type List is array (0 .. 7) of Integer;
   type MergeList is array (Integer range <>) of Integer;
   function Bubble(L : in out List) return List;
   function Insertion(L : in out List) return List;
   function Merge (L: in out List; left: in out Integer; right: in out Integer) return List;
   function EndMerge(L: in out List; left: in out Integer; middle: in out Integer; right: in out Integer) return List;
   procedure Print_List (L : in List);
end sort;
