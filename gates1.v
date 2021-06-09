module gate (A,B,sel,key,and1,nand1,or1,nor1,not1,not2,not3,not4,xor1,xnor1,alb,agb,aeb,s,c,m,d);
input [1:0] A,B;
input [3:0] sel;
input key;
output and1,nand1,or1,nor1,not1,not2,not3,not4,xor1,xnor1,alb,agb,aeb;
output [1:0] s,c,d;
output [3:0] m;
reg and1,nand1,or1,nor1,not1,not2,not3,not4,xor1,xnor1,alb,agb,aeb;
reg [1:0] s,c,d;
reg [3:0] m;
always @ (A,B,sel,key)
begin
	case(sel)
		4'd7 :
			begin 
				and1 = A[0] & B[0] & A[1] & B[1];
				or1=1'bz;
				nor1=1'bz;
				xnor1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				nand1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd3 :
			begin
				or1 = A[0] | B[0] | A[1] | B[1];
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xnor1=1'bz;
				xor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd15 :
			begin
				not1 = ~A[0];
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				and1=1'bz;
				nand1=1'bz;
				or1=1'bz;
				nor1=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd14 :
			begin
				xor1 = A[0] ^ B[0] ^ A[1] ^ B[1];
				or1=1'bz;
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd13 :
			begin
				not2 = ~B[0];
				not1=1'bz;
				not3=1'bz;
				not4=1'bz;
				and1=1'bz;
				nand1=1'bz;
				or1=1'bz;
				nor1=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				agb=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd11 :
			begin
				not3 = ~A[1];
				not1=1'bz;
				not2=1'bz;
				not4=1'bz;
				and1=1'bz;
				nand1=1'bz;
				or1=1'bz;
				nor1=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end	
		4'd9 :
			begin
				not4 = ~B[1];
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				and1=1'bz;
				nand1=1'bz;
				or1=1'bz;
				nor1=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				agb=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd5 :
			begin
				nand1 = ~(A[0] & B[0] & A[1] & B[1]);
				or1=1'bz;
				nor1=1'bz;
				xnor1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				and1=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd1 :
			begin
				nor1 = ~(A[0] | B[0] | A[1] | B[1]);
				or1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xnor1=1'bz;
				xor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd12 :
			begin
				xnor1 = ~(A[0] ^ B[0] ^ A[1] ^ B[1]);
				or1=1'bz;
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
			
			// ARITHMETIC UNIT
			
			// Magnitude Comparator unit
			
		4'd0 :
			begin
				alb = (~A[1]&B[1]) | (~A[0]&B[0]&B[1]) | (~A[0]&~A[1]&B[0]);
				agb = (A[1]&~B[1]) | (A[0]&~B[1]&~B[0]) | (A[0]&A[1]&~B[0]);
				aeb = ~(agb | alb);
				or1=1'bz;
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
			
			// Adder / Subtractor unit
			
		4'd10 :
			begin
				s[0] = (A[0]^(B[0]^key))^key;
				c[0]=1'bz;
				s[1]=1'bz;
				c[1]=1'bz;
				or1=1'bz;
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
			
		4'd8 :
			begin
				c[0] = (A[0]&(B[0]^key)) | (A[0]&key) | ((B[0]^key)&key);
				s[0]=1'bz;
				s[1]=1'bz;
				c[1]=1'bz;
				or1=1'bz;
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd6 :
			begin
				
				s[1] = (A[1]^(B[1]^key))^((A[0]&(B[0]^key)) | (A[0]&key) | ((B[0]^key)&key));
				c[1] = (A[1]&(B[1]^key)) | (A[1]&key) | ((B[1]^key)&key); 
				s[0]=1'bz;
				c[0]=1'bz;
				or1=1'bz;
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
			
			// Multiplier unit
			
		4'd4 :
			begin
				m[0] = A[0]&B[0];
				m[1] = (A[0]&B[1]) ^ (B[0]&A[1]);
				m[2] = ((B[0]&A[1]) & (A[0]&B[1])) ^ (B[1]&A[1]);
				m[3] = ((B[0]&A[1]) & (A[0]&B[1])) & (B[1]&A[1]);
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				or1=1'bz;
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
				d[0]=1'bz;
				d[1]=1'bz;
			end
		4'd2 :
			begin
				d[1] = A[1]&~B[1]&B[0];
				d[0] = (A[0]&~B[1]&B[0]) | (A[1]&A[0]&(B[0]|B[1])) | (A[1]&B[1]%~B[0]);
				s[0]=1'bz;
				c[0]=1'bz;
				s[1]=1'bz;
				c[0]=1'bz;
				m[0]=1'bz;
				m[1]=1'bz;
				m[2]=1'bz;
				m[3]=1'bz;
				or1=1'bz;
				nor1=1'bz;
				nand1=1'bz;
				and1=1'bz;
				not1=1'bz;
				not2=1'bz;
				not3=1'bz;
				not4=1'bz;
				xor1=1'bz;
				xnor1=1'bz;
				alb=1'bz;
				aeb=1'bz;
				agb=1'bz;
			end
				
	endcase
end
endmodule