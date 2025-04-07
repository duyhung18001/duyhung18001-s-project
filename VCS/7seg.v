module lmao(
    input clk, reset,pause,
    output reg[6:0]seg0,
    output reg [6:0]seg1,
    output reg [6:0]seg2
    );
    reg [3:0]a;
    reg [3:0]b;
    reg [3:0]c;
    always @ (posedge(clk) or posedge(reset))
    begin
    if (reset) begin
        a<=0;
        b<=0;
        c<=0;
    end
    else if(!pause) begin
        if(a==4'd9) begin
            a<=0;
         if(b==4'd9) begin
            b<=0;
            if(c==4'd9)
                c<=0;
         else
            c<=c+1;
    end else
            b<=b+1;
    end else
        a<=a+1;
    end
    end
    always @(posedge clk) begin
        case({a})
            4'd0 : {seg0}=7'b1111110;
            4'd1 : {seg0}=7'b0110000;
            4'd2 : {seg0}=7'b1101101;
            4'd3 : {seg0}=7'b1111001;
            4'd4 : {seg0}=7'b0110011;
            4'd5 : {seg0}=7'b1011011;
            4'd6 : {seg0}=7'b1011111;
            4'd7 : {seg0}=7'b1110000;
            4'd8 : {seg0}=7'b1111111;
            4'd9 : {seg0}=7'b1111011;
        endcase
    end
    always @(posedge clk) begin
        case({b})
            4'd0 : {seg1}=7'b1111110;
            4'd1 : {seg1}=7'b0110000;
            4'd2 : {seg1}=7'b1101101;
            4'd3 : {seg1}=7'b1111001;
            4'd4 : {seg1}=7'b0110011;
            4'd5 : {seg1}=7'b1011011;
            4'd6 : {seg1}=7'b1011111;
            4'd7 : {seg1}=7'b1110000;
            4'd8 : {seg1}=7'b1111111;
            4'd9 : {seg1}=7'b1111011;
        endcase
    end
    always @(posedge clk) begin
        case({c})
            4'd0 : {seg2}=7'b1111110;
            4'd1 : {seg2}=7'b0110000;
            4'd2 : {seg2}=7'b1101101;
            4'd3 : {seg2}=7'b1111001;
            4'd4 : {seg2}=7'b0110011;
            4'd5 : {seg2}=7'b1011011;
            4'd6 : {seg2}=7'b1011111;
            4'd7 : {seg2}=7'b1110000;
            4'd8 : {seg2}=7'b1111111;
            4'd9 : {seg2}=7'b1111011;
        endcase
    end
endmodule 