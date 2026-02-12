#!/bin/bash
cd /home/kavia/workspace/code-generation/resume-analysis-collaboration-platform-281301-304270/resume_analysis_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

