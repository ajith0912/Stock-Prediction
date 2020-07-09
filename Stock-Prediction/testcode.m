% BACKPROPAGATION ALGORITHM TESTING: ONLY FOR SINGLE HIDDEN LAYER
pattern=[0.992272174	0.993241816	0.986543631
0.992386796	0.994537051	0.990059282
0.998833263	0.999673724	0.991979024
0.997790137	0.99963024	0.997607016
0.996046481	0.997324322	0.995568744
0.996750432	0.997308296	0.994724667
0.999066415	0.999946451	0.997715091
0.996645875	1	0.996637373
0.992446794	0.996505261	0.992261132];
Q=9;  
fid1 = fopen('bpnout.dat','w'); % Store the output of test data
fid = fopen('wih.dat'); % input-hidden values
a = fscanf(fid,'%g %g %g',[3 inf]); % It has three rows now.
Wih = a;
fclose(fid);

fid = fopen('who.dat'); % hidden-output values
a = fscanf(fid,'%g %g',[6 inf]); % It has two rows now.
Whj = a;
fclose(fid);


for k = 1:Q % for loop for input test pattern
      Si = [ pattern(:,1:3)];	% Input signals
      Zh = Si(k,:) * Wih;				% Hidden activations
      Sh = [1./(1 + exp(-Zh))];	% Binary activation function Hidden signals
      Yj = Sh * Whj;						% Output activations
      Sy(k) = 1./(1 + exp(-Yj));			% Output signals     

      fprintf(fid1,'%12.8f\n',Sy(k));     
  
 
   end
  % status = fclose(fid);   
   Sy
   fclose(fid1);
   