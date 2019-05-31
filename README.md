# change_volume.sh

bash script to change volume up and down on the current pulseaudio sink. Script is currently hard limited to 150% to save your speakers / ears.

# Example Screenshots for KDE keyboard shortcuts
[![KDE shortcut lower volume](kde_lower.png)]
[![KDE shortcut raise volume](kde_raise.png)]

# Example usage
```
# Set as executable
$ chmod +x change_volume.sh
# Second parameter is optional, increase/decrease by 10%
$ ./change_volume.sh increase 10
$ ./change_volume.sh decrease 10
```

# License - MIT

Copyright (c) 2019 David Rebbe

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
