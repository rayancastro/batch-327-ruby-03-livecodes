def encrypt(text, permutation_level = -3 )
  # define alphabet array
  alphabet_array = ("A".."Z").to_a

  # split text in a letters array
  letters_array = text.split("")

  # map through letters array
  encrypted_letters = letters_array.map do |letter|

    # test if it's a letter, if true change it, if false maintain
    if alphabet_array.include?(letter.upcase)
      alphabet_array[(alphabet_array.index(letter) + permutation_level) % 26 ]
    else
      letter
    end

  end
  return encrypted_letters.join
end


def decrypt(encrypted_text)
  encrypt(encrypted_text, 3)
end



encrypted_text = "FK ZOVMQLDOXMEV, X ZXBPXO ZFMEBO, XIPL HKLTK XP ZXBPXO'P ZFMEBO, QEB PEFCQ ZFMEBO, ZXBPXO'P ZLAB LO ZXBPXO PEFCQ, FP LKB LC QEB PFJMIBPQ XKA JLPQ TFABIV HKLTK BKZOVMQFLK QBZEKFNRBP. FQ FP X QVMB LC PRYPQFQRQFLK ZFMEBO FK TEFZE BXZE IBQQBO FK QEB MIXFKQBUQ FP OBMIXZBA YV X IBQQBO PLJB CFUBA KRJYBO LC MLPFQFLKP ALTK QEB XIMEXYBQ. CLO BUXJMIB, TFQE X IBCQ PEFCQ LC 3, A TLRIA YB OBMIXZBA YV X, B TLRIA YBZLJB Y, XKA PL LK. QEB JBQELA FP KXJBA XCQBO GRIFRP ZXBPXO, TEL RPBA FQ FK EFP MOFSXQB ZLOOBPMLKABKZB."

puts decrypt(encrypted_text)
