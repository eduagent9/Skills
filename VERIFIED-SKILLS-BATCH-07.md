# Verified Skills Batch 07 — Flutter, Dart, Kotlin, Firebase and MongoDB

## 1. Flutter and Dart — Official Flutter Team Skills

**المصدر الرسمي:** https://github.com/flutter/agent-plugins

**الوثائق الرسمية:** https://docs.flutter.dev/ai/get-started

المستودع فيه Skills رسمية لتطوير Flutter وDart، والوثائق الرسمية كتعطي أوامر Skills CLI وتوضح كذلك أن MCP server ديال Dart خدمة منفصلة.

**مهارات Flutter/Dart المختارة:**
- `flutter-build-responsive-layout` — تصميم واجهات responsive.
- `flutter-fix-layout-issues` — تشخيص overflow وunbounded constraints.
- `flutter-apply-architecture-best-practices` — تنظيم UI/Logic/Data.
- `flutter-setup-declarative-routing` — إعداد routing.
- `flutter-implement-json-serialization` — JSON models.
- `flutter-add-widget-test` — widget tests.
- `flutter-add-integration-test` — integration tests.
- `flutter-managing-state` — إدارة state.
- `flutter-localizing-apps` — localization.
- `flutter-working-with-databases` — قواعد البيانات.
- `flutter-improving-accessibility` — accessibility.
- `dart-run-static-analysis` — static analysis.
- `dart-add-unit-test` — unit tests.
- `dart-fix-runtime-errors` — runtime debugging.
- `dart-resolve-package-conflicts` — dependency conflicts.
- `dart-generate-test-mocks` — test mocks.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add flutter/agent-plugins --skill flutter-build-responsive-layout --skill flutter-fix-layout-issues --skill flutter-apply-architecture-best-practices --skill flutter-setup-declarative-routing --skill flutter-implement-json-serialization --skill flutter-add-widget-test --skill flutter-add-integration-test --skill flutter-managing-state --skill flutter-localizing-apps --skill flutter-working-with-databases --skill flutter-improving-accessibility --skill dart-run-static-analysis --skill dart-add-unit-test --skill dart-fix-runtime-errors --skill dart-resolve-package-conflicts --skill dart-generate-test-mocks --global --yes
```

**الحالة:** `verified-official-repo-and-skill-files`

ملاحظة: Flutter docs الرسمية كتستعمل `--agent universal` في بعض أمثلة التثبيت. قبل إدخال هذا الأمر في سكريبت الهاتف، نثبت اختيار agent target النهائي ونختبر أن مسار global ديال universal مناسب للـruntime الموجود. ما نثبتوش Dart MCP server أو Flutter SDK ضمن أمر Skills.

## 2. Kotlin — Official Kotlin Team Skills

**المصدر:** https://github.com/Kotlin/kotlin-agent-skills

المستودع الرسمي من Kotlin كيتبع Agent Skills standard وكيأكد دعم `npx skills add`.

**Skill name موثق في README كمثال:**
- `kotlin-tooling-agp9-migration` — ترقية Android Gradle Plugin 9 tooling.

**أمر التثبيت العالمي المرشح:**
```bash
npx skills add Kotlin/kotlin-agent-skills --global --yes
```

**الحالة:** `verified-repository-install-needs-list-enumeration`

المستودع ما كيعرضش لائحة كاملة بأسماء المهارات في README اللي تم فحصه؛ لذلك نخلي التثبيت الكامل تفاعلي/مراجَع حتى نستخرج جميع أسماء المجلدات ونتحقق من كل SKILL.md. لا نعتبر هذا الأمر جاهزاً للسكريبت النهائي قبل هاد الخطوة.

## 3. Firebase — Official Firebase Agent Skills

**المصدر canonical:** https://github.com/firebase/agent-skills  
**رابط مختصر موثق كيعيد التوجيه للمصدر:** https://github.com/firebase/skills

أسماء Skills اللي تم التحقق منها مباشرة في ملفات `SKILL.md`:
- `firebase-basics` — مدخل Firebase.
- `firebase-firestore` — Firestore.
- `firebase-analytics` — Analytics.
- `firebase-crashlytics` — Crashlytics.
- `firebase-auth-basics` — Authentication.
- `firebase-hosting-basics` — Hosting.
- `firebase-ai-logic-basics` — AI Logic.
- `firebase-app-hosting-basics` — App Hosting.
- `firebase-data-connect-basics` — Data Connect.
- `firebase-remote-config-basics` — Remote Config.
- `firebase-security-rules-auditor` — تدقيق Security Rules.
- `firestore-rules-creation` — إنشاء Firestore rules.
- `extension-to-functions-codebase` — Firebase Extensions وFunctions.
- `xcode-project-setup` — إعداد Xcode (خاص بـmacOS، لا يدخل في Termux).

**أمر التثبيت العالمي للمهارات المناسبة:**
```bash
npx skills add firebase/skills --skill firebase-basics --skill firebase-firestore --skill firebase-analytics --skill firebase-crashlytics --skill firebase-auth-basics --skill firebase-hosting-basics --skill firebase-ai-logic-basics --skill firebase-app-hosting-basics --skill firebase-data-connect-basics --skill firebase-remote-config-basics --skill firebase-security-rules-auditor --skill firestore-rules-creation --skill extension-to-functions-codebase --global --yes
```

**الحالة:** `verified-official-source-skill-names-install-command`

الحزمة تتضمن ملفات `.mcp.json` و`gemini-extension.json`؛ تثبيت Skills CLI ماشي هو إعداد MCP أو Firebase credentials. استبعدنا `xcode-project-setup` من Termux لأنه يحتاج Xcode/macOS.

## 4. MongoDB — Official Database Skills

**المصدر الرسمي:** https://github.com/mongodb/agent-skills  
**الوثائق الرسمية:** https://www.mongodb.com/docs/agent-skills/

الوثائق الرسمية كتأكد وجود مهارات متخصصة في:
- MongoDB entry point وAtlas.
- MCP setup والاتصال.
- schema design.
- natural-language queries وaggregation.
- query optimization.
- Atlas Stream Processing.
- Search وAI recommendations.
- Queryable Encryption sizing.

README الرسمي كيوثق تثبيت Skills CLI:
```bash
npx skills add mongodb/agent-skills
```

واسم Skill واحد تم التحقق منه مباشرة في ملف `SKILL.md`:
- `mongodb-natural-language-querying`.

**الحالة:** `verified-official-source-install-command-needs-full-slug-audit`

ما نثبتوش MCP server تلقائياً. تشغيل `npx mongodb-mcp-server@latest setup` منفصل، وكيحتاج إعداد اتصال وقاعدة بيانات ومصادقة؛ ما يدخلش في سكريبت Skills.

## قرارات Termux

- Flutter/Kotlin Skills ما كيثبتوش Flutter SDK أو Android SDK أو Gradle.
- Firebase Skills ما كتنشئش Firebase project أو credentials.
- MongoDB Skills ما كتثبتش MongoDB server ولا كتفتح اتصال بقاعدة بيانات.
- مازال ما تنفذ حتى تثبيت من هاد الدفعة على Termux.
