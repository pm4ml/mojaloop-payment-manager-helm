{{/* vim: set filetype=mustache: */}}

{{/*
Common labels
*/}}
{{- define "sim-backend.common-labels" -}}
app.kubernetes.io/name: sim-backend
app.kubernetes.io/instance: {{ $.Release.Name }}
app.kubernetes.io/version: "{{ $.Chart.Version | trunc 63 }}"
app.kubernetes.io/managed-by: {{ $.Release.Service }}
helm.sh/chart: {{ printf "%s-%s" $.Chart.Name $.Chart.Version | replace "+" "_" | trunc 63 }}
{{- end -}}
