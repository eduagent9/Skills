# Master Skills Collection Plan

هاد المستودع غادي يكون مكتبة واسعة ديال Agent Skills للاستعمال الحالي والمستقبلي، وماشي محصور فـ UI أو فمشروع واحد.

## الهدف

نجمعو Skills مفيدة من تخصصات مختلفة، نتحققو من المصدر وملف `SKILL.md` وأمر التثبيت والتوافق، ومن بعد نوجدّو تثبيت عالمي على Termux دفعة واحدة.

**مهم:** "نجمعو كل ما قد نحتاجه" ما كتعنيش نثبتو كل Skill موجودة فالإنترنت بلا تمييز. غادي نجمعو أكبر مجموعة عملية ومفيدة، ونستبعدو النسخ المكررة، المهارات المهجورة، الخطيرة، أو اللي كتفرض أدوات ما عندناش.

## التخصصات اللي غادي نغطيو

| المجال | شنو خاصنا نجمعو |
|---|---|
| AI وAgent Engineering | بناء Agents، tool calling، MCP، orchestration، RAG، evaluation |
| UI/UX وDesign | تصميم الواجهات، design systems، accessibility، typography، motion |
| Android Native | Kotlin، Jetpack Compose، Android SDK، Gradle، testing، Play publishing |
| Cross-platform Mobile | Flutter، React Native، Expo، performance، offline-first |
| Frontend | HTML/CSS/JS/TS، React، Vue، Angular، Next.js، responsive design |
| Backend وAPIs | Node.js، Python، Java، Go، REST، GraphQL، auth، API design |
| Databases وStorage | SQL، PostgreSQL، SQLite، MongoDB، Redis، migrations، backups |
| Architecture | clean architecture، modularity، domain modeling، scalability |
| Testing وQA | unit، integration، E2E، browser/device automation، regression |
| Debugging وCode Quality | systematic debugging، refactoring، code review، static analysis |
| Security وPrivacy | secure coding، threat modeling، dependency audit، secrets، permissions |
| DevOps وCloud | Docker، CI/CD، GitHub Actions، Linux، deployment، monitoring |
| Terminal وAutomation | Termux، Bash، Python scripting، CLI، task automation |
| Git وProject Management | Git workflows، branches، releases، issue triage، documentation |
| AI Media | image، video، audio، speech، generation workflows |
| Data وAnalytics | data processing، dashboards، reporting، ETL |
| Product وBusiness | requirements، UX research، product planning، analytics |
| Localization | Arabic RTL، French، English، i18n، translation quality |
| Documents وOffice | PDF، Excel، Word، presentations، diagrams |
| Research وLearning | technical research، source evaluation، learning plans |

## مصادر رئيسية للفحص

هاد المستودعات مصادر مرشحة للفحص، وماشي تأكيد أن كل Skill فيها مناسبة أو قابلة للتثبيت العالمي. خاصنا نراجع كل Skill بوحدها.

### مصادر عامة ورسمية
- OpenAI: https://github.com/openai/skills — المستودع القديم معلن Deprecated؛ لا نعتمده للتثبيت الجديد.
- Anthropic: https://github.com/anthropics/skills
- Google: https://github.com/google/skills
- GitHub Copilot: https://github.com/github/awesome-copilot
- Vercel: https://github.com/vercel-labs/agent-skills
- Vercel Skills CLI: https://github.com/vercel-labs/skills

### تطوير التطبيقات والمنصات
- Android: https://github.com/android/skills
- Android/Google developer skills: https://github.com/google/skills
- React Native / Callstack: https://github.com/callstackincubator/agent-skills
- Firebase: https://github.com/firebase/agent-skills
- Supabase: https://github.com/supabase/agent-skills
- Neon: https://github.com/neondatabase/agent-skills
- MongoDB: https://github.com/mongodb/agent-skills
- Cloudflare: https://github.com/cloudflare/skills
- Vercel: https://github.com/vercel-labs/agent-skills

