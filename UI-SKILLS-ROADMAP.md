# UI Skills — Selection Roadmap

هاد الملف كيجمع المهارات المرشحة للتثبيت العالمي في Termux. الاختيار مبني على الكتالوج الرسمي، مع مراعاة تطوير تطبيقات Android وواجهات الويب والاختبار.

> مهم: هادي لائحة انتقاء أولية، ماشي إعلان أن جميع المهارات تثبتات أو أن أوامر تثبيتها تحققات. قبل التثبيت النهائي خاصنا نراجع المصدر والمسار الفعلي لكل Skill.

## 1) الأساسيات العامة — أولوية عالية

| Skill | المجال | علاش نحتاجوها |
|---|---|---|
| ui-skills-root | توجيه المهارات | تختار المهارة المناسبة للمهمة بدل تحميل كلشي |
| frontend-design | تصميم الواجهات | واجهات مميزة ومنظمة بلا شكل قوالب مكررة |
| better-interface | مراجعة UI | مراجعة شاملة للواجهة والتناسق |
| better-layout | Layout | تنظيم المسافات والتسلسل البصري |
| better-typography | Typography | الخطوط والقراءة والهرمية |
| better-colors | الألوان | الألوان والتباين والـ palettes |
| better-accessibility | Accessibility | اللمس، التركيز، قارئ الشاشة وإمكانية الوصول |
| improve-animations | Motion | تحسين الحركة بدون إزعاج أو ثقل |
| 12-principles-of-animation | Animation | قواعد الحركة الأساسية |

## 2) Android وMobile — أولوية عالية

| Skill | المجال | علاش نحتاجوها |
|---|---|---|
| mobile-android-design | Android UI | أنماط Material Design 3 وJetpack Compose |
| mobile-native | Mobile web/PWA | تحسين تجربة الهاتف: safe areas واللمس والتمرير |
| react-native-best-practices | React Native | الأداء والذاكرة وإعادة التصيير والأنيميشن |
| react-native-skills | React Native/Expo | بناء تطبيقات موبايل بأفضل الممارسات |
| react-native-design | Mobile UI | الشاشات والتنقل والحركة في React Native |

ملاحظة: ما غاديش نثبت مهارات React Native إلا إذا كان عندنا مشروع كيستعمل هاد التقنية؛ وجودها هنا للمراجعة والاختيار حسب المشروع.

## 3) Frontend والجودة — أولوية عالية

| Skill | المجال | علاش نحتاجوها |
|---|---|---|
| frontend-ui-engineering | Frontend | هندسة واجهات قابلة للصيانة |
| react-best-practices | React | الأداء وبنية المكونات |
| react-doctor / improve-react | React QA | كشف مشاكل الأداء والصحة البرمجية |
| modern-web-guidance | Web platform | الممارسات الحديثة وتقليل layout shift |
| web-design-guidelines | UI audit | مراجعة الواجهة وفق معايير الويب |
| web-quality-audit | Quality | تدقيق الأداء وإمكانية الوصول وSEO |
| vitals | Performance | قياس التحميل والتأخير والتحقق من الإصلاح |
| viewports | Responsive QA | اختبار المقاسات ونقاط التوقف |
| agent-browser | Browser testing | أتمتة التصفح واختبار الواجهات |

## 4) التفاعل والأنيميشن — أولوية متوسطة

| Skill | المجال | علاش نحتاجوها |
|---|---|---|
| interaction-design | Interaction | سلوك عناصر الواجهة وتدفق التفاعل |
| better-motion | Motion | اختيار الحركة ومدتها وتوقيتها |
| accessible-animation | Motion accessibility | احترام إعداد تقليل الحركة |
| micro-interaction | Micro-interactions | حالات الضغط والتبديل والتنبيهات |
| react-view-transitions | React motion | انتقالات الصفحات والعناصر |

## 5) Design systems واحتياجات خاصة — اختيار حسب المشروع

- interface-design
- impeccable
- ui-ux-pro-max
- design-lab
- better-ui
- improve-ui
- improve (shadcn)
- taste-skill
- bencium-innovative-ux-designer

## قواعد الانتقاء قبل التثبيت

1. نتحقق من الاسم الدقيق والمسار داخل المستودع الأصلي.
2. نراجع الترخيص وطريقة التثبيت الرسمية.
3. نكشف المهارات المكررة أو اللي كتغطي نفس الوظيفة.
4. ما نثبتوش مهارات إطار عمل ما كنستعملوهش إلا عند الحاجة.
5. نخليو التثبيت العالمي في Termux لمرحلة واحدة بعد اكتمال المراجعة.
6. من بعد التثبيت نتحققو من اللائحة بأمر npx skills list --global.

## أدوات UI Skills الرسمية

- npx ui-skills
- npx ui-skills categories
- npx ui-skills list
- npx ui-skills list --category motion
- npx ui-skills get baseline-ui

هاد الأوامر كتستعمل الكتالوج الرسمي للاستكشاف وجلب تعليمات Skill؛ ما خاصناش نخلطو بينها وبين تثبيت Skill عالمياً باستعمال npx skills add ... --global.
