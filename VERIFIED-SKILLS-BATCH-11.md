# Verified Skills Batch 11 — Business Analytics, Data Quality and Documentation

## 1. Wshobson — Analytics and Product Planning

**المصدر:** https://github.com/wshobson/agents

المستودع كيوثق هاد Skills في كتالوج Agent Skills:
- `kpi-dashboard-design` — تصميم dashboards ومؤشرات الأداء KPIs.
- `data-storytelling` — تحويل نتائج البيانات إلى تقارير واضحة.
- `before-you-build` — دراسة الطلب والتموقع والتكلفة والتبني قبل بناء ميزة.
- `data-quality-frameworks` — اختبارات جودة البيانات والتحقق منها.
- `dbt-transformation-patterns` — نمذجة وتحويل البيانات باستعمال dbt.
- `openapi-spec-generation` — إنشاء OpenAPI 3.1 specs.
- `changelog-automation` — تنظيم changelog من commits.
- `architecture-decision-records` — توثيق قرارات المعمارية.
- `wcag-audit-patterns` — تدقيق WCAG 2.2.
- `screen-reader-testing` — اختبار قارئات الشاشة.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add wshobson/agents --skill kpi-dashboard-design --skill data-storytelling --skill before-you-build --skill data-quality-frameworks --skill dbt-transformation-patterns --skill openapi-spec-generation --skill changelog-automation --skill architecture-decision-records --skill wcag-audit-patterns --skill screen-reader-testing --global --yes
```

**الحالة:** `verified-catalog-and-install-method-needs-file-content-audit`

## 2. الملاءمة

- KPI وdata storytelling مفيدين لتقارير المبيعات والمخزون والأرباح.
- before-you-build مفيد قبل إضافة ميزات جديدة لأي تطبيق.
- data-quality مفيد لحماية البيانات والحسابات من أخطاء الإدخال والتحويل.
- dbt تخصصي لخطوط بيانات warehouse؛ ماشي ضروري لتطبيق صغير أو قاعدة SQLite محلية.
- OpenAPI وADRs وchangelog مفيدة لتوثيق APIs وتغييرات المشاريع.
- WCAG وscreen-reader-testing كيزيدو على مهارات accessibility الأخرى؛ نختارو مجموعة واحدة بلا تكرار زائد.

## 3. قرارات

- ما نثبتوش dbt أو أدوات BI أو قواعد بيانات تحليلية تلقائياً؛ Skills كتقدم إرشادات فقط.
- نراجع محتوى SKILL.md قبل إدراجها في manifest النهائي.
- لا توجد عملية تثبيت نفذت على Termux.