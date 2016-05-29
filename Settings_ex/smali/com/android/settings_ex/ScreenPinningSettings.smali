.class public Lcom/android/settings_ex/ScreenPinningSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final CHANGE_LOCK_METHOD_REQUEST:I = 0x2b

.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mUseScreenLock:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "use_screen_lock"

    sput-object v0, Lcom/android/settings_ex/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    .line 179
    new-instance v0, Lcom/android/settings_ex/ScreenPinningSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/ScreenPinningSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ScreenPinningSettings;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ScreenPinningSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getCurrentSecurityTitle()I
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 130
    .local v0, "quality":I
    sparse-switch v0, :sswitch_data_0

    .line 143
    :cond_0
    const v1, 0x7f090b03

    :goto_0
    return v1

    .line 133
    :sswitch_0
    const v1, 0x7f090b01

    goto :goto_0

    .line 137
    :sswitch_1
    const v1, 0x7f090b02

    goto :goto_0

    .line 139
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const v1, 0x7f090b00

    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isScreenLockUsed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v3

    const v4, 0x7f090b03

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 93
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "def":I
    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    .restart local v0    # "def":I
    :cond_1
    move v1, v2

    .line 93
    goto :goto_1
.end method

.method private setLockToAppEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScreenLockUsed(Z)Z
    .locals 6
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    if-eqz p1, :cond_0

    .line 99
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    if-nez v4, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const/16 v3, 0x2b

    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ex/ScreenPinningSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    .end local v0    # "chooseLockIntent":Landroid/content/Intent;
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :goto_0
    return v2

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_to_app_exit_locked"

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 112
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 60
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 62
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400c0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "emptyView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 68
    iget-object v2, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 69
    iget-object v2, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 70
    iget-object v2, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 71
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_0

    .line 119
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 122
    .local v1, "validPassQuality":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 126
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v1    # "validPassQuality":Z
    :cond_0
    return-void

    .line 120
    .restart local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 79
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->updateDisplay()V

    .line 153
    return-void
.end method

.method public updateDisplay()V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 157
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ScreenPinningSettings;->addPreferencesFromResource(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/android/settings_ex/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings_ex/ScreenPinningSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ScreenPinningSettings$1;-><init>(Lcom/android/settings_ex/ScreenPinningSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 174
    :cond_1
    return-void
.end method
