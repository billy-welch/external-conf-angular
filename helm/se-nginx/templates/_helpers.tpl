{{- define "nginx.name" -}}
{{ default .Release.Name .Values.fullnameOverride }}
{{- end -}}
 
{{- define "nginx.labels" -}}
helm.sh/chart: {{ .Chart.Name }}
{{ include "nginx.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
 
{{- define "nginx.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nginx.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
 
{{- define "nginx.imageName" -}}
{{ default (include "nginx.name" .) .Values.image.name }}:{{ .Values.image.tag }}
{{- end -}}