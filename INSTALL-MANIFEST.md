# Final Install Manifest — Curated Global Skills

هاد الملف هو لائحة التثبيت المقترحة بعد جمع ومراجعة 11 دفعة. كيضم 131 Skill من 14 مصدر موثوق/محدد، مع استبعاد المصادر اللي مازال محتواها أو توافقها محتاج مراجعة.

## الحالة

- التثبيت على Termux: **لم يبدأ**.
- نطاق التثبيت: Global (`--global` / `-g`).
- عدد المصادر في الحزمة الأساسية: 14.
- عدد Skills المدرجة: 131 (قبل التثبيت؛ العدد النهائي كيتأكد من نتائج CLI).
- كل مجموعة كتتثبت إلى Coding Agent واحد مختار في بداية السكريبت.
- لا يشمل هذا الملف Plugins أو MCP servers أو CLIs أو SDKs.

## المجموعة الأساسية — أوامر التثبيت

### 1. Addy Osmani — Software Engineering (19)
```bash
npx skills add addyosmani/agent-skills --skill spec-driven-development --skill planning-and-task-breakdown --skill incremental-implementation --skill source-driven-development --skill frontend-ui-engineering --skill api-and-interface-design --skill doubt-driven-development --skill browser-testing-with-devtools --skill debugging-and-error-recovery --skill code-review-and-quality --skill code-simplification --skill security-and-hardening --skill performance-optimization --skill accessibility-engineering --skill git-workflow-and-versioning --skill ci-cd-and-automation --skill documentation-and-adrs --skill observability-and-instrumentation --skill shipping-and-launch
```

### 2. Supabase (2)
```bash
npx skills add supabase/agent-skills --skill supabase --skill supabase-postgres-best-practices
```

### 3. Cloudflare (6)
```bash
npx skills add cloudflare/skills --skill cloudflare --skill agents-sdk --skill durable-objects --skill wrangler --skill workers-best-practices --skill web-perf
```

### 4. Neon (6)
```bash
npx skills add neondatabase/agent-skills --skill neon --skill neon-postgres --skill neon-functions --skill neon-ai-gateway --skill neon-realtime --skill neon-object-storage
```

### 5. Prisma (8)
```bash
npx skills add prisma/skills --skill prisma-cli --skill prisma-upgrade-v7 --skill prisma-mongodb-upgrade --skill prisma-client-api --skill prisma-driver-adapter-implementation --skill prisma-orm-setup --skill prisma-postgres-setup --skill prisma-compute
```

### 6. Docker (4 stable core skills)
```bash
npx skills add docker/skills --skill docker-project-foundations --skill docker-build-strategies --skill docker-compose-patterns --skill docker-destructive-guardrails
```

### 7. Callstack React Native (11)
```bash
npx skills add callstackincubator/agent-skills --skill react-native-best-practices --skill react-navigation --skill react-native-tv-best-practices --skill create-react-native-library --skill upgrading-react-native --skill github-actions --skill react-native-testing --skill agent-device --skill dogfood --skill assess-react-native-migration --skill react-native-brownfield-migration
```

### 8. Flutter and Dart (15 verified slugs)
```bash
npx skills add flutter/agent-plugins --skill flutter-build-responsive-layout --skill flutter-fix-layout-issues --skill flutter-apply-architecture-best-practices --skill flutter-setup-declarative-routing --skill flutter-implement-json-serialization --skill flutter-add-widget-test --skill flutter-add-integration-test --skill flutter-setup-localization --skill flutter-use-http-package --skill flutter-add-widget-preview --skill dart-run-static-analysis --skill dart-add-unit-test --skill dart-fix-runtime-errors --skill dart-resolve-package-conflicts --skill dart-generate-test-mocks
```

### 9. Kotlin (4 Android/Kotlin-oriented skills)
```bash
npx skills add Kotlin/kotlin-agent-skills --skill kotlin-tooling-kotlin-toolchain --skill kotlin-tooling-agp9-migration --skill kotlin-tooling-java-to-kotlin --skill kotlin-backend-jpa-entity-mapping
```

### 10. Firebase (13)
```bash
npx skills add firebase/skills --skill firebase-basics --skill firebase-firestore --skill firebase-analytics --skill firebase-crashlytics --skill firebase-auth-basics --skill firebase-hosting-basics --skill firebase-ai-logic-basics --skill firebase-app-hosting-basics --skill firebase-data-connect-basics --skill firebase-remote-config-basics --skill firebase-security-rules-auditor --skill firestore-rules-creation --skill extension-to-functions-codebase
```

