## Processing-looped-animations
As requested by students, various approaches to create looped gif using sine wave and Perlin Noise for the first homework. 

**How does it work?**
1. Set the desired length in frames.
2. Program will divide the frames into steps to match range 0 - 2PI. The 2Pi is the full circle so we know that we reached the exact same point. 
3. The noise is computed based on formula to calculate a point on a circle using sine and cosine.
4. When timesteps reach 2Pi the program stops recording.

### Sine wave periods
- We know that sine wave equals to zero with Pi periods.
- Full circle is 2Pi.
- For one dimensional movement 0 - Pi is enough as it goes back and forth.

### Circular Perlin Noise
In simplest words: we do a circle around a point in Perlin Noise 2D texture. That ensures we start and finish at same point.
- After setting the desired framerate the circle is divided into angle step.
- If we have many steps consider changing the radius of circle or smoothness parameters. You can do it by trial and error. Avoid setting them too high or too low.

## Exporting frames:
- You can use `saveFrame("####.png");` similarly to what we had during our first classes with Processing. Then you can import frames to Adobe Premiere or After Effects, or any other software you know from first year's classes. This method has most flexibility.
- Use **GifAnimation** library to export as a GIF. You can download it using library manager.

**Some quirks:**
- Exporting as GIF producess lesser quality due to its compression. It's not possible to achieve 60 fps framerate (50fps is ok) in GIF.
- For high quality you should export it as a video.
- You can add smooth frame transition or antialiasing during postprocessing in Adobe software.
- After importing image sequence remember to set correct framerate.
- I saw that last frame is saved as black, to have seamless loop just cut the last frame during export.
- Sketch runs much slower when it's saving the image files. It doesn't mean the animation itself is slow.