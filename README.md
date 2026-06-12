# LabCalc

Free calculators for STEM lab reports: error propagation, significant figures, and mean / standard deviation / standard error. Single static `index.html` — no build step, no dependencies.

**Monetization:** Gumroad product (`product/lab-report-toolkit.md` is the product content — export to PDF/Docs, upload to Gumroad, then replace the `href` on the `.gumroad-button` in `index.html` with your product link).

## Deploy (GitHub Pages)

```
git init
git add .
git commit -m "Launch LabCalc"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/labcalc.git
git push -u origin main
```

Then on github.com: repo → Settings → Pages → Source: "Deploy from a branch" → Branch: `main` / `/ (root)` → Save. Live at `https://YOUR_USERNAME.github.io/labcalc/` in ~2 minutes.

**Zero-command alternative:** drag this folder onto https://app.netlify.com/drop

## Formulas

Standard rules from J. R. Taylor, *An Introduction to Error Analysis*, 2nd ed. (1997): quadrature for add/subtract, relative quadrature for multiply/divide, |n|·δa/|a| for powers, SEM = s/√n.
