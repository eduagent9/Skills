# Skills

مستودع شخصي لتنظيم المهارات (Agent Skills) وروابط تثبيتها. مستقل عن مشاريع EduAgent وMakhzoni وTatbi9i.

## الخطة الشاملة

- [الخطة الرئيسية لجمع Skills من جميع التخصصات](MASTER-SKILLS-PLAN.md)
- [الدفعة 01: مهارات المنصات](VERIFIED-SKILLS-BATCH-01.md)
- [الدفعة 02: الهندسة والاختبارات](VERIFIED-SKILLS-BATCH-02.md)
- [الدفعة 03: قواعد البيانات وMCP](VERIFIED-SKILLS-BATCH-03.md)
- [خارطة مهارات UI/UX وFrontend وMobile](UI-SKILLS-ROADMAP.md)
- [كتالوج UI Skills الرسمي](UI-SKILLS-CATALOG.md)

كنجمعو Skills من مجالات متعددة. كل عنصر خاصو تدقيق مستقل للمصدر وملف `SKILL.md` وأمر التثبيت قبل إدخاله للائحة النهائية. ما تثبت حتى Skill على الهاتف دابا؛ التثبيت غادي يكون دفعة واحدة من بعد المراجعة.

### Design Lab
المصدر: https://github.com/0xdesign/design-plugin

```bash
npx skills add https://github.com/0xdesign/design-plugin --skill design-lab --global
```

### Better UI
المصدر: https://github.com/jakubkrehel/skills

```bash
npx skills add https://github.com/jakubkrehel/skills --skill better-ui --global
```

### Improve (shadcn)
المصدر: https://github.com/shadcn/improve

```bash
npx skills add https://github.com/shadcn/improve --skill improve --global
```

### Improve React
المصدر: https://github.com/millionco/react-doctor

```bash
npx skills add https://github.com/millionco/react-doctor --skill improve-react --global
```

### Improve Animations
المصدر: https://github.com/emilkowalski/skills

```bash
npx skills add https://github.com/emilkowalski/skills --skill improve-animations --global
```

### Frontend Design
المصدر: https://github.com/anthropics/skills

```bash
npx skills add https://github.com/anthropics/skills --skill frontend-design --global
```

### Improve UI
المصدر: https://github.com/ibelick/ui-skills

```bash
npx skills add https://github.com/ibelick/ui-skills --skill improve-ui --global
```

### UI Skills Root
المصدر: https://github.com/ibelick/ui-skills

```bash
npx skills add https://github.com/ibelick/ui-skills --skill ui-skills-root --global
```

## التثبيت دفعة واحدة لاحقاً

بعد ما نكملو جمع واختيار المهارات، نقدروا نجمعو أوامر التثبيت في سكريبت واحد لـ Termux، ثم نتحققو من التثبيت باستعمال:

```bash
npx skills list --global
```

## ملاحظات
- الخيار `--global` كيخلي المهارات متاحة على مستوى المستخدم بدل مشروع واحد.
- هذا المستودع فهرس وتعليمات فقط؛ ملفات المهارات تبقى في مستودعات أصحابها الأصليين.
- راجع ترخيص كل مصدر قبل إعادة توزيع ملفاته أو نسخها.


## دفعة المهارات الثانية

تمت مراجعة المستودعات ومسارات ملفات المهارات. ملاحظة: صححنا اسمين في أمر التثبيت حتى يطابقا المسار الفعلي/المستودع الحالي.

### Frontend UI Engineering
المصدر: https://github.com/addyosmani/agent-skills
```bash
npx skills add https://github.com/addyosmani/agent-skills --skill frontend-ui-engineering --global
```

### Interaction Design
المصدر: https://github.com/wshobson/agents
```bash
npx skills add https://github.com/wshobson/agents --skill interaction-design --global
```

### Taste Skill (المسمّاة في بعض الفهارس GPT Taste)
المصدر: https://github.com/Leonxlnx/taste-skill
المجلد الفعلي داخل المستودع هو `skills/taste-skill`، لذلك أمر التثبيت المطابق للمجلد:
```bash
npx skills add https://github.com/Leonxlnx/taste-skill --skill taste-skill --global
```

### Bencium Innovative UX Designer
المصدر: https://github.com/bencium/bencium-marketplace
```bash
npx skills add https://github.com/bencium/bencium-marketplace --skill bencium-innovative-ux-designer --global
```

### Impeccable
المصدر: https://github.com/pbakaus/impeccable
```bash
npx skills add https://github.com/pbakaus/impeccable --skill impeccable --global
```

### 12 Principles of Animation
المصدر الحالي: https://github.com/raphaelsalaja/skills
ملاحظة: رابط `raphaelsalaja/skill` القديم كيتحوّل للمستودع الجديد `raphaelsalaja/skills`.
```bash
npx skills add https://github.com/raphaelsalaja/skills --skill 12-principles-of-animation --global
```

### Interface Design
المصدر: https://github.com/Dammyjay93/interface-design
```bash
npx skills add https://github.com/Dammyjay93/interface-design --skill interface-design --global
```

### UI UX Pro Max
المصدر: https://github.com/nextlevelbuilder/ui-ux-pro-max-skill
```bash
npx skills add https://github.com/nextlevelbuilder/ui-ux-pro-max-skill --skill ui-ux-pro-max --global
```


## كتالوج UI Skills الكامل

الموقع الرسمي يضم كتالوجاً فيه 844 مهارة في التصميم والواجهات والـFrontend والأنيميشن وإمكانية الوصول والأداء وغيرها.

- [تفاصيل الكتالوج وطريقة استعماله](UI-SKILLS-CATALOG.md)
- [خارطة المهارات المنتقاة حسب الأولوية](UI-SKILLS-ROADMAP.md)
- [تصفح المهارات على الموقع الرسمي](https://www.ui-skills.com/skills)
- [Registry الرسمي الكامل](https://www.ui-skills.com/skills/registry.txt)

