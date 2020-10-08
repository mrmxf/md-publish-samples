# post-process shell script for this document
# all file paths are relative to the root folder of the project
#
# EKO is the prefix for success messages to the console
# ERO is the prefix for error   messages to the console
#
SCRIPTPATH="$( cd "$(dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 ; pwd -P )"
#
# copy the elements to the docs folder
SRC=src
DST=docs
#rename the publish copy with defaults from mdpub-CONFIG
SRC=$DST/ag04-pub.docx
FN="$DST/$DOC_PREFIX-$DOC_TITLE-$MDPUB_DATE($DOC_COMMENT-publish).docx"
if [ -f "$SRC" ] ; then
  mv "$SRC" "$FN"
  if [[ $? -eq 0 ]] ; then
    echo -e "$EKO moved file to $Cfile$FN$Coff"
  else
    echo -e "$ERO move failed$Coff"
  fi
fi

#rename the draft copy with defaults from mdpub-CONFIG
SRC=$DST/ag04-draft.docx
FN="$DST/$DOC_PREFIX-$DOC_TITLE-$MDPUB_DATE($DOC_COMMENT-internal).docx"
if [ -f "$SRC" ] ; then
  mv "$SRC" "$FN"
  if [[ $? -eq 0 ]] ; then
    echo -e "$EKO moved file to $Cfile$FN$Coff"
  else
    echo -e "$ERO move failed$Coff"
  fi
fi
