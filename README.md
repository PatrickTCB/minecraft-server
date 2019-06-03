# Minecraft Server
The basic idea here is a ubuntu container running minecraft. The minecraft server jar file URL changes all the time, and so this container will probably need to be rebuilt with each minecraft update. Each time it's updated the new file is here: https://minecraft.net/en-us/download/server/.

I mount a local folder to /data so that I can easily update my whitelist etc. You may add any of these files at build time if that's your preference.

The whole idea behind this container is just to be as simple as possible. Minecraft server is just a .jar file, so there's no sense in making this too complicated.