#!/bin/bash

# Test the v1/models endpoint with curl

echo "🚀 Testing v1/models endpoint with curl..."
echo "Server: http://localhost:8081"
echo "Endpoint: /v1/models"
echo ""

# Basic curl request
echo "📡 Making request..."
curl -X GET "http://localhost:8081/v1/models" \
     -H "Content-Type: application/json" \
     -w "\n\n📊 Response Status: %{http_code}\n" \
     -s | jq '.' 2>/dev/null || curl -X GET "http://localhost:8081/v1/models" -H "Content-Type: application/json"

echo ""
echo "✅ Request completed!" 