#!/bin/bash

# DESIGN.md Validator
# Checks if a DESIGN.md file follows the specification

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Default file
FILE="${1:-DESIGN.md}"

echo "🔍 Validating $FILE..."
echo ""

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo -e "${RED}❌ Error: $FILE not found${NC}"
    exit 1
fi

# Initialize counters
ERRORS=0
WARNINGS=0

# Check required sections
check_section() {
    local section="$1"
    if grep -qi "## $section" "$FILE"; then
        echo -e "${GREEN}✅ Found: $section${NC}"
    else
        echo -e "${RED}❌ Missing: $section${NC}"
        ((ERRORS++))
    fi
}

# Check for color format
check_colors() {
    echo ""
    echo "Checking color formats..."
    
    # Check for valid hex colors
    if grep -qE '#[0-9A-Fa-f]{6}' "$FILE"; then
        echo -e "${GREEN}✅ Valid hex colors found${NC}"
    else
        echo -e "${YELLOW}⚠️  No hex colors found (may be using other format)${NC}"
        ((WARNINGS++))
    fi
    
    # Check for invalid color formats
    if grep -qE 'rgb\(' "$FILE"; then
        echo -e "${YELLOW}⚠️  RGB format detected (hex recommended)${NC}"
        ((WARNINGS++))
    fi
}

# Check for typography
check_typography() {
    echo ""
    echo "Checking typography..."
    
    if grep -qi "font-family" "$FILE"; then
        echo -e "${GREEN}✅ Font family defined${NC}"
    else
        echo -e "${YELLOW}⚠️  No font family defined${NC}"
        ((WARNINGS++))
    fi
    
    if grep -qiE "(px|rem|em)" "$FILE"; then
        echo -e "${GREEN}✅ Font sizes with units found${NC}"
    else
        echo -e "${YELLOW}⚠️  No font sizes with units found${NC}"
        ((WARNINGS++))
    fi
}

# Check for spacing
check_spacing() {
    echo ""
    echo "Checking spacing..."
    
    if grep -qiE "(xs|sm|md|lg|xl)" "$FILE"; then
        echo -e "${GREEN}✅ Spacing scale found${NC}"
    else
        echo -e "${YELLOW}⚠️  No spacing scale found${NC}"
        ((WARNINGS++))
    fi
}

# Check for breakpoints
check_breakpoints() {
    echo ""
    echo "Checking breakpoints..."
    
    if grep -qiE "(sm|md|lg|xl)" "$FILE"; then
        echo -e "${GREEN}✅ Breakpoints found${NC}"
    else
        echo -e "${YELLOW}⚠️  No breakpoints found${NC}"
        ((WARNINGS++))
    fi
}

# Run checks
echo "📋 Checking required sections..."
check_section "Colors"
check_section "Typography"
check_section "Spacing"
check_section "Breakpoints"

check_colors
check_typography
check_spacing
check_breakpoints

# Summary
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 Validation Summary"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
    echo -e "${GREEN}✅ Perfect! No errors or warnings.${NC}"
    exit 0
elif [ $ERRORS -eq 0 ]; then
    echo -e "${YELLOW}⚠️  $WARNINGS warning(s) found.${NC}"
    exit 0
else
    echo -e "${RED}❌ $ERRORS error(s) and $WARNINGS warning(s) found.${NC}"
    exit 1
fi
