# Verified Skills Batch 06 — AI Agents, LLM Apps, Architecture and DevOps

## 1. Wshobson Agents — Curated Skills-Only Set

**المصدر:** https://github.com/wshobson/agents

المستودع كيوثق 185 Skills و202 Agents و94 Plugins، مع دعم Skills CLI لتثبيت Skill منفردة بلا تثبيت Plugin كامل. هاد الدفعة كتختار غير Skills اللي عندها قيمة عامة، وما كتثبتش 185 Skill كاملة.

**AI / LLM engineering:**
- `langchain-architecture` — تصميم تطبيقات LangChain والـagents والذاكرة والأدوات.
- `prompt-engineering-patterns` — هندسة وتحسين prompts.
- `rag-implementation` — بناء RAG والبحث الدلالي.
- `llm-evaluation` — تقييم تطبيقات LLM بمقاييس واختبارات.

**Backend / Architecture:**
- `api-design-principles` — تصميم REST وGraphQL APIs.
- `architecture-patterns` — Clean Architecture وHexagonal Architecture وDDD.

**Python:**
- `async-python-patterns` — asyncio والبرمجة المتزامنة.
- `python-testing-patterns` — pytest وfixtures وmocking.
- `python-performance-optimization` — profiling وتحسين الأداء.

**DevOps / Security:**
- `github-actions-templates` — GitHub Actions للبناء والاختبار والنشر.
- `secrets-management` — إدارة الأسرار.
- `stride-analysis-patterns` — Threat modeling بمنهج STRIDE.
- `threat-mitigation-mapping` — ربط التهديدات بالتخفيف والمعالجة.

**Design / Mobile:**
- `design-system-patterns` — design tokens والمكونات والثيمات.
- `mobile-android-design` — إرشادات تصميم Android وفق Material Design 3.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add wshobson/agents --skill langchain-architecture --skill prompt-engineering-patterns --skill rag-implementation --skill llm-evaluation --skill api-design-principles --skill architecture-patterns --skill async-python-patterns --skill python-testing-patterns --skill python-performance-optimization --skill github-actions-templates --skill secrets-management --skill stride-analysis-patterns --skill threat-mitigation-mapping --skill design-system-patterns --skill mobile-android-design --global --yes
```

**الحالة:** `verified-catalog-install-method-needs-per-skill-content-audit`

**منع التكرار:**
- `python-testing-patterns` كيتداخل مع مجموعات Python أخرى؛ نخليو مصدر واحد نهائي لهاد الوظيفة.
- `api-design-principles` و`architecture-patterns` كيتداخلوا جزئياً مع Addy Osmani.
- `design-system-patterns` و`mobile-android-design` كيتداخلوا مع بعض UI skills؛ نخليو الأفضل حسب جودة المحتوى.
- `secrets-management` وSTRIDE كيزيدو جوانب أمنية ماشي مغطاة بالكامل في المهارات الأخرى.

## 2. MCP Server Development — Official MCP Plugin

**المصدر:** https://github.com/anthropics/claude-plugins-official

وثائق Model Context Protocol الرسمية كتذكر Plugin باسم `mcp-server-dev` فيه:
- `build-mcp-server` — اختيار تصميم MCP server وأسلوب الأدوات وطريقة النشر.
- `build-mcp-app` — إضافة واجهات تفاعلية لـMCP.
- `build-mcpb` — تغليف MCP server محلياً مع runtime.

**طريقة التثبيت الموثقة لـClaude Code:**
```text
/plugin marketplace add anthropics/claude-plugins-official
/plugin install mcp-server-dev
```

**الحالة:** `verified-official-plugin-not-generic-skills-cli`

ما ندخلوش هذا الأمر في سكريبت `npx skills`؛ خاص Claude Code plugin marketplace أو طريقة تثبيت مكافئة موثقة في الـruntime المستعمل.

## 3. Superpowers — Agentic Software Development Workflow

**المصدر:** https://github.com/obra/superpowers

إطار عمل متكامل فيه مهارات مترابطة لتحديد المتطلبات، التصميم، التخطيط، التنفيذ والاختبار. التثبيت كيختلف حسب Coding Agent؛ README كيوثق Plugin marketplaces وطرق native لكل Runtime.

**الحالة:** `verified-project-plugin-runtime-specific`

**قرار التثبيت:** ما نضيفوش إلى `npx skills` العام؛ لأن التثبيت الرسمي موصوف كـPlugin/Extension، وماشي كأمر عام موثق لتثبيت Skill واحدة لكل Runtime. نحتافظو به كخيار قوي لمرحلة اختيار Coding Agent.

## ملاحظات

- تثبيت Skills من Wshobson لا يثبت LangChain أو vector database أو Python packages أو GitHub Actions runners.
- RAG يحتاج مكونات تشغيلية مستقلة مثل embedding model وvector store؛ Skill كتقدم إرشادات فقط.
- MCP skills لا تنشئ server أو تربط حساباتك تلقائياً.
- لم يتم تنفيذ أي تثبيت من هذه الدفعة على Termux.