### الجودة والأمن والتشغيل
- Trail of Bits: https://github.com/trailofbits/skills
- Sentry: https://github.com/getsentry/skills
- Microsoft Playwright CLI: https://github.com/microsoft/playwright-cli
- Addy Osmani: https://github.com/addyosmani/agent-skills
- Wshobson: https://github.com/wshobson/agents
- Superpowers: https://github.com/obra/superpowers

### التصميم والوسائط
- UI Skills directory: https://www.ui-skills.com/skills
- Skills directory: https://skills.sh/
- Emil Kowalski: https://github.com/emilkowalski/skills
- Impeccable: https://github.com/pbakaus/impeccable
- UI UX Pro Max: https://github.com/nextlevelbuilder/ui-ux-pro-max-skill

## دفعات تم تدقيقها

- [الدفعة 01: Skills رسمية لمنصات Supabase وCloudflare وFirebase وNeon وAndroid](VERIFIED-SKILLS-BATCH-01.md)
- [الدفعة 02: هندسة البرمجيات والاختبارات وأتمتة المتصفح](VERIFIED-SKILLS-BATCH-02.md)

- [الدفعة 03: قواعد البيانات وORM وMCP وحدود التوافق](VERIFIED-SKILLS-BATCH-03.md)
- [الدفعة 04: Python وDocker وأمن التطبيقات](VERIFIED-SKILLS-BATCH-04.md)
- [الدفعة 05: React Native واختبارات الموبايل](VERIFIED-SKILLS-BATCH-05.md)
- [الدفعة 06: AI Agents وLLM وArchitecture وDevOps](VERIFIED-SKILLS-BATCH-06.md)
- [الدفعة 07: Flutter وKotlin وFirebase وMongoDB](VERIFIED-SKILLS-BATCH-07.md)

## شروط قبول أي Skill

1. نحدد الاسم الرسمي والـslug الصحيح.
2. نتحقق من المستودع الأصلي ووجود ملف `SKILL.md` الفعلي.
3. نتحقق من أمر التثبيت الصحيح، وندعم `--global` إلا إذا كانت المهارة تتطلب طريقة مختلفة موثقة.
4. نقرأ محتوى المهارة ونفحص أي scripts أو hooks أو أوامر shell أو MCP servers مرفقة.
5. نراجع الترخيص، النشاط، المصدر، والتوافق مع أدوات المستخدم.
6. نكشف التكرار بين المهارات قبل إضافتها للائحة النهائية.
7. نصنف المهارات: أساسية، مفيدة، اختيارية/متخصصة، أو مستبعدة.
8. ما نشغلو حتى سكريبت مجهول أو أوامر خارجية لمجرد أن Skill طلبتها.

## سجل التحقق

كل Skill غادي يكون عندها:
- الاسم والوظيفة
- المصدر والرابط
- أمر التثبيت العالمي
- حالة التحقق: `verified` أو `needs-review` أو `rejected`
- التخصص والأولوية
- ملاحظات التوافق والتكرار والمخاطر

## خطة Termux النهائية
- [دليل تجهيز Termux وشروط التثبيت الآمن](TERMUX-SETUP-AND-SAFETY.md)


ما كاين حتى تثبيت دابا. من بعد ما نساليو الجمع والتدقيق:
1. نخرجو manifest نهائي بلا تكرار.
2. نوجدّو سكريبت تثبيت عالمي لـTermux.
3. السكريبت يعرض شنو غادي يثبت ويتوقف عند الأخطاء بدل ما يخبيها.
4. نثبتو على دفعات آمنة مع تسجيل النتائج.
5. نتحققو باستعمال `npx skills list --global` ونراجعو المهارات اللي فشلات.

## قواعد مهمة

- ما نخلطوش مستودع Skills مع EduAgent أو Makhzoni أو Tatbi9i.
- ما ننسخوش محتوى Skills للريبو بلا إذن؛ نخزنو metadata والروابط والأوامر.
- ما نثبتوش 844 مهارة UI أو آلاف المهارات بشكل أعمى.
- التثبيت النهائي يكون على مستوى المستخدم باستعمال `--global` متى كان مدعوماً.
- أي Skill كتحتاج API key أو خدمة مدفوعة أو بيئة خاصة غادي نوسموها بوضوح، وما نفترضوش أنها مجانية.
