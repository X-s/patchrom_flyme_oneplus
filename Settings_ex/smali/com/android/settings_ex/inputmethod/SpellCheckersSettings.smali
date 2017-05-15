.class public Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;


# static fields
.field private static final DBG:Z = false

.field private static final ITEM_ID_USE_SYSTEM_LANGUAGE:I = 0x0

.field private static final KEY_SPELL_CHECKER_LANGUAGE:Ljava/lang/String; = "spellchecker_language"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mSpellCheckerLanaguagePref:Landroid/preference/Preference;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->convertDialogItemIdToSubtypeIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;
    .param p1, "x1"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method private changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 1
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 241
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 242
    return-void
.end method

.method private static convertDialogItemIdToSubtypeIndex(I)I
    .locals 1
    .param p0, "item"    # I

    .prologue
    .line 166
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private static convertSubtypeIndexToDialogItemId(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 165
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 137
    :cond_0
    if-nez p2, :cond_1

    .line 138
    const v0, 0x7f0c082f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private populatePreferenceScreen()V
    .locals 8

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 78
    .local v5, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 79
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v6, :cond_0

    const/4 v1, 0x0

    .line 80
    .local v1, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 81
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v4, v6, v2

    .line 82
    .local v4, "sci":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v3, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    invoke-direct {v3, v0, v4, p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/settings_ex/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;)V

    .line 83
    .local v3, "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, ""

    if-ne v6, v7, :cond_1

    .line 80
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    .end local v1    # "count":I
    .end local v2    # "index":I
    .end local v3    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v6

    goto :goto_0

    .line 84
    .restart local v1    # "count":I
    .restart local v2    # "index":I
    .restart local v3    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .restart local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 85
    invoke-static {v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    goto :goto_2

    .line 87
    .end local v3    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    return-void
.end method

.method private showChooseLanguageDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 169
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 170
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 172
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v9}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 173
    .local v2, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v9, v10}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 175
    .local v3, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0c07f5

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v8

    .line 178
    .local v8, "subtypeCount":I
    add-int/lit8 v9, v8, 0x1

    new-array v6, v9, [Ljava/lang/CharSequence;

    .line 179
    .local v6, "items":[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v10

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "checkedItemId":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 182
    invoke-virtual {v2, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 183
    .local v7, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-static {v4}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->convertSubtypeIndexToDialogItemId(I)I

    move-result v5

    .line 184
    .local v5, "itemId":I
    invoke-direct {p0, v2, v7}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v5

    .line 185
    invoke-virtual {v7, v3}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 186
    move v1, v5

    .line 181
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    .end local v5    # "itemId":I
    .end local v7    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    new-instance v9, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v9, p0, v2}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 209
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 210
    return-void
.end method

.method private showSecurityWarnDialog(Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;)V
    .locals 7
    .param p1, "pref"    # Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    .prologue
    const/4 v6, 0x1

    .line 213
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 217
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 219
    const v2, 0x7f0c0800

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 221
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 233
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 234
    return-void
.end method

.method private updatePreferenceScreen()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 111
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 112
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v3

    .line 113
    .local v3, "isSpellCheckerEnabled":Z
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v8, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 115
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v9}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 117
    .local v1, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v10, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 120
    .local v7, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 121
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 122
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 123
    .local v5, "preference":Landroid/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 124
    instance-of v8, v5, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    if-eqz v8, :cond_0

    move-object v4, v5

    .line 125
    check-cast v4, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    .line 126
    .local v4, "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    invoke-virtual {v4}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .line 127
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v4, v8}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->setSelected(Z)V

    .line 121
    .end local v4    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .restart local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    move v8, v9

    .line 127
    goto :goto_1

    .line 130
    .end local v4    # "pref":Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
    .end local v5    # "preference":Landroid/preference/Preference;
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x3b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 67
    const-string v0, "spellchecker_language"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    const-string v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->populatePreferenceScreen()V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 102
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 156
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 158
    .local v0, "isSystemApp":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 163
    :goto_1
    return-void

    .line 156
    .end local v0    # "isSystemApp":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    .restart local v0    # "isSystemApp":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 96
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 108
    return-void
.end method
