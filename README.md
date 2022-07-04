# Local Deployment Scripts

This repository contains scripts that can quickly have you evaluating PingFederate, PingAccess, and PingDirectory. Powershell and bash scripts have been provided.

1. Copy product binaries to the /binaries folder. [See here](binaries/README.md).
2. Copy product licenses to the /licenses folder. [See here](licenses/README.md).
3. Optionally copy overlays for each product. Sample overlays have already been provided for reference under the /overlays folder.
4. Start the applications.
- Powershell: .\\_startall.ps1
- SH: ./_startall.sh
6. Stop the applications.
- Powershell: .\\_stopall.ps1
- SH: ./_stopall.sh
