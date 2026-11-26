# Verified Skills Batch 05 — React Native, Mobile QA and Gemini CLI

## 1. Callstack — React Native Engineering

**المصدر:** https://github.com/callstackincubator/agent-skills

**الترخيص المعلن:** MIT

README الرسمي كيوضح أن كل Skill مستقلة فيها `SKILL.md`، وكيعطي أمر التثبيت عبر Skills CLI.

**Skills:**
- `react-native-best-practices` — الأداء، startup، rendering، memory، bundle size وnative integration.
- `react-navigation` — Navigation 7: stacks، tabs، drawers، sheets وsafe areas.
- `react-native-tv-best-practices` — واجهات التلفاز والتحكم عن بعد؛ تخصصية.
- `create-react-native-library` — إنشاء libraries وnative modules.
- `upgrading-react-native` — تحديث React Native وإصلاح native project diffs.
- `github-actions` — بناء artifacts واختبارات iOS/Android في CI.
- `react-native-testing` — اختبارات React Native Testing Library.
- `agent-device` — أتمتة أجهزة iOS/Android، screenshots، logs وUI inspection.
- `dogfood` — exploratory QA وsmoke tests وwalkthroughs.
- `assess-react-native-migration` — تقييم نقل تطبيق إلى React Native.
- `react-native-brownfield-migration` — دمج React Native تدريجياً داخل تطبيق Native قائم.

**أمر التثبيت العالمي:**
```bash
npx skills add callstackincubator/agent-skills --skill react-native-best-practices --skill react-navigation --skill react-native-tv-best-practices --skill create-react-native-library --skill upgrading-react-native --skill github-actions --skill react-native-testing --skill agent-device --skill dogfood --skill assess-react-native-migration --skill react-native-brownfield-migration --global --yes
```

**الحالة:** `verified-source-skill-names-install-method`

**ملاحظات Termux:**
- المهارات نفسها تعليمات، ولا تعني أن Android Emulator أو iOS Simulator يشتغل على Termux.
- `agent-device` يحتاج CLI/device tooling مستقل؛ نفحص متطلباته قبل تثبيت الأداة.
- CI build عبر GitHub Actions ما كيحتاجش emulator محلي على الهاتف، لكنه يحتاج repo وworkflow permissions.
- مهارات TV وbrownfield اختيارية؛ يمكن تخفيضها في manifest النهائي إذا كان الهدف تقليل الضجيج.

## 2. Google Gemini CLI — Official Skills Runtime Documentation

**المصدر:** https://github.com/google-gemini/gemini-cli

وثائق Google الرسمية كتأكد دعم Agent Skills واكتشاف مهارات المستخدم من:
- `~/.gemini/skills/`
- `~/.agents/skills/`

وكتشرح كذلك:
- `gemini skills install <url>`
- `gemini skills link <path>`
- `/skills list` و`/skills reload`

**الحالة:** `verified-runtime-documentation-not-skill-pack`

هاد المصدر وثائق Runtime، ماشي حزمة Skills مستقلة. ما نضيفوش لأمر `npx skills add`. نقدروا نستعملو Skills CLI باش يثبت في مسار Gemini CLI العالمي إذا كان Gemini CLI مركب ومدعوم في Termux.

## حدود واضحة

- لا يتم تثبيت React Native أو Android SDK أو Emulator أو Xcode بمجرد تثبيت Skills.
- لا يتم تشغيل GitHub Actions أو بناء APK دون إعداد repository/workflow وصلاحيات GitHub المناسبة.
- مهارات Mobile QA قد تشير لأدوات خارجية؛ لا نثبت CLI أو binaries إلا بعد مراجعة منفصلة.
- ما زال ما تنفذ حتى أمر تثبيت من هذه الدفعة على Termux.
