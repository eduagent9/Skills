# UI Skills — Verified Selection Roadmap

هاد اللائحة مبنية على صفحات المهارات الرسمية في UI Skills، وتأكدنا من الاسم والمستودع وأمر التثبيت للعناصر المذكورة أدناه. ما زال خاصنا نراجع توافق كل مهارة مع المشاريع قبل التثبيت النهائي.

## A) أساسية لمعظم مشاريع الواجهات

| Skill | الاستعمال |
|---|---|
| ui-skills-root | يوجه لاختيار أصغر مجموعة مهارات مناسبة للمهمة |
| frontend-design | بناء واجهات Frontend مميزة وجاهزة للإنتاج |
| better-interface | مراجعة شاملة للواجهة: layout وكتابة وألوان وخطوط وإمكانية الوصول |
| better-ui | صقل التفاصيل البصرية والمكونات والحالات والحركة |
| better-layout | تنظيم البنية والمحاذاة والتسلسل والتجاوب |
| better-typography | الخطوط والقراءة والتباعد والهرمية |
| better-colors | بناء أنظمة ألوان وتباين OKLCH |
| better-accessibility | التركيز ولوحة المفاتيح وARIA والنماذج وقارئ الشاشة |
| better-writing | نصوص الأزرار والأخطاء والرسائل وتجربة الكتابة |
| interface-design | لوحات التحكم وتطبيقات الإدارة وSaaS |
| ui-ux-pro-max | أنماط وموارد UI/UX وتقنيات متعددة |

## B) Android وMobile

| Skill | الاستعمال |
|---|---|
| mobile-android-design | Material Design 3 وJetpack Compose |
| android-native-ui | Android Compose أو Views، الوصول، adaptive layout والحالة |
| mobile-native | جعل Web/PWA يبدو طبيعياً على الهاتف: safe areas واللمس والتمرير |
| vercel-react-native-skills | ممارسات React Native وExpo والأداء |
| react-native-design | تصميم شاشات React Native والتنقل وReanimated |
| react-native-best-practices | تحسين FPS والذاكرة وإعادة التصيير وحجم التطبيق |
| appllama-app-design-skill | تصميم شاشات Mobile native-feeling باستخدام Expo/React Native |

ملاحظة: مهارات React Native/Expo لا نثبتها إلا إذا كان المشروع فعلاً مبنياً بهذه التقنية. مهارات Android الأصلية مناسبة لمشاريع Compose/Views؛ وmobile-native مناسبة أكثر لتطبيقات الويب/PWA.

## C) Frontend والأداء والاختبار

| Skill | الاستعمال |
|---|---|
| frontend-ui-engineering | هندسة واجهات Frontend |
| react-doctor | كشف مشاكل React في الأداء والصحة البرمجية |
| modern-web-guidance | ممارسات Web حديثة مع فحص ثابت للمصدر |
| web-quality-audit | تدقيق جودة الويب والأداء وإمكانية الوصول |
| agent-browser | أتمتة المتصفح واختبار الصفحات والتفاعلات |
| playwright-cli | اختبارات Browser وE2E |
| audit | تدقيق تقني للواجهة |
| harden | حالات الخطأ والفراغ والحواف وi18n وتجهيز الإنتاج |
| optimize | تحسين سرعة الواجهة والأصول والحركة |
| tdd | منهجية الاختبار قبل/أثناء التطوير |

## D) التفاعل والأنيميشن

| Skill | الاستعمال |
|---|---|
| interaction-design | Micro-interactions والحركة والانتقالات والتغذية الراجعة |
| improve-animations | مراجعة أنيميشن المشروع ووضع خطة تحسين |
| better-motion | تحديد ما يجب أن يتحرك وبأي مدة ومنحنى |
| accessible-animation | أنيميشن يحترم إعداد تقليل الحركة |
| micro-interaction | حالات الضغط والتبديل والتنبيهات والحوارات |
| animate-expo | أنيميشن React Native/Expo |
| 12-principles-of-animation | مبادئ الحركة الأساسية |

## E) مهارات موجودة مسبقاً في فهرسنا

راجع README.md للمهارات التي جمعناها في الدفعات الأولى والثانية، ومنها Design Lab وBetter UI وFrontend Design وImprove UI وInteraction Design وImpeccable وInterface Design وUI UX Pro Max.

## أوامر التثبيت الموثقة من صفحات UI Skills الرسمية

الأوامر التالية من صفحات المهارات الرسمية؛ لا تنفذها الآن. سنجمع المهارات بعد إنهاء الانتقاء، ونحذف التكرار قبل إعداد سكريبت Termux.

### Android وMobile

```bash
npx skills add https://github.com/wshobson/agents --skill mobile-android-design --global
npx skills add https://github.com/kemiljk/skills --skill android-native-ui --global
npx skills add https://github.com/emilkowalski/skills --skill mobile-native --global
npx skills add https://github.com/vercel-labs/agent-skills --skill vercel-react-native-skills --global
npx skills add https://github.com/wshobson/agents --skill react-native-design --global
npx skills add https://github.com/callstackincubator/agent-skills --skill react-native-best-practices --global
npx skills add https://github.com/Appllama/appllama-skills --skill appllama-app-design-skill --global
```

### تدقيق واختبار

```bash
npx skills add https://github.com/vercel-labs/agent-browser --skill agent-browser --global
npx skills add https://github.com/vercel-labs/agent-browser --skill modern-web-guidance --global
npx skills add https://github.com/pbakaus/impeccable --skill audit --global
npx skills add https://github.com/pbakaus/impeccable --skill harden --global
npx skills add https://github.com/pbakaus/impeccable --skill optimize --global
```

## قواعد ما قبل التثبيت

1. التحقق من وجود SKILL.md ومساره في المصدر الأصلي.
2. التحقق من أن الأمر يقبل تثبيت المهارة بالاسم المحدد.
3. مراجعة التراخيص وعدم نسخ ملفات أصحاب المهارات إلى مستودعنا.
4. تجنب المهارات المتكررة أو المرتبطة بإطار غير مستخدم.
5. التثبيت العالمي دفعة واحدة فقط بعد الموافقة على اللائحة.
6. التحقق بعد ذلك باستعمال npx skills list --global.

## استكشاف الكتالوج الرسمي

```bash
npx ui-skills start
npx ui-skills categories
npx ui-skills list --category '<category>'
npx ui-skills get '<skill-slug>'
```

UI Skills كيوصي بتحميل أصغر مجموعة مناسبة للمهمة، وغالباً مهارة واحدة، وبحد أقصى ثلاث مهارات للمراجعات الواسعة. ماشي ضروري تثبيت 844 مهارة.
