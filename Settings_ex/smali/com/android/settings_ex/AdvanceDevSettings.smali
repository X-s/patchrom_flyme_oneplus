.class public Lcom/android/settings_ex/AdvanceDevSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AdvanceDevSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mDialogClicked:Z

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/android/settings_ex/AdvanceDevSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/AdvanceDevSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/AdvanceDevSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 167
    :cond_0
    return-void
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/AdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 72
    .local v0, "pref":Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    const-string v1, "enable_adb"

    if-ne p1, v1, :cond_1

    const-string v1, "charging"

    iget-object v2, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0, v0}, Lcom/android/settings_ex/AdvanceDevSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 84
    :cond_1
    return-object v0
.end method

.method private updateAllOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/android/settings_ex/AdvanceDevSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 106
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 185
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 186
    iput-boolean v2, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mDialogClicked:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AdvanceDevSettings;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 51
    const-string v0, "enable_adb"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/AdvanceDevSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 53
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/AdvanceDevSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "development_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/AdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 173
    iget-boolean v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 179
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iput-boolean v0, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mDialogClicked:Z

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->dismissDialogs()V

    .line 136
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0906f4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/AdvanceDevSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    :goto_0
    return v0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/AdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 153
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 125
    return-void
.end method

.method updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .param p1, "checkBox"    # Landroid/preference/CheckBoxPreference;
    .param p2, "value"    # Z

    .prologue
    .line 95
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    return-void
.end method
