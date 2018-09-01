# Istruzioni

I file sorgente sono assemblati in una ROM usando [**rgbds**](https://github.com/rednex/rgbds).
In questa pagina ti verrà spiegato come impostare i programmi necessari alla compilazione.

Semmai dovessi avere un problema, puoi chiedere aiuto su IRC o Discord (vedi in pokecrystal nel [README.md](README.md)).

## Linux

```bash
sudo apt-get install make gcc bison git libpng-dev

git clone https://github.com/rednex/rgbds
cd rgbds
sudo make install
cd ..

git clone https://github.com/pret/pokecrystal
cd pokecrystal
```

Per compilare **pokecrystal.gbc**:

```bash
make
```


## Mac

Nel **Terminale**, esegui:

```bash
xcode-select --install

git clone https://github.com/rednex/rgbds
cd rgbds
sudo make install
cd ..

git clone https://github.com/pret/pokecrystal
cd pokecrystal
```

Per compilare **pokecrystal.gbc**:

```bash
make
```


## Windows

Scarica [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** per Windows a 64 bit, **setup-x86.exe** per quello a 32 bit.

Avvia il setup e lascia le impostazioni di default. In "Select Packages", scegli di installare le seguenti funzioni:

- `make`
- `git`
- `gcc-core`

Quindi scarica [**rgbds**](https://github.com/rednex/rgbds/releases/): vai per l'ultima release di **win64.tar.gz** o **win32.tar.gz**. Estraine il contenuto e metti tutti gli `exe` e i `dll` in **C:\Cygwin64\usr\local\bin**.

**N.B. Se hai una vecchia versione di rgbds, aggiorna alla 0.3.3 o successiva.** Ignora questo avvertimento se non hai mai scaricato rgbds.

Nel **terminale di Cygwin**, digita questi comandi:

```bash
git clone https://github.com/pret/pokecrystal
cd pokecrystal
```

Per compilare **pokecrystal.gbc**:

```bash
make
```

Per compilare **pokecrystal11.gbc**:

```bash
make crystal11
```