# Verified Skills Batch 08 — Documents, Web Testing, React Quality and Skill Authoring

## 1. Anthropic — Document and Developer Skills

**المصدر:** https://github.com/anthropics/skills

README الرسمي كيصف المستودع بأنه مجموعة Skills تعليمية/عملية بصيغة `SKILL.md`. بعض المهارات كتستعمل scripts وملفات مساعدة، وما خاصناش نشغلوها تلقائياً بمجرد التثبيت.

**Skills اللي تحققنا مباشرة من ملفات SKILL.md:**
- `pdf` — قراءة واستخراج وتحويل ودمج وإنشاء PDF.
- `docx` — إنشاء وتحرير واستخراج محتوى Word.
- `xlsx` — إنشاء وتحليل وتعديل spreadsheets وCSV.
- `pptx` — إنشاء وتعديل العروض التقديمية.
- `frontend-design` — تصميم واجهات مميزة ومقصودة بصرياً.
- `webapp-testing` — اختبار تطبيقات الويب محلياً باستعمال Playwright.
- `mcp-builder` — بناء MCP servers بجودة عالية.
- `skill-creator` — إنشاء Skills جديدة والتحقق من بنيتها.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add anthropics/skills --skill pdf --skill docx --skill xlsx --skill pptx --skill frontend-design --skill webapp-testing --skill mcp-builder --skill skill-creator --global --yes
```

**الحالة:** `verified-skill-files-needs-installer-and-dependency-audit`

**ملاحظات مهمة:**
- README الرسمي كيوثق Plugin Marketplace وClaude API أكثر من توثيقه لأمر Skills CLI العام؛ رغم أن ملفات SKILL.md موجودة، خاص اختبار تثبيت CLI على نسخة مؤقتة قبل إدخالها في سكريبت الهاتف.
- المهارات كتذكر scripts Python/Node وأدوات بحال LibreOffice/Playwright وبعض المكتبات. تثبيت Skill لا يثبت هاد dependencies.
- بعض مهارات Office كتحتاج برامج خارجية لتحويل الملفات أو إعادة حساب الصيغ. نثبت التعليمات فقط، ونجهز الأدوات وقت الحاجة.
- راجع ترخيص كل Skill وملف LICENSE المرافق لها قبل إعادة التوزيع؛ لا ننسخ محتواها للمستودع.

## 2. Vercel — React and Web Quality

**المصدر الرسمي:** https://github.com/vercel-labs/agent-skills

**Skills مختارة:**
- `react-best-practices` — أداء React وNext.js وتجنب waterfalls وتقليل bundle.
- `web-design-guidelines` — مراجعة الواجهة وفق قواعد accessibility وUX والأداء.
- `composition-patterns` — تصميم React components قابلة لإعادة الاستخدام دون تضخم props.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add vercel-labs/agent-skills --skill react-best-practices --skill web-design-guidelines --skill composition-patterns --global --yes
```

**الحالة:** `verified-source-skill-names-install-method`

**ملاحظات منع التكرار:**
- `react-best-practices` كيتداخل مع جزء من Addy Osmani وWshobson؛ نحتافظو به لأنه صادر عن Vercel Engineering ومتخصص في React/Next.
- `web-design-guidelines` كيتداخل مع بعض UI audit skills؛ نختارو نسخة واحدة أو جوج فقط في manifest النهائي.

## 3. Anthropic MCP and Web Tooling Boundaries

- `mcp-builder` هي Skill تعليمية؛ لا تنشئ MCP server أو تشغله وحدها.
- `webapp-testing` لا تثبت Playwright browser binaries أو Chromium تلقائياً.
- PDF/Office skills لا تثبت Python packages أو LibreOffice أو Microsoft Office.
- لا يتم تشغيل أي helper script قبل قراءته ومراجعة أوامره ومتطلباته.

## قرار Termux

**الحالة العامة:** مرشحة للمكتبة، لكن لا تدخل كل هذه المجموعة في التثبيت الآلي حتى نكمل فحص التوافق والـdependencies على Android/Termux.
