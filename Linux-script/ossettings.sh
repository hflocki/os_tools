#!/bin/sh

echo "$(tput sgr 0)--------------------------------------------------"

# next option may improve SGen gc (for opensim only) you may also need to increase nursery size on large regions
echo "$(tput setaf 2)Die naechste Option kann SGen gc verbessern (nur für opensim). Moeglicherweise müssen Sie auch$(tput sgr 0)"
echo "$(tput setaf 2)die Groesse der increase nursery size auf 64m in grossen Regionen erhoehen$(tput sgr 0)"
#echo 'MONO_GC_PARAMS=minor=split,promotion-age=14'
#export MONO_GC_PARAMS="minor=split,promotion-age=14"
# Manni Test
echo "$(tput setaf 1)$(tput setab 7)MONO_GC_PARAMS=minor=split,promotion-age=14,nursery-size=64m$(tput sgr 0)"
export MONO_GC_PARAMS="minor=split,promotion-age=14,nursery-size=64m"

echo "$(tput sgr 0)--------------------------------------------------"
