.class public Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAutoSelectionPrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/TwoStatePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCollator:Ljava/text/Collator;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/text/Collator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private addInputMethodSubtypePreferences(Landroid/view/inputmethod/InputMethodInfo;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 17
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "root"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 161
    .local v4, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    .line 162
    .local v13, "subtypeCount":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v13, v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "imiId":Ljava/lang/String;
    new-instance v7, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getPrefContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 168
    .local v7, "keyboardSettingsCategory":Landroid/support/v7/preference/PreferenceCategory;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 170
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 172
    .local v8, "label":Ljava/lang/CharSequence;
    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v7, v5}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 176
    new-instance v2, Lcom/android/settings_ex/inputmethod/SwitchWithNoTextPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getPrefContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/android/settings_ex/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 177
    .local v2, "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v7, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 179
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    new-instance v1, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getPrefContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 183
    .local v1, "activeInputMethodsCategory":Landroid/support/v7/preference/PreferenceCategory;
    const v16, 0x7f0e0ad6

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 184
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "autoSubtypeLabel":Ljava/lang/CharSequence;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v15, "subtypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    const/4 v6, 0x0

    .end local v3    # "autoSubtypeLabel":Ljava/lang/CharSequence;
    .local v6, "index":I
    :goto_0
    if-ge v6, v13, :cond_3

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v12

    .line 190
    .local v12, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 191
    if-nez v3, :cond_1

    .line 192
    move-object/from16 v0, p1

    invoke-static {v12, v4, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v3

    .line 188
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 196
    :cond_2
    new-instance v14, Lcom/android/settings_ex/inputmethod/InputMethodSubtypePreference;

    move-object/from16 v0, p1

    invoke-direct {v14, v4, v12, v0}, Lcom/android/settings_ex/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 198
    .local v14, "subtypePref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    .end local v12    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v14    # "subtypePref":Landroid/support/v7/preference/Preference;
    :cond_3
    new-instance v16, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$1;

    invoke-direct/range {v16 .. v17}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 211
    .local v11, "prefCount":I
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v11, :cond_4

    .line 212
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/Preference;

    .line 213
    .local v10, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 214
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    invoke-static {v10}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    .line 211
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 217
    .end local v10    # "pref":Landroid/support/v7/preference/Preference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 220
    const v16, 0x7f0e0ad7

    .line 219
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/TwoStatePreference;->setTitle(I)V

    .line 159
    :goto_3
    return-void

    .line 222
    :cond_5
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 92
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "fromIntent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    return-object v1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_1

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 228
    .local v2, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pref$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 229
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    instance-of v3, v0, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const/4 v3, 0x0

    return v3

    .line 233
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "autoSelectionEnabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 239
    .local v0, "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 243
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 244
    .local v3, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pref$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 245
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    instance-of v4, v1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v4, :cond_1

    .line 249
    if-eqz p2, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 250
    if-eqz p2, :cond_1

    .line 251
    check-cast v1, Landroid/support/v7/preference/TwoStatePreference;

    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1, v5}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .restart local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    move v4, v6

    .line 249
    goto :goto_1

    .line 255
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    if-eqz p2, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 256
    invoke-static {p0, v4, v5, v7}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 258
    invoke-direct {p0, p1, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 237
    :cond_4
    return-void
.end method

.method private updateAutoSelectionPreferences()V
    .locals 4

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "imiId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, "imiId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 308
    .end local v0    # "imiId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 304
    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "targetImiId"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    .line 264
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 265
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "imiId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 269
    .local v0, "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p1, :cond_0

    .line 273
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;Z)V

    goto :goto_0

    .line 262
    .end local v0    # "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "imiId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;Z)V
    .locals 12
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "check"    # Z

    .prologue
    const/4 v11, 0x1

    .line 279
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "imiId":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 282
    .local v8, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9, p1, v11}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 283
    .local v2, "implicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v8, :cond_0

    if-nez v2, :cond_1

    .line 284
    :cond_0
    return-void

    .line 286
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pref$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 287
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v3, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v9, :cond_2

    move-object v7, v3

    .line 290
    check-cast v7, Landroid/support/v7/preference/TwoStatePreference;

    .line 291
    .local v7, "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 292
    if-eqz p2, :cond_2

    .line 293
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 294
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "implicitlyEnabledSubtypePrefKey":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/support/v7/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 296
    invoke-virtual {v7, v11}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 278
    .end local v1    # "implicitlyEnabledSubtypePrefKey":Ljava/lang/String;
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtype$iterator":Ljava/util/Iterator;
    .end local v7    # "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    :cond_4
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x3c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string/jumbo v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 66
    .local v0, "config":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 73
    const-string/jumbo v6, "input_method_id"

    .line 72
    invoke-direct {p0, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "targetImi":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    .line 76
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 79
    .local v4, "root":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 80
    .local v2, "imiCount":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 81
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 83
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    :cond_0
    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->addInputMethodSubtypePreferences(Landroid/view/inputmethod/InputMethodInfo;Landroid/support/v7/preference/PreferenceScreen;)V

    .line 80
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "imiCount":I
    .end local v3    # "index":I
    .end local v4    # "root":Landroid/support/v7/preference/PreferenceScreen;
    .end local v5    # "targetImi":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 87
    .restart local v2    # "imiCount":I
    .restart local v3    # "index":I
    .restart local v4    # "root":Landroid/support/v7/preference/PreferenceScreen;
    .restart local v5    # "targetImi":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 124
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 122
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    instance-of v5, p2, Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 131
    return v7

    .line 133
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 134
    .local v3, "isChecking":Z
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imiId$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "imiId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    move-object v0, p1

    .line 137
    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 138
    .local v0, "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 140
    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    .line 141
    return v6

    .line 145
    .end local v0    # "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    .end local v1    # "imiId":Ljava/lang/String;
    :cond_2
    instance-of v5, p1, Lcom/android/settings_ex/inputmethod/InputMethodSubtypePreference;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 146
    check-cast v4, Lcom/android/settings_ex/inputmethod/InputMethodSubtypePreference;

    .line 147
    .local v4, "subtypePref":Lcom/android/settings_ex/inputmethod/InputMethodSubtypePreference;
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/inputmethod/InputMethodSubtypePreference;->setChecked(Z)V

    .line 148
    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/InputMethodSubtypePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionPreferences()V

    .line 153
    :cond_3
    return v6

    .line 155
    .end local v4    # "subtypePref":Lcom/android/settings_ex/inputmethod/InputMethodSubtypePreference;
    :cond_4
    return v7
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 116
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionPreferences()V

    .line 110
    return-void
.end method
