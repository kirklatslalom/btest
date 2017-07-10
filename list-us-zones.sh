#!/bin/bash

US_REGIONS=`gcloud compute regions list | grep "^us-[a-z]" | cut -f1 -d" "`

tempfoo=`basename $0`
TMPFILE=`mktemp /tmp/${tempfoo}.XXXXXX` || exit 1

gcloud compute zones list | cut -f1 -d" " | grep -v NAME > ${TMPFILE}

for i in ${US_REGIONS}
do
  grep ${i} ${TMPFILE}
done
rm -f ${TMPFILE}
