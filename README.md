<p align="center"> <img alt="Space Station 15" width="880" height="300" src="https://github.com/Eucalyptus214/space-station-15/blob/main/assets/images/banner-bg.svg" /></p>

Space Station 15 is a remake of Space Station 13 in haskell using [apecs](https://hackage.haskell.org/package/apecs) and [SDL2](https://hackage.haskell.org/package/sdl2). Other dependencies can be found in the [package.yaml](https://github.com/Eucalyptus214/space-station-15/blob/main/package.yaml) file.

This is the primary repository for Space Station 15.

## Links
[Discord](https://discord.gg/SmKawHZfJc)

## Building
Please see [the haskell tool stack](https://docs.haskellstack.org/en/stable/) to install Stack.

within the project folder, run:
```
stack build
```

to run the client, do:
```
stack exec space-station15-client
```

to run the server, do:
```
stack exec space-station15-server
```

the target executable directory will always be `./.stack-work/`.
Any errors encountered should be reported to the #coderbus channel in the discord server.

## Licence

All code in this project is licenced under [MIT](https://github.com/Eucalyptus214/space-station-15/blob/main/LICENSE)

Sounds come from [CDDA-Soundpack](https://github.com/budg3/CDDA-Soundpack/) and [tgstation](https://github.com/tgstation/tgstation/tree/master/sound). If you want to know more about licensing please check out their respective repositories.
