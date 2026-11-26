# ChatGPT وCodex — التوافق وطريقة الاستعمال

هاد الدليل كيفرق بين تثبيت Agent Skills فبيئة برمجة وبين تفعيل Skills داخل تطبيق ChatGPT.

## الخلاصة

- **Codex:** كيدعم Agent Skills. مهارات Codex المحلية كتكون عادة داخل المسار `$HOME/.agents/skills`، والسكريبت ديال هاد المستودع كيستهدف Codex باستعمال `--global --agent codex`.
- **ChatGPT Android/Free:** ما كيقراش ملفات Termux ولا مجلد `~/.agents/skills` مباشرة. تثبيت Skills بـTermux ما كيضيفهاش تلقائياً لتطبيق ChatGPT.
- **Skills داخل ChatGPT:** حسب توثيق OpenAI الحالي، ميزة Skills داخل ChatGPT متاحة لحسابات Business وEnterprise وHealthcare وEdu، مع اختلاف التوفر حسب إعدادات مساحة العمل. التثبيت اليدوي من واجهة Skills كيتطلب رفع Skill bundle من الواجهة، وماشي أمر Termux.
- **Codex وChatGPT Skills:** ما خاصناش نفترضو أنهم كيتزامنو تلقائياً؛ كل سطح عندو طريقة إدارة وتوفر ممكن يختلفو.

## الخطة العملية لهذا المستودع

1. نخلي `eduagent9/Skills` هو المصدر المركزي للفهرس والسكريبتات.
2. نراجع كل Skill ومصدرها قبل إضافتها للائحة الموثوقة.
3. نثبت المهارات عالمياً لـCodex عبر الأمر:

   ```bash
   bash install-all-skills-termux.sh
   ```

   ثم اختيار `1) codex`.
4. نتأكد من النتائج عبر:

   ```bash
   npx --yes skills@latest ls -g -a codex
   ```

5. ما نشغلوش أي سكريبت مرفق مع Skills تلقائياً؛ نقراوه وندققوه قبل التنفيذ.
6. إذا توفر حساب ChatGPT فيه Skills feature، نجهزو Skill bundles صالحة للرفع من واجهة ChatGPT، ونرفعوها يدوياً بعد مراجعة المحتوى. هاد الخطوة منفصلة عن تثبيت Codex.

## مهم بخصوص الهاتف

السكريبت الحالي كيثبت ملفات Skills فقط، وما كيثبتش Codex CLI ولا كيضمن أن Codex runtime خدام على Termux/Android. خاص اختبار توافق runtime بشكل مستقل قبل الاعتماد عليه. وجود المهارات فالمجلد العالمي بوحدو ما كيعنيش أن تطبيق ChatGPT Android غادي يستعملها.

## توثيق OpenAI

- ChatGPT Skills: https://help.openai.com/en/articles/20001066-skills-in-chatgpt
- Codex مع خطة ChatGPT: https://help.openai.com/en/articles/11369540-using-codex-with-your-chatgpt-plan
- Agent Skills عبر OpenAI API: https://developers.openai.com/api/docs/guides/tools-skills
- Codex Skills: https://developers.openai.com/codex/skills
