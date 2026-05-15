#!/bin/bash

## Find all PDF files in home directory
#pdf=$(find ~ -type f -iname "*.pdf" 2>/dev/null | dmenu -i -l 20 -p "PDFs:")
#
## Open selected PDF
#[ -n "$pdf" ] && xdg-open "$pdf"
#!/bin/bash

#!/bin/bash

pdf=$(find "$HOME" \
  -path "$HOME/Vedapdf" -prune -o \
  -iname "*.pdf" -print | dmenu -fn "monospace:size=16:style=bold"  -i -l 50)

[ -n "$pdf" ] && zathura "$pdf"
