; Install wrapper for OSVR HMD controller CDC serial port + other infs
; Common config code between silent and "normal" installer
;
; Part of OSVR
; Authored by Sensics, Inc. <http://sensics.com/osvr>
;
; Copyright 2015 Sensics, Inc.
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
; 	http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

!define VERSION_TAG "v${DRIVER_VER}"
!define PRODUCT_NAME "HDMI2USB and Numato Opsis Drivers"
!define PRODUCT_PUBLISHER "TimVideos.us & Numato Lab"
SetCompressor lzma

!include "x64.nsh"

Name "${PRODUCT_NAME}"
InstallDir "$TEMP\${PRODUCT_PUBLISHER} ${PRODUCT_NAME}"

RequestExecutionLevel "admin"

!define REPO_ROOT ".."
!define INSTALLER_ICON "${REPO_ROOT}\installer-icon\installer.ico"
