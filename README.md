# Skills

مستودع شخصي لتنظيم المهارات (Agent Skills) وروابط تثبيتها. مستقل عن مشاريع EduAgent وMakhzoni وTatbi9i.

## المهارات المجمعة

تم التحقق من وجود المستودعات وملفات المهارات المطلوبة في المصدر الأصلي. لم يتم تثبيت أي مهارة على الهاتف بعد؛ سنثبتها كلها دفعة واحدة في Termux عند الانتهاء.

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
