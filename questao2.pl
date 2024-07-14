0.4::la.
0.9::str(tr); 0.09::str(nas).
0.33::str(dry); 0.33::str(wet); 0.33::str(snow_covered).

0.05::r     :-      la, str(tr).
0::r        :-    \+la, str(tr).
0.6::r      :-      la, str(nas).
0.05::r     :-    \+la, str(nas).
0.95::r     :-      la, str(snow_covered).
0.7::r      :-    \+la, str(snow_covered).

0.99::b.
0.9::k.

0.04::v    :-      r.
0.99::v    :-    \+r.

0.99::li    :-      v,b,k.
0.01::li    :-    \+k,v,b.
0.01::li    :-    \+b,v,k.
0.001::li   :-    \+b,\+k,v.
0.3::li     :-    \+v,b,k.
0.005::li   :-    \+v,\+b,k.
0.005::li   :-    \+v,\+k,b.
0::li       :-    \+v,\+b,\+k.

evidence(str(snow_covered),true).

query(v).
