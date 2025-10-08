#!/bin/bash

# 🚀 Campus Companion - One-Click Deployment Script

echo "🏫 Campus Companion Deployment Script"
echo "======================================"

# Check if we're in the right directory
if [ ! -f "DEPLOYMENT.md" ]; then
    echo "❌ Please run this script from the project root directory"
    exit 1
fi

echo "📦 Building frontend..."
cd client
npm install
npm run build

if [ $? -ne 0 ]; then
    echo "❌ Frontend build failed"
    exit 1
fi

echo "✅ Frontend built successfully!"

cd ../server
echo "🔧 Installing backend dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Backend dependencies installation failed"
    exit 1
fi

echo "✅ Backend dependencies installed!"

echo ""
echo "🎉 Project is ready for deployment!"
echo ""
echo "Next steps:"
echo "1. Push your code to GitHub"
echo "2. Deploy backend to Railway: https://railway.app/"
echo "3. Deploy frontend to Vercel: https://vercel.com/"
echo ""
echo "📖 See DEPLOYMENT.md for detailed instructions"