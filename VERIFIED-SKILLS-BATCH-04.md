# Verified Skills Batch 04 — Python, Docker, Application Security

هاد الدفعة كتضيف مهارات Python وDocker والأمن. فرقنا بين المهارات الجاهزة للترشيح، واللي خاصها مراجعة إضافية قبل التثبيت.

## 1. Python Backend — Django, FastAPI, Flask

**المصدر:** https://github.com/full-stack-skills/python-skills

**الترخيص المعلن:** Apache-2.0

**Skills:**
- `django` — تطوير تطبيقات Django وواجهات REST.
- `fastapi` — FastAPI، validation، dependency injection، APIs.
- `flask` — تطبيقات Flask وواجهاتها وتكامل قواعد البيانات.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add full-stack-skills/python-skills --skill fastapi --skill django --skill flask --global
```

**الحالة:** `needs-review`

README كيأكد صيغة Agent Skills ووجود SKILL.md وأمر npx، ولكن المستودع صغير جداً من ناحية التبني العام حسب المعلومات المتاحة. نخليه مرشحاً، وما ندخلوش في التثبيت الافتراضي حتى نفحص محتوى ملفات SKILL.md والـscripts والتحديثات الأخيرة.

## 2. Docker — Container Engineering and Agent Safety

**المصدر الرسمي:** https://github.com/docker/skills

**Skills مستقرة مختارة:**
- `docker-project-foundations` — تأسيس مشروع Docker.
- `docker-build-strategies` — Dockerfile، builds، صور محسنة وآمنة.
- `docker-compose-patterns` — تنظيم الخدمات المتعددة بـCompose.
- `docker-destructive-guardrails` — التأكد قبل عمليات Docker المدمرة أو غير القابلة للتراجع.
- `docker-agent-config` — إعداد Docker Agent وagent.yaml.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add docker/skills --skill docker-project-foundations --skill docker-build-strategies --skill docker-compose-patterns --skill docker-destructive-guardrails --skill docker-agent-config --global --yes
```

**الحالة:** `verified-source-skill-names-install-method`

**مستبعدة من الدفعة العامة حالياً:**
- `docker-sandboxes-lifecycle`, `docker-sandboxes-network-credentials`, `docker-sandboxes-kits`: مرتبطة بـDocker Sandboxes وCLI إضافي، وبعضها تجريبي.
- `docker-docs`: موصوفة كتجريبية وتحتاج Docker Docs MCP tool.
- `docker-agent-run`, `docker-agent-deploy`: تحتاج Docker Agent runtime وأدواته؛ يمكن إضافتها لاحقاً حسب الحاجة.
- لا يعني تثبيت Skills أن Docker Engine أو Docker Desktop قابل للتثبيت على Android/Termux؛ هادي أدوات منفصلة.

## 3. Semgrep — Secure Coding and LLM Security

**المصدر:** https://github.com/semgrep/skills

README كيعلن ثلاث Skills:
- `code-security` — إرشادات OWASP وsecure coding عبر لغات متعددة، منها Python وJavaScript/TypeScript وKotlin وGo وغيرها.
- `llm-security` — أمن تطبيقات LLM وRAG وAI pipelines، مستند إلى OWASP LLM Top 10.
- `semgrep` — استعمال Semgrep static analysis وكتابة custom rules ودمج الفحص في CI/CD.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add semgrep/skills --skill code-security --skill llm-security --skill semgrep --global --yes
```

**الحالة:** `verified-source-skill-names-needs-content-audit`

**ملاحظات السلامة:**
- المستودع كيصف الحزمة بأنها Beta ومولدة جزئياً من قواعد Semgrep المفتوحة.
- ملفات Skills قد تحتوي scripts وrules؛ ما نشغلو حتى script قبل فحصه.
- Skill `semgrep` ما كتثبتش Semgrep CLI أو تشغل scans تلقائياً؛ CLI والتشغيل على المشروع قرار منفصل.
- نخليوها مرشحة قوية للأمن، لكن خاصنا نراجع scripts ومحتوى كل Skill قبل إدراجها في سكريبت التثبيت النهائي.

## قرارات Termux

- Python Skills عبارة عن تعليمات فقط؛ Django/FastAPI/Flask packages ما كتتثبتش معها.
- Docker Skills ما كتثبتش Docker Engine، وDocker Engine على Termux ماشي مضمون.
- Semgrep Skill ما كتثبتش أداة Semgrep نفسها، وقد تكون الأداة غير متاحة أو محدودة على Android.
- لا توجد أوامر من هذه الدفعة تم تنفيذها على هاتف المستخدم.
