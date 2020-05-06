choco install -y notepadplusplus firefox take-command
choco install -y  git gitkraken visualstudio2019community resharper-ultimate-all

# The DOpusPackage has bad checksums (as of 2020-05-05), so we install separately and ignore them.

choco install -y --ignore-checksums directoryopus
