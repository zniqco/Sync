tlen = string_length(caption);

twid = 0;
for (i = 0; i < tlen; i += 1) {
 dch[i] = string_char_at(caption, i + 1);
 dwid[i] = string_width(dch[i]);
 dch[i] = ord(dch[i]) - 32;
 twid += dwid[i];
}