### 11. MongoDB (6 core skills)
```bash
npx skills add mongodb/agent-skills --skill mongodb --skill mongodb-connection --skill mongodb-schema-design --skill mongodb-natural-language-querying --skill mongodb-query-optimizer --skill mongodb-search-and-ai
```

### 12. Grafana Observability (9)
```bash
npx skills add grafana/skills --skill grafana-oss --skill dashboarding --skill promql --skill alerting-irm --skill opentelemetry --skill loki --skill tempo --skill prometheus --skill testing
```

### 13. Wshobson — AI, Backend, Security, Analytics (25)
```bash
npx skills add wshobson/agents --skill langchain-architecture --skill prompt-engineering-patterns --skill rag-implementation --skill llm-evaluation --skill api-design-principles --skill architecture-patterns --skill async-python-patterns --skill python-testing-patterns --skill python-performance-optimization --skill github-actions-templates --skill secrets-management --skill stride-analysis-patterns --skill threat-mitigation-mapping --skill design-system-patterns --skill mobile-android-design --skill kpi-dashboard-design --skill data-storytelling --skill before-you-build --skill data-quality-frameworks --skill dbt-transformation-patterns --skill openapi-spec-generation --skill changelog-automation --skill architecture-decision-records --skill wcag-audit-patterns --skill screen-reader-testing
```

### 14. Vercel React and Web Quality (3)
```bash
npx skills add vercel-labs/agent-skills --skill react-best-practices --skill web-design-guidelines --skill composition-patterns
```

## طريقة التشغيل العالمية

كل أمر أعلاه في السكريبت النهائي غادي يزيد له:
```bash
--global --agent "$AGENT" --yes
```

`$AGENT` خاصو يكون Runtime فعلي أو مسار Universal مدعوم. ما غاديش نستعمل `--agent '*'` افتراضياً لأنه يقدر ينشئ تثبيتات لعدد كبير من Agents ما كتستعملهمش.

## عناصر خارج الحزمة الأساسية

| المصدر/العنصر | القرار | السبب |
|---|---|---|
| Android official skills | منفصل | Android CLI وليس Skills CLI؛ توافق Termux غير مثبت |
| Anthropic PDF/DOCX/XLSX/PPTX/Web/MCP skills | يحتاج اختبار CLI | ملفات SKILL.md موجودة، لكن طريقة التوزيع الرسمية تركز على plugins وكتحتاج أدوات إضافية |
| Semgrep skills | يحتاج مراجعة أمنية | المصدر يصفها Beta وبعضها فيه scripts/rules |
| Python Django/FastAPI/Flask pack | يحتاج مراجعة محتوى | التبني محدود مقارنة بالمصادر الأخرى |
| AI image/video/audio packs | مستبعد مؤقتاً | خدمات خارجية وAPI keys وتكلفة وتوافق Termux غير محسوم |
| NVIDIA GPU skills | تخصصي | يحتاج بيئة GPU/CUDA مناسبة |
| Microsoft, Superpowers, MCP server-dev, Trail of Bits | Plugin-specific | ليست حزم تثبيت عامة بنفس الأمر |
| agent-browser CLI / Chromium | مستبعد من سكريبت Skills | binaries والمتصفح يحتاجان اختبار Android مستقل |

## قبل تشغيل السكريبت

1. تجهيز Node.js >= 22.20 وnpm وGit حسب `TERMUX-SETUP-AND-SAFETY.md`.
2. تحديد Coding Agent target مرة واحدة.
3. تشغيل فحص CLI وقراءة الأوامر.
4. تثبيت المصادر واحداً واحداً مع سجل نتائج.
5. مراجعة `npx skills list --global` و`npx skills check`.
6. ما يتمش تشغيل scripts داخل Skills تلقائياً.

## ملاحظة مهمة

تثبيت 131 Skill لا يعني أنها كلها ستُستخدم في كل مشروع. Agent Skills كتتفعل حسب وصف المهمة. كما أن تثبيتها داخل Termux لا يجعل تطبيق ChatGPT Android يقرأها تلقائياً؛ خاص Coding Agent متوافق أو دمج منفصل داخل EduAgent.