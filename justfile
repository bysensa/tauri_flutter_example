##!/usr/bin/env just --justfile

build_flutter_dev:
	#!/usr/bin/env bash
	cd src
	flutter build web --web-renderer canvaskit

dev: build_flutter_dev
	cargo tauri dev
