#!/bin/sh

/prometheus-pingdom-exporter server `cat /secrets/nytm/dv-prometheus/secret/pingdom-exporter/value`