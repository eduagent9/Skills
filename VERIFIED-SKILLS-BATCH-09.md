# Verified Skills Batch 09 — Observability, AI Media and GPU Specialist Skills

## 1. Grafana Labs — Observability and Monitoring

**المصدر الرسمي:** https://github.com/grafana/skills  
**الترخيص المعلن:** Apache-2.0

README الرسمي كيأكد أن المستودع متوافق مع Agent Skills standard وكيعطي أمر التثبيت:
```bash
npx skills add grafana/skills
```

**Skills موثقة في README ومفيدة للمشاريع:**
- `grafana-oss` — dashboards، data sources، provisioning، RBAC وserver configuration.
- `dashboarding` — بناء وتنظيم dashboards.
- `promql` — Prometheus queries.
- `alerting-irm` — alert rules وincident response وSLOs.
- `opentelemetry` — instrumentation وOTLP.
- `loki` — log aggregation وLogQL.
- `tempo` — distributed tracing.
- `prometheus` — metrics وPromQL وalerting.
- `testing` — Synthetic Monitoring وk6/load testing.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add grafana/skills --skill grafana-oss --skill dashboarding --skill promql --skill alerting-irm --skill opentelemetry --skill loki --skill tempo --skill prometheus --skill testing --global --yes
```

**الحالة:** `verified-source-install-method-needs-termux-dependency-review`

المهارات كتقدم معرفة ومساعدة في تصميم المراقبة؛ ما كتثبتش Grafana أو Prometheus أو Loki ولا كتربطها بسيرفراتك. بعض المهارات كتحتاج MCP أو cloud account.

## 2. NVIDIA — GPU, AI and Scientific Computing

**المصدر الرسمي:** https://github.com/NVIDIA/skills

README كيذكر أن NVIDIA كتراجع وتوقّع وتفحص وتقيم كل Skill وVerified Plugin قبل النشر، وكيقدم تثبيت Skills عبر Vercel Skills CLI. كيحتاج CLI حديث.

**الحالة:** `verified-publisher-needs-domain-and-skill-selection`

هاد المجموعة متخصصة في NVIDIA ecosystem وCUDA وGPU/AI/robotics؛ ما ندخلوهاش في التثبيت الأساسي ديال الهاتف، لأن CUDA/GPU tooling غير متوفر تلقائياً في Termux. نختار منها Skills فقط إذا كان عندنا مشروع فعلي كيستعمل NVIDIA أو بيئة سحابية/حاسوب مناسب.

## 3. AI Image, Video and Audio — Third-party candidate sources

**مصادر مرشحة للفحص:**
- https://github.com/inference-sh/skills
- https://github.com/eachlabs/skills
- https://github.com/scenario-labs/skills

المصادر كتعرض مهارات لتوليد الصور والفيديو والصوت وتحويل النص إلى كلام والتفريغ الصوتي، ولكن كتختلف في نماذجها وخدماتها ومتطلبات الحسابات وAPI keys.

**أمثلة أسماء من الفهارس اللي خاصها تدقيق قبل الاختيار:**
- `ai-image-generation`
- `ai-video-generation`
- `text-to-speech`
- `speech-to-text`
- `image-upscaling`
- `background-removal`

**الحالة:** `needs-review`

**قرار التثبيت:** ما ندخلوش هاد المصادر في سكريبت التثبيت العام حالياً حتى:
1. نفحصو محتوى كل SKILL.md والـscripts والـMCP configuration.
2. نتحققو من شروط الخدمة والترخيص والتكلفة وAPI keys.
3. نميزو بين Skill تعليمية وبين خدمة سحابية فعلية.
4. نتأكدو أن CLI والأدوات المرافقة قابلة للاستخدام من Termux.
5. نختارو مزوداً واحداً أو أكثر حسب التكلفة والجودة بدل تثبيت كل التكاملات.

لا نفترض أن توليد الفيديو أو الصور مجاني؛ Skills لا تمنح API credits ولا تخلق مفاتيح الخدمة.

## قواعد السلامة

- لا نثبت أي خدمة سحابية أو MCP server بشكل تلقائي.
- لا نضيف API keys إلى scripts أو GitHub.
- لا ننفذ scripts داخل Skills عند التثبيت.
- نحتافظو بالمهارات المتخصصة في الكتالوج، لكن نخليوها خارج manifest الأساسي حتى يتم التحقق.
