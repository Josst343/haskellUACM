
suma a b = (fst a)*(div (lcm(snd a)(snd b))(snd a) ) + (fst b)*(div (lcm(snd a)(snd b))(snd b))

abajo a b = lcm (snd a) (snd b)

resS a b = ((suma a b),(abajo a b))

resta a b = (fst a)*(div (lcm(snd a)(snd b))(snd a) ) - (fst b)*(div (lcm(snd a)(snd b))(snd b))

resR a b = ((resta a b),(abajo a b))