# Batch 10 — Skill Validation and Security Audit Tools

هاد الدفعة ماشي Skills للمشاريع؛ هي أدوات باش نتحققو من جودة وأمان Skills قبل التثبيت.

## 1. Agent Skills Reference Validator — skills-ref

**المصدر:** https://github.com/agentskills/agentskills

الأداة المرجعية كتتحقق من:
- وجود `SKILL.md`.
- صحة YAML frontmatter.
- حقول `name` و`description` المطلوبة.
- حدود الاسم والوصف والتوافق.
- مطابقة اسم المجلد مع اسم Skill.

**الأمر بعد تثبيت الأداة بالطريقة الرسمية المناسبة للنظام:**
```bash
skills-ref validate /path/to/skill-directory
```

**الحالة:** `verified-specification-validator`

ملاحظة: التحقق البنيوي ما كيثبتش أن المحتوى آمن أو صحيح؛ خاص مراجعة بشرية/تحليل أمني كذلك. لا نستعملش curl-to-shell بلا تحقق من checksum ومراجعة السكريبت.

## 2. Cisco AI Defense — Skill Scanner

**المصدر:** https://github.com/cisco-ai-defense/skill-scanner

أداة مفتوحة لفحص Agent Skills. كتجمع static checks وYARA/Python rules وتحليل dependencies وdataflow، مع خيار LLM judge.

**المتطلبات المعلنة:**
- CPython 3.11–3.14.
- uv أو pip.
- بعض الأنظمة غير المدعومة بالـwheels كتحتاج Go للبناء من المصدر.

**التثبيت الموثق:**
```bash
uv tool install cisco-ai-skill-scanner
```

**الفحص:**
```bash
skill-scanner scan /path/to/skill
skill-scanner scan-all /path/to/skills
```

**الحالة:** `verified-tool-needs-termux-build-compatibility-check`

على Termux/Android ARM64 قد يحتاج بناء مكونات native من المصدر؛ ما ندخلوش التثبيت في سكريبت Skills الرئيسي. الفحص الثابت لا يضمن اكتشاف كل التهديدات. الـLLM judge وVirusTotal وCisco AI Defense اختيارية وتحتاج مفاتيح/خدمات.

## 3. NVIDIA SkillSpector

**المصدر:** https://github.com/NVIDIA/SkillSpector

أداة فحص أمني للـSkills والـPlugins: prompt injection، data exfiltration، privilege escalation، supply-chain، excessive agency، MCP tool poisoning وغيرها.

**الحالة:** `verified-tool-needs-platform-review`

نستعملها كمرشح لفحص دفعات Skills؛ ماشي Skill تثبيت عامة. خاص مراجعة المتطلبات والتوافق مع Termux قبل تشغيلها محلياً.

## 4. سياسة قبول النتائج

- `skills-ref` = تحقق بنيوي، ماشي security scanner.
- Cisco Skill Scanner أو SkillSpector = فحص أمني مساعد، ماشي ضمان 100%.
- أي Skill فيها hooks أو scripts أو أوامر shell أو اتصالات خارجية كتحتاج مراجعة منفصلة.
- ما نشغلوش Skill أو scripts ديالها أثناء الفحص.
- لا نعتمد على نتيجة scanner وحدها لإدخال Skill إلى manifest النهائي.
- نسجل اسم الأداة وإصدارها ونتيجة الفحص وتاريخه في سجل المراجعة.