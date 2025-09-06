# Fix GitHub Pages Deployment Error

## The Problem
The error "Get Pages site failed" means GitHub Pages isn't properly enabled in your repository settings.

## Step-by-Step Solution

### 1. Enable GitHub Pages in Repository Settings

1. **Go to your GitHub repository**
2. **Click on "Settings" tab** (at the top of the repository)
3. **Scroll down to "Pages" section** (in the left sidebar)
4. **Under "Source", select "GitHub Actions"**
5. **Save the settings**

### 2. Verify Repository Permissions

Make sure your repository has the correct permissions:
- Go to **Settings** → **Actions** → **General**
- Under "Workflow permissions", select **"Read and write permissions"**
- Check **"Allow GitHub Actions to create and approve pull requests"**

### 3. Alternative: Manual Pages Setup

If the above doesn't work, try this alternative approach:

1. **Create a `gh-pages` branch manually:**
   ```bash
   git checkout -b gh-pages
   git push origin gh-pages
   ```

2. **In repository settings:**
   - Go to **Settings** → **Pages**
   - Under "Source", select **"Deploy from a branch"**
   - Select **"gh-pages"** branch
   - Select **"/ (root)"** folder

### 4. Updated Workflow

I've updated the workflow file to include:
- `enablement: true` parameter to automatically enable Pages
- `workflow_dispatch` trigger so you can manually run the workflow
- Removed pull request trigger to avoid conflicts

### 5. Test the Fix

1. **Commit and push the updated workflow:**
   ```bash
   git add .github/workflows/deploy.yml
   git commit -m "Fix GitHub Pages deployment workflow"
   git push origin main
   ```

2. **Check the Actions tab** to see if the workflow runs successfully

3. **If it still fails, try running manually:**
   - Go to **Actions** tab
   - Click on "Deploy to GitHub Pages" workflow
   - Click **"Run workflow"** button

## Troubleshooting

### If you still get errors:

1. **Check repository visibility:** Make sure it's public (GitHub Pages free tier requires public repos)
2. **Verify branch name:** Ensure you're pushing to `main` or `master` (not `gh-pages`)
3. **Check Actions permissions:** Repository owner needs to enable Actions

### Alternative Deployment Method

If GitHub Actions continues to fail, you can use the traditional method:

1. Create `gh-pages` branch
2. Copy all files to that branch
3. Set Pages source to `gh-pages` branch
4. Manually update when needed

## Success Indicators

When working correctly, you should see:
- ✅ Workflow runs without errors in Actions tab
- ✅ Your site is accessible at `https://yourusername.github.io/Awesome-Nano-Banana-images/`
- ✅ Changes appear on the site after pushing to main branch
