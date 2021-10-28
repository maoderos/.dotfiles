# loading environment

export PATH=$PATH:~/.local/bin

# geant4 source command

alias sourceG4="source /home/marcosderos/geant4/1007/geant4.10.07.p02/installdir/bin/geant4.sh"

# O2 commands
export ALIBUILD_WORK_DIR="$HOME/alice/sw"
eval="`alienv shell-helper`"
alias buildO2="aliBuild build O2 --defaults o2 -j5"
alias enterO2="alienv enter O2/latest-dev-o2"
alias enterO2Alpide="alienv enter O2/latest-ALPIDE-IBA-o2"

# in case of using alidocklite (docker) for O2:

alidocklite () {

cd /home/marcosderos/alice/alidocklite
./alidocklite

}


# SRIM

SRIM2013() {
cd /home/marcosderos/.wine/drive_c/Program\ Files\ \(x86\)/SRIM
wine SRIM\ 2008.exe
}
