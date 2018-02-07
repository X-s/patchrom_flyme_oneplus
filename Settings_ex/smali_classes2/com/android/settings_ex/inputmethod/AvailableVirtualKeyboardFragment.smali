.class public final Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AvailableVirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method private static getInputMethodIcon(Landroid/content/pm/PackageManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 110
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 111
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v4

    .line 112
    :cond_1
    if-eqz v2, :cond_0

    .line 117
    iget v4, v3, Landroid/content/pm/ServiceInfo;->logo:I

    invoke-static {p0, v2, v4, v0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 119
    return-object v1

    .line 121
    :cond_2
    iget v4, v3, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-static {p0, v2, v4, v0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_3

    .line 123
    return-object v1

    .line 127
    :cond_3
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-static {p0, v2, v4, v0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    return-object v1

    .line 131
    :cond_4
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, v2, v4, v0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_5

    .line 133
    return-object v1

    .line 135
    :cond_5
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v4
.end method

.method private static loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 96
    if-nez p2, :cond_0

    .line 97
    return-object v1

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 12

    .prologue
    .line 139
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 141
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 142
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v11

    .line 143
    .local v11, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 145
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 146
    .local v9, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v9, :cond_0

    const/4 v6, 0x0

    .line 147
    .local v6, "N":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 148
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 149
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v11, :cond_1

    .line 150
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 151
    :goto_2
    new-instance v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 152
    const/4 v3, 0x1

    move-object v5, p0

    .line 151
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 153
    .local v0, "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    invoke-static {v10, v2}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getInputMethodIcon(Landroid/content/pm/PackageManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "N":I
    .end local v8    # "i":I
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "N":I
    goto :goto_0

    .line 149
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v8    # "i":I
    :cond_1
    const/4 v4, 0x1

    .local v4, "isAllowedByOrganization":Z
    goto :goto_2

    .line 156
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "isAllowedByOrganization":Z
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    .line 157
    .local v7, "collator":Ljava/text/Collator;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment$1;

    invoke-direct {v5, p0, v7}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment$1;-><init>(Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;Ljava/text/Collator;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 164
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_3

    .line 165
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 166
    .restart local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    invoke-virtual {v0, v8}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setOrder(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 168
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    .line 169
    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 164
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 138
    .end local v0    # "pref":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x15b

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 58
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const v2, 0x7f0e0a74

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 60
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    .line 61
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    .line 66
    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 5
    .param p1, "pref"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    .line 77
    const/4 v4, 0x2

    .line 76
    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 78
    .local v0, "hasHardwareKeyboard":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    .line 78
    invoke-static {p0, v3, v4, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 81
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 82
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "p$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 83
    .local v1, "p":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    .line 76
    .end local v0    # "hasHardwareKeyboard":Z
    .end local v1    # "p":Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasHardwareKeyboard":Z
    goto :goto_0

    .line 75
    .restart local v2    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
