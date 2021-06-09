#!/usr/bin/env bash
cross build --target x86_64-pc-windows-gnu --release
cross build --target x86_64-unknown-linux-gnu --release
rm target/tenebraforge_{windows,linux}.zip
zip -j target/tenebraforge_windows.zip target/x86_64-pc-windows-gnu/release/tenebraforge.exe
zip -j target/tenebraforge_linux.zip target/x86_64-unknown-linux-gnu/release/tenebraforge
