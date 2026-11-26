# Termux Setup and Installation Safety

هاد الدليل خاص بمرحلة تجهيز Termux قبل تثبيت Skills. **ما كيثبت حتى Skill** وما كيشغل حتى سكريبت من مستودع خارجي.

## 1. المتطلبات

- Termux حديث ومحدّث.
- Node.js `22.20.0` أو أحدث؛ Skills CLI الحالي كيتطلب هاد الحد الأدنى.
- npm وnpx.
- Git للوصول إلى مستودعات GitHub.
- مساحة تخزين وإنترنت كافيين.

التحقق من الإصدارات:
```bash
node --version
npm --version
npx --version
git --version
```

## 2. تجهيز Termux

إذا ما كانتش الأدوات مركبة:
```bash
pkg update
pkg upgrade -y
pkg install nodejs npm git -y
```

من بعد تحقق أن:
- `node --version` كيعطي v22.20.0 أو أحدث.
- `npm --version` و`npx --version` خدامين.
- `git --version` خدام.

إلى كان عندك إصدار Node أقدم، ما تكملش التثبيت حتى تحدّثه.

## 3. فحص Skills CLI بلا تثبيت Skills

```bash
npx --yes skills@latest --help
```

هاد الأمر كيعرض المساعدة ديال CLI فقط. ما تستعملش `skills add` حتى تكون لائحة المصادر النهائية واجدة.

أوامر الإدارة بعد التثبيت:
```bash
npx skills list --global
npx skills check
npx skills update -g
```

## 4. Global scope وAgent targets

- `-g` أو `--global` كيثبت Skills على مستوى المستخدم بدل مجلد مشروع واحد.
- `-a` أو `--agent` كيحدد Agent runtime المستهدف.
- CLI كيدعم بزاف ديال coding agents، ولكن Skill ما كتخدمش داخل تطبيق ChatGPT Android تلقائياً.
- خاص يكون عندك Coding Agent كيدعم Agent Skills ومثبت فعلياً في Termux/البيئة اللي غادي تستعملها.
- أمثلة لمسارات اكتشاف المهارات: Codex وGemini CLI وClaude Code وOpenCode عندهم مسارات مختلفة.
- ما نختاروش `--agent '*'` بشكل تلقائي قبل ما نعرفو شنو Agents مركبين؛ تثبيت المهارات في مسارات برامج ما كتستعملهاش ما غاديش يفيد.

## 5. قواعد السكريبت النهائي

السكريبت النهائي خاصو:
1. يتحقق من Termux وNode.js/npm/npx/Git قبل أي تثبيت.
2. يعرض عدد Skills والمصادر والأوامر قبل التنفيذ.
3. يستعمل أسماء Skills دقيقة ومتحقق منها.
4. يثبت فقط العناصر ذات الحالة `verified`؛ ويستبعد `needs-review`.
5. يستعمل Global scope ويحدد Agent target بوضوح.
6. يسجل نجاح/فشل كل مصدر في log.
7. يوقف أو يكمل بشكل مضبوط عند الفشل، وما يخبيش الأخطاء.
8. ما يشغل حتى scripts داخل Skills تلقائياً؛ تثبيت Skill ماشي إذن لتشغيل ملفاتها.
9. ما يثبتش CLIs أو MCP servers أو browser binaries أو SDKs كأنها Skills.
10. يدير تحقق نهائي بـ`npx skills list --global` ويقارن النتائج بالـmanifest.

## 6. حدود الهاتف

Skills هي تعليمات وملفات معرفة، ماشي بيئة تطوير كاملة. تثبيتها ما كيثبتش تلقائياً:
- Android SDK أو Gradle أو Android Emulator.
- Docker Engine أو Kubernetes.
- Python frameworks أو database servers.
- Browser/Chromium أو أدوات أتمتة الأجهزة.
- مفاتيح API أو اشتراكات الخدمات.

أي أداة إضافية غادي تكون في لائحة منفصلة مع متطلباتها وتوافقها مع Termux.

## 7. مراجع رسمية

- Skills CLI ومتطلبات Node.js: https://www.npmjs.com/package/skills
- مرجع CLI والخيارات `-g` و`-a`: https://github.com/vercel-labs/skills/blob/main/docs/commands.md
- حزمة Node.js الرسمية في Termux: https://github.com/termux/termux-packages/blob/master/packages/nodejs/build.sh
- Gemini CLI Skills discovery: https://github.com/google-gemini/gemini-cli/blob/main/docs/cli/skills.md

**الحالة:** دليل تحضيري فقط. لا توجد عملية تثبيت نفذت على الهاتف.
