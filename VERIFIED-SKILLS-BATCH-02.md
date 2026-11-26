# Verified Skills Batch 02 — Engineering, QA, Browser Automation

هاد الدفعة كتضيف مهارات هندسة البرمجيات والاختبار والتصحيح. الأسماء والأوصاف مأخوذة من README/وثائق الناشرين الأصليين.

## 1. Addy Osmani — Production Engineering Skills

**المصدر:** https://github.com/addyosmani/agent-skills

**Skills مختارة:**
- `spec-driven-development` — تحويل المتطلبات إلى مواصفات ومعايير قبول قبل البرمجة.
- `planning-and-task-breakdown` — تقسيم العمل لمهام صغيرة قابلة للتحقق.
- `incremental-implementation` — التطوير على مراحل صغيرة.
- `source-driven-development` — التحقق من الوثائق الرسمية قبل التنفيذ.
- `frontend-ui-engineering` — هندسة واجهات الإنتاج.
- `api-and-interface-design` — تصميم API والواجهات والعقود.
- `doubt-driven-development` — التطوير بالاختبارات.
- `browser-testing-with-devtools` — فحص DOM وConsole وNetwork والأداء.
- `debugging-and-error-recovery` — إعادة إنتاج الخطأ وتحديد السبب وإصلاحه ومنع رجوعه.
- `code-review-and-quality` — مراجعة جودة الكود.
- `code-simplification` — تبسيط الكود مع الحفاظ على السلوك.
- `security-and-hardening` — OWASP والتحقق من المدخلات والأسرار.
- `performance-optimization` — قياس الأداء وتحسينه.
- `accessibility-engineering` — WCAG وإمكانية الوصول.
- `git-workflow-and-versioning` — Git وإدارة الإصدارات.
- `ci-cd-and-automation` — CI/CD وبوابات الجودة.
- `documentation-and-adrs` — التوثيق وقرارات المعمارية.
- `observability-and-instrumentation` — logs وmetrics وtracing.
- `shipping-and-launch` — الاستعداد للإطلاق والمراقبة والتراجع.

**أمر التثبيت العالمي:**
```bash
npx skills add addyosmani/agent-skills --skill spec-driven-development --skill planning-and-task-breakdown --skill incremental-implementation --skill source-driven-development --skill frontend-ui-engineering --skill api-and-interface-design --skill doubt-driven-development --skill browser-testing-with-devtools --skill debugging-and-error-recovery --skill code-review-and-quality --skill code-simplification --skill security-and-hardening --skill performance-optimization --skill accessibility-engineering --skill git-workflow-and-versioning --skill ci-cd-and-automation --skill documentation-and-adrs --skill observability-and-instrumentation --skill shipping-and-launch --global
```

**الحالة:** `verified-source-and-skill-slugs`

## 2. Matt Pocock — Practical Engineering Workflows

**المصدر:** https://github.com/mattpocock/skills

**Skills مرشحة:**
- `tdd` — red/green/refactor.
- `diagnosing-bugs` — تشخيص منظم للأخطاء ومشاكل الأداء.
- `improve-codebase-architecture` — كشف فرص تحسين بنية المشروع.
- `domain-modeling` — بناء نموذج المجال والمصطلحات.
- `codebase-design` — تصميم وحدات عميقة بواجهات صغيرة.
- `code-review` — مراجعة الكود.
- `research` — بحث بمصادر موثوقة وتوثيق النتائج.
- `to-spec` — إنشاء مواصفات من النقاش الحالي.
- `to-tickets` — تقسيم الخطة إلى تذاكر قابلة للتنفيذ.
- `grill-with-docs` — توضيح المجال وتوثيق المصطلحات.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add mattpocock/skills --skill tdd --skill diagnosing-bugs --skill improve-codebase-architecture --skill domain-modeling --skill codebase-design --skill code-review --skill research --skill to-spec --skill to-tickets --skill grill-with-docs --global
```

**الحالة:** `verified-skill-names`, لكن README ديال الناشر كينبه أن طريقة Skills CLI كتنسخ الملفات، وكيقارنها بالـPlugin. نراجع التوافق والتكرار مع Addy Osmani قبل التثبيت؛ ماشي ضروري نثبتو جوج مجموعات كتكرر نفس الوظائف.

## 3. Vercel Agent Browser — Browser Automation

**المصدر:** https://github.com/vercel-labs/agent-browser

**Skill:** `agent-browser` — تعليمات اكتشاف واستعمال CLI لأتمتة المتصفح، قراءة accessibility tree، والتفاعل مع العناصر.

**أمر التثبيت العالمي:**
```bash
npx skills add vercel-labs/agent-browser --global
```

**الحالة:** `verified-source-and-install`

ملاحظة: Skill بوحدها ما كتثبتش بالضرورة المتصفح أو Chromium. التثبيت التقني للأداة مختلف:
```bash
npm install -g agent-browser
agent-browser install
```
خصنا نختبرو دعم Android/Termux قبل إدخال هاد الجزء لسكريبت الهاتف؛ ممكن تكون قيود على Chromium أو binary.

## 4. Vercel Skills CLI — البحث والإدارة

**المصدر:** https://github.com/vercel-labs/skills

هادشي أداة CLI لإضافة Skills والبحث عنها وتحديثها، ماشي Skill إضافية للمكتبة.

أوامر مفيدة موثقة:
```bash
npx skills find typescript
npx skills add owner/repo --skill skill-name --global
npx skills list --global
npx skills check
npx skills update -g
```

**الحالة:** `verified-cli-documentation`

## ملاحظات منع التكرار

- Addy Osmani وMatt Pocock عندهم تداخل في TDD وdebugging وcode review وarchitecture.
- نخليو المهارات فالفهرس مع توضيح التداخل، ونختارو النسخة الأقوى أو الأكثر تكاملاً قبل التثبيت النهائي.
- agent-browser أداة تنفيذ خارجية بالإضافة للـSkill؛ ما نخلطوش تثبيت Skill مع تثبيت browser binary.
- كل الأوامر أعلاه مازال ما تنفذاتش على Termux.
