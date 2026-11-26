# Verified Skills Batch 03 — Databases, ORM, MCP and Platform Boundaries

هاد الدفعة كتغطي مهارات قواعد البيانات وORM، وكتوضح كذلك الفرق بين Skill قابلة للتثبيت العام وبين Plugin أو MCP أو CLI منفصل.

## 1. Prisma — Database and ORM Engineering

**المصدر الرسمي:** https://github.com/prisma/skills

**التوافق:** README الرسمي كيأكد أن المستودع كيتبع Agent Skills format، وكل Skill فيها `SKILL.md`، وكيصرّح بالتوافق مع `npx skills add`.

**Skills الموثقة في README:**
- `prisma-cli` — أوامر Prisma CLI، migrations، schema، generate.
- `prisma-upgrade-v7` — ترقية مشاريع Prisma 6 إلى 7.
- `prisma-mongodb-upgrade` — مسار ترقية مشاريع MongoDB.
- `prisma-client-api` — Prisma Client وCRUD وtransactions وraw SQL.
- `prisma-driver-adapter-implementation` — تنفيذ واختبار SQL driver adapters.
- `prisma-orm-setup` — إعداد Prisma ORM والاتصال بقواعد البيانات.
- `prisma-postgres-setup` — إعداد Prisma Postgres والتحقق من الاتصال.
- `prisma-compute` — نشر وتشغيل تطبيقات Prisma Compute.

**أمر التثبيت العالمي المقترح:**
```bash
npx skills add prisma/skills --skill prisma-cli --skill prisma-upgrade-v7 --skill prisma-mongodb-upgrade --skill prisma-client-api --skill prisma-driver-adapter-implementation --skill prisma-orm-setup --skill prisma-postgres-setup --skill prisma-compute --global
```

**الحالة:** `verified-source-skill-names-install-method`

**ملاحظات مهمة قبل التثبيت:**
- بعض المهارات مرتبطة بإصدارات Prisma بعينها؛ ما خاصش نستعملو تعليمات ترقية قديمة على مشروع بإصدار مختلف.
- مهارة Prisma 8 `prisma-8` كتجي من حزم Prisma 8 نفسها، ومصدر Prisma كيوصي بمزامنتها مع إصدار الحزمة، وماشي تثبيتها عالمياً كنسخة واحدة لكل المشاريع. لذلك ما نضيفوهاش لأمر التثبيت العام.
- Prisma 8 موصوف في الوثائق الحالية بأنه early access؛ ما نعتمدوش عليه كخيار افتراضي لمشاريع مستقرة بلا طلب واضح.
- Skill ما كتثبتش Prisma CLI أو قاعدة البيانات أو خدمات الاستضافة؛ هادو أدوات مستقلة كتحتاج قرار حسب المشروع.

## 2. Microsoft Skills — Official but Plugin-specific

**المصدر:** https://github.com/microsoft/skills

المستودع فيه Skills وAgents وMCP server configurations، ومن أمثلته:
- Azure SDK language plugins.
- Backend / FastAPI agent.
- Frontend / React / TypeScript agent.
- Infrastructure agent.
- Planner وDocumentation agents.

**طريقة التوزيع الموثقة:** Copilot CLI plugin marketplace، بأوامر من داخل Copilot CLI مثل:
```text
/plugin marketplace add microsoft/skills
/plugin install deep-wiki@skills
/plugin install azure@skills
```

**الحالة:** `verified-source-needs-own-runtime`

**قرار التثبيت:** ما يدخلش في سكريبت `npx skills` العام؛ لأنه Plugin bundle موجه لـCopilot CLI، وكيحتاج MCP integrations وأدوات Azure حسب الاستعمال. نحتافظو به كخيار منفصل إذا كان runtime المستعمل كيدعمو.

## 3. Anthropic Skills — Official examples and plugin marketplace

**المصدر:** https://github.com/anthropics/skills

المستودع الرسمي فيه أمثلة Skills وملفات وثائق PDF/DOCX/PPTX/XLSX وskills تقنية وإبداعية. README كيشرح التثبيت عبر Claude Code plugin marketplace أو Claude API، وما كيقدمش أمراً عاماً موثقاً لتثبيت كل المهارات على جميع runtimes.

**الحالة:** `verified-source-runtime-specific`

**قرار التثبيت:** ما نضيفوش مباشرة لأمر التثبيت العام قبل فحص أسماء الـSkills المختارة والتراخيص والـscripts وطريقة التثبيت المدعومة في runtime المستخدم.

## 4. MCP Skills Extension — Specification, not a ready-made skill pack

**المصدر الرسمي:** https://github.com/modelcontextprotocol/ext-skills

هذا مشروع مواصفة/امتداد MCP لاكتشاف وتوزيع Skills عبر MCP primitives، وليس مستودع حزمة Skills جاهزة للتثبيت بأمر `npx skills add`.

**الحالة:** `verified-specification-not-installable-skill-pack`

**قرار التثبيت:** لا يدخل في سكريبت Skills؛ يمكن الرجوع إليه عند تطوير MCP clients/servers التي تدعم الامتداد.

## قواعد التثبيت لهذه الدفعة

- نثبت فقط مهارات Prisma العامة بعد ما نتحققو من أن المستخدم عنده حاجة فعلية لـPrisma؛ المهارات المتخصصة فـMongoDB أو Prisma Compute اختيارية وماشي شرط لكل مشروع.
- ما نثبتوش Plugins أو MCP servers أو CLIs كأنها Skills.
- ما نعمموش Skill مرتبطة بإصدار framework على كل المشاريع.
- جميع الأوامر هنا توثيقية ولم يتم تنفيذها على Termux.
