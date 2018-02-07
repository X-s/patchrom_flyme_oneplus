.class Lcom/android/settings_ex/inputmethod/InputMethodPreference;
.super Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final NO_WIDGET:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "isImeEnabler"    # Z
    .param p4, "isAllowedByOrganization"    # Z
    .param p5, "onSaveListener"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setPersistent(Z)V

    .line 98
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 99
    iput-boolean p4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    .line 100
    iput-object p5, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 101
    if-nez p3, :cond_0

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 106
    :cond_0
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 107
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "settingsActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 119
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    .line 120
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v2, p2, p1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    .line 120
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    .line 122
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    return-void

    .line 115
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 223
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 225
    .local v1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 224
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isImeEnabler()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->notifyChanged()V

    .line 228
    return-void
.end method

.method private showDirectBootWarnDialog()V
    .locals 4

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 273
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 275
    const v2, 0x7f0e0edd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    new-instance v2, Lcom/android/settings_ex/inputmethod/InputMethodPreference$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$3;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    new-instance v2, Lcom/android/settings_ex/inputmethod/InputMethodPreference$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$4;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 289
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 268
    return-void
.end method

.method private showSecurityWarnDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 235
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 239
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 241
    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 242
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 244
    .local v2, "label":Ljava/lang/CharSequence;
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v4, 0x7f0e0a6d

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 245
    new-instance v3, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    const v4, 0x104000a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    new-instance v3, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 265
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 234
    return-void
.end method


# virtual methods
.method compareTo(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 6
    .param p1, "rhs"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .param p2, "collator"    # Ljava/text/Collator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 293
    if-ne p0, p1, :cond_0

    .line 294
    const/4 v2, 0x0

    return v2

    .line 296
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v5, p1, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-ne v4, v5, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 298
    .local v0, "t0":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 299
    .local v1, "t1":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    return v3

    .line 302
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    return v2

    .line 305
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 308
    .end local v0    # "t0":Ljava/lang/CharSequence;
    .end local v1    # "t1":Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-eqz v4, :cond_4

    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    return v1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    .line 147
    return v1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_2

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    .line 164
    :goto_0
    return v1

    .line 155
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_0

    .line 160
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->showSecurityWarnDialog()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 171
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    return v7

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 179
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v7

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    new-array v4, v7, [Ljava/lang/Object;

    .line 187
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 186
    const v5, 0x7f0e0a71

    .line 185
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method updatePreferenceViews()V
    .locals 5

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 194
    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v1

    .line 200
    .local v1, "isAlwaysChecked":Z
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 202
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isDisabledByAdmin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    return-void

    .line 203
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v2, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 205
    invoke-static {v2, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 207
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 209
    .end local v0    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setEnabled(Z)V

    goto :goto_0
.end method
