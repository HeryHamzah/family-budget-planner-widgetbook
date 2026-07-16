# Technical Debt — Widgetbook Workspace

## Widgets Not Yet Migrated

| Widget | Reason | Plan |
|--------|--------|------|
| `InfoBottomSheet` | Depend ke `package:go_router` | Refactor: ganti `context.pop()` pake `Navigator.of(context).pop()` |
| `ProfileAvatar` | Fitur-specific, nama class kurang generic | Extract jadi `AvatarCircle(text: String)` |
| `ProfileSectionCard` | Fitur-specific | Extract jadi `SectionCard(icon, title, children)` |
| `IconSelectorSheet` | Depend ke `phosphoricons_flutter` | Pindah setelah widgetbook tambahin dep phosphor |
| `CustomColorPickerSheet` | Pure UI tapi gede | Pindah setelah stabil |

## Future Improvements

- [ ] Add `ViewportAddon` for device frame previews
- [ ] Add `LocalizationAddon` with `id_ID` locale
- [ ] Setup golden testing via `widgetbook_golden_test`
- [ ] Deploy widgetbook viewer web app (Firebase Hosting)
