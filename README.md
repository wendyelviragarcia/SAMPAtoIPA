# SAMPAtoIPA
A set of Praat scripts that change the transcription of all of the TextGrid files in a folder from SAMPA (MAUS output version) to IPA.

The avaliable scripts have been designed for Catalan and for Spanish, for other languages you may need to add symbols.

## Catalan symbols

For Catalan there are a few innacuracies or simply things that I transcribe differently in the MAUS documentacion.
- I have corrected what, based on the comments in the MAUS documentation and my own experience in transcription, I believe to be a mistake: [rr] is not a long [rː] but rather the trill [r], whereas a single [r] in MAUS-SAMPA is the tap [ɾ]. Similarly, [jj] does not correspond to a long [j] but the voiced palatal approximant [ʝ̞].
- I use the tie for affricates, e.g. [t͡ʃ].
- I use the dental diacritic for dental stops, e.g. [t̪].
- I use the lowered diacritic for all the 'fricatives' because they are approximants in approximately 85% of cases [β̞]. This way, removing the diacritic when a true fricative is encountered is easier.
- I have added the velarized lateral [ɫ].

Here you the whole list of the equivalencies that I used:

| MAUS  | MAUS-IPA Interpretation | IPA in This Script |
|-------|-------------------------|--------------------|
| usb   | (..)                    | (..)               |
| nib   | (.)                     | (.)                |
| p:    | (...)                   | (...)              |
| p     | (...)                   | (...)              |
| tS    | tʃ                      | t͡ʃ                 |
| rr    | rː                      | r                  |
| r\    | ɹ                       | ɹ                  |
| o~    | õ                       | õ                  |
| jj    | jː                      | ʝ̞                  |
| h\    | ɦ                       | ɦ                  |
| e~    | ẽ                       | ẽ                  |
| dZ    | dʒ                      | dʒ                 |
| dz    | dz                      | dz                 |
| a~    | ã                       | ã                  |
| Z     | ʒ                       | ʒ                  |
| z     | z                       | z                  |
| x     | x                       | x                  |
| w     | w                       | w                  |
| v     | v                       | v                  |
| u     | u                       | u                  |
| T     | θ                       | θ                  |
| t     | t                       | t̪                  |
| S     | ʃ                       | ʃ                  |
| s     | s                       | s                  |
| r     | r                       | r                  |
| p     | p                       | p                  |
| O     | ɔ                       | ɔ                  |
| o     | o                       | o                  |
| N     | ŋ                       | ŋ                  |
| n     | n                       | n                  |
| m     | m                       | m                  |
| L     | ʎ                       | ʎ                  |
| l     | l                       | l                  |
| k     | k                       | k                  |
| J     | ɲ                       | ɲ                  |
| j     | j                       | j                  |
| i     | i                       | i                  |
| h     | h                       | h                  |
| G     | ɣ                       | ɣ̞                  |
| g     | ɡ                       | ɡ                  |
| f     | f                       | f                  |
| E     | ɛ                       | ɛ                  |
| e     | e                       | e                  |
| D     | ð                       | ð̞                  |
| d     | d                       | d̪                  |
| B     | β                       | β̞                  |
| b     | b                       | b                  |
| a     | a                       | a                  |
| @     | ə                       | ə                  |
| '>'   | (...)                   |                    |
| '<'   | (...)                   |                    |
| 5     | not-included            | ɫ                  |
| r     | not-included            | ɾ                  |

## Spanish symbols
The same principles as in the previous section apply, including the use of ties for affricates and the approximant diacritic.

However, the Spanish SAMPA system has a significant problem. In Spanish SAMPA, [N] is used for the palatal nasal, but in X-SAMPA, that symbol represents the velar nasal, a necessary symbol in many Spanish varieties. This version follows X-SAMPA, so be aware that if you intend to use it for converting Spanish SAMPA files (e.g., the Glissando corpus, VILE corpus...), you will need to make that adjustment.
