printf "Testing Eisenstein series of weight 1...";
F:=QuadraticField(5);
prec:=20;
M:=GradedRingOfHMFs(F, prec);
ZF:=Integers(F);
N:= 31*ZF;
H := HeckeCharacterGroup(N, [1,2]);
chi1, chi2 := Explode([H.1, H.2]);
chi := chi1*chi2^3;
IsCompatibleWeight(chi, 1);
M1 := HMFSpace(M, N, [1,1], chi^(-1));
AdmChars := EisensteinAdmissibleCharacterPairs(M1);
pair := AdmChars[1];
E1 := EisensteinSeries(M1, pair[1], pair[2]);
return true;
