# Processing-looped-animations
As requested by students, various approaches to create looped gif using sine wave and Perlin Noise for the first homework. 

### Circular Perlin Noise

### Exporting frames:
- You can use `saveFrame("####.png");` similarly to what we had during our first classes with Processing. Then you can import frames to Adobe Premiere or After Effects, or any other software you know from first year's classes. This method has most flexibility.
- Use **GifAnimation** library to export as a GIF. You can download it using library manager.

**Some quirks:**
- Exporting as GIF producess lesser quality due to its compression. It's not possible to achieve 60 fps framerate (50fps is ok).
- For high quality you should export it as a video.
- You can add smooth frame transition or antialiasing during postprocessing in Adobe software.
- After importing image sequence remember to set correct framerate.
- I saw that last frame is treated as black, to have seamless loop just cut the last frame during export.