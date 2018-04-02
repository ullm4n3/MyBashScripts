#!/bin/bash

env x='(){:;} echo vulnrable' bash -c "echo not-vulnerable"
