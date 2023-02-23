`default_nettype none

module WarpScheduler;
    int a_array[*];
    int index;
    initial begin
        //allocating array and assigning value to it 
        repeat(3) begin
          a_array[index] = index*2;
          index=index+4;
        end

        //exists()-Associative array method
        if (a_array.exists(8)) $display("Index 8 exists in a_array");
        else $display("Index 8 doesnt exists in a_array");

        //last()-Associative array method
        a_array.last(index);
        $display("Last entry is a_array[%0d] = %0d", index, a_array[index]);

        //prev()-Associative array method
        a_array.prev(index);
        $display("entry is a_array[%0d] = %0d", index, a_array[index]);

        //next()-Associative array method
        a_array.next(index);
        $display("entry is a_array[%0d] = %0d", index, a_array[index]);
    end
endmodule
