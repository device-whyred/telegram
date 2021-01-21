#!/usr/bin/env bash
# Copyright (C) 2019-2020 Jago Gardiner (nysascape)
#
# Licensed under the Raphielscape Public License, Version 1.d (the "License");
# you may not use this file except in compliance with the License.
#
# CI build script

# Needed export
export TELEGRAM_TOKEN=1157809262:AAHNbCHG-XcjgpGuDflcTX8Z_OJiXcjdDr0

# Kernel groups
CI_CHANNEL=-1001488385343

# Send to channel
tg_channelcast() {
    "${TELEGRAM}" -c "${CI_CHANNEL}" -H \
    "$(
		for POST in "${@}"; do
			echo "${POST}"
		done
    )"
}

    # Ship it to the CI channel
    "${TELEGRAM}" -f Nusantara-EOL-X00TD-Gapps-21012021-Predator-EditioN-0909.zip -c "${CI_CHANNEL}"
}

tg_channelcast
