#!/bin/bash
echo "Detected languages:" > analysis_report.txt
find . -type f -name "*.py" | grep -q . && echo "- Python"
find . -type f -name "*.java" | grep -q . && echo "- Java"
find . -type f -name "*.js" | grep -q . && echo "- JavaScript"
find . -type f -name "*.ts" | grep -q . && echo "- TypeScript"

echo "Design patterns detected:" >> analysis_report.txt
grep -R -I --exclude-dir=".git" "getInstance" -n . && echo "- Singleton"
grep -R -I --exclude-dir=".git" "create[A-Z]" -n . && echo "- Factory Method"
grep -R -I --exclude-dir=".git" "notify" -n . && echo "- Observer"
grep -R -I --exclude-dir=".git" "Strategy" -n . && echo "- Strategy"
grep -R -I --exclude-dir=".git" "Decorator" -n . && echo "- Decorator"
