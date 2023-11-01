#!/bin/bash


exec sudo systemctl hybrid-sleep && sleep 1s && sudo swapoff -a; sudo swapon -a
