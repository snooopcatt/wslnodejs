@echo off
pushd %~dp0
node wslnode.js node %*
popd
