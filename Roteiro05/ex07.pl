%incompleta 

prop_um --> [p].
prop_um --> [q].
prop_um --> [r].

prop --> prop_um.
prop --> prop_um, [e], prop_um.

prop --> prop_um, [ou], [_].
prop --> [_], [ou], prop_um.

prop_nao --> [nao], ['('], prop, [')'].

prop_implica --> [_], [implica], prop.

/*
T -> T
F -> T
F -> F
T -> F (false)
*/
