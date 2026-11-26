# Verified Skills Batch 01 — Official Platform Skills

هاد الدفعة فيها Skills من ناشرين رسميين، وتأكدنا من صفحات المصدر وطريقة التثبيت. هادشي ما كيعنيش أن الخدمات نفسها مجانية أو أن كل Skill غادي تخدم بلا حسابات/API keys.

## الحالة

- التثبيت: **مازال ما بداش**.
- نطاق التثبيت النهائي: عالمي باستعمال `--global` متى كان المصدر كيدعم Skills CLI.
- المهارات المرتبطة بمنصة معينة كتكون اختيارية: كتستعمل غير ملي يكون المشروع خدام بهاد المنصة.
- كل أمر أدناه محفوظ كأمر موثق من المصدر، ولكن خاص اختبار فعلي على Termux وقت التثبيت.

## 1. Supabase — Database, Auth, Storage, APIs

**المصدر الرسمي:** https://github.com/supabase/agent-skills

**المهارات الموثقة:**
- `supabase` — دليل شامل لمنتجات Supabase وAuth وEdge Functions وRealtime وStorage وVectors وCLI وMCP.
- `supabase-postgres-best-practices` — تصميم PostgreSQL، الفهارس، الأداء، RLS، pooling والمراقبة.

**أمر التثبيت العالمي:**
```bash
npx skills add supabase/agent-skills --skill supabase --skill supabase-postgres-best-practices --global
```

**الحالة:** `verified-source-and-install`

ملاحظة: ما غاديش نحتاجوها إلا ملي نختارو Supabase أو نراجعو مشروع مستعمل ليه.

## 2. Cloudflare — Hosting, Workers, Edge, Agents

**المصدر الرسمي:** https://github.com/cloudflare/skills

**Skills مرشحة ومذكورة في README الرسمي:**
- `cloudflare` — اختيار منتجات Cloudflare وفهم المنصة.
- `agents-sdk` — Agents مع state وscheduling وRPC وMCP وstreaming.
- `durable-objects` — حالة مشتركة، WebSockets والتنسيق.
- `wrangler` — CLI والنشر وإدارة Workers وKV وR2 وD1.
- `workers-best-practices` — كتابة ومراجعة Workers.
- `web-perf` — تدقيق Core Web Vitals.

**أمر التثبيت العالمي:**
```bash
npx skills add https://github.com/cloudflare/skills --skill cloudflare --skill agents-sdk --skill durable-objects --skill wrangler --skill workers-best-practices --skill web-perf --global
```

**الحالة:** `verified-source-and-install`

ملاحظة: هاد المجموعة متخصصة في Cloudflare، وماشي ضرورية للمشاريع اللي ما كتستعملوش.

## 3. Firebase — Google Backend Platform

**المصدر الرسمي:** https://github.com/firebase/skills

**النطاق:** Skills خاصة بتطوير التطبيقات باستعمال Firebase وخدماته. صفحة المصدر كتقدم التثبيت عبر Skills CLI، لكن أسماء كل المهارات الفرعية خاصها جرد مستقل قبل اختيارها بالاسم.

**أمر التثبيت العالمي للمستودع:**
```bash
npx skills add https://github.com/firebase/skills --global
```

**الحالة:** `verified-repository-install-command` — أسماء المهارات الداخلية مازال خاصها جرد.

## 4. Neon — PostgreSQL وBackend Services

**المصدر الرسمي:** https://github.com/neondatabase/agent-skills

**المهارات اللي تأكدنا من وجودها:**
- `neon` — نظرة عامة على المنصة وخدماتها.
- `neon-postgres` — SQL وschema وperformance.
- `neon-functions` — Functions وAPIs وstreaming.
- `neon-ai-gateway` — ربط نماذج AI عبر gateway.
- `neon-realtime` — الاستعلامات الحية والواجهات التفاعلية.
- `neon-object-storage` — تخزين الملفات والـblobs.

**أمر التثبيت العالمي:**
```bash
npx skills add neondatabase/agent-skills --skill neon --skill neon-postgres --skill neon-functions --skill neon-ai-gateway --skill neon-realtime --skill neon-object-storage --global
```

**الحالة:** `verified-source-and-skill-names`

ملاحظة: Neon كيوثق حتى CLI خاص به للتثبيت والتحديث. غادي نقارنو الطريقة الرسمية مع Skills CLI على Termux قبل التنفيذ. بعض الخصائص مرتبطة بالخطة أو المنطقة أو credentials.

## 5. Android — Native Android Development

**المصدر الرسمي:** https://github.com/android/skills

المستودع رسمي ومبني على Agent Skills format، ويضم تخصصات Android مثل performance وsecurity وtesting وWear وTV وXR.

**طريقة التثبيت الرسمية الحالية:**
```bash
android skills add --all
```

**الحالة:** `verified-source`, لكن `needs-termux-compatibility-check`.

مهم: الأمر تابع لـAndroid CLI وماشي `npx skills`، وما عندناش تأكيد أن Android CLI متوفر ومناسب لبيئة Termux. ما نضيفوهش لسكريبت التثبيت العام حتى نتحققو من التوافق. ما نبدلوش الأمر بتخمين.

## مصادر تمت مراجعتها واستبعادها من التثبيت العام

### OpenAI skills repository
https://github.com/openai/skills

المستودع معلن عليه Deprecated في README. لذلك ما نعتمدوهش كمصدر تثبيت جديد؛ نبحثو على البديل الحالي الموثق من OpenAI/Codex عند الحاجة.

### Sentry employee skills
https://github.com/getsentry/skills

README كيوضح أن هاد المستودع موجه لفريق Sentry الداخلي. ما نضيفوش مهارات داخلية للائحة العامة. نراجع مستودع Sentry الموجه للمطورين لاحقاً إذا احتجنا skills لإعداد Sentry أو تشخيص الإنتاج.

### Trail of Bits marketplace
https://github.com/trailofbits/skills

مصدر قوي للأمن، لكن طريقة التثبيت الرسمية المعروضة هي Marketplace/Plugins وليست أمر Skills CLI عام موثق لكل محتوى المستودع. نخليه في قائمة المراجعة الخاصة بالأمن، وما ندخلوش دابا في سكريبت `npx skills`.

## قواعد هاد الدفعة

- ما نثبتوش الخدمات ولا نفتحوش حسابات بالنيابة عن المستخدم.
- وجود Skill لمنصة ما كيعنيش أنها ضرورية لكل مشروع.
- ما نضيفوش API keys أو secrets لأي ملف.
- أوامر التثبيت كتحتاج مراجعة توافق Termux قبل التنفيذ.
