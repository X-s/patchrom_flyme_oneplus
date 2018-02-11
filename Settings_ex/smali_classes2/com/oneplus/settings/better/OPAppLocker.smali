.class public Lcom/oneplus/settings/better/OPAppLocker;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPAppLocker.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPAppLocker$1;
    }
.end annotation


# static fields
.field private static final KEY_APP_LOCKER_ADD_APPS:Ljava/lang/String; = "app_locker_add_apps"

.field private static final KEY_APP_LOCKER_OPEN_APPS:Ljava/lang/String; = "app_locker_open_apps"

.field private static final KEY_APP_LOCKER_SWITCH:Ljava/lang/String; = "app_locker_switch"

.field private static final TAG:Ljava/lang/String; = "OPAppLocker"


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockerAddAppsPreference:Landroid/support/v7/preference/Preference;

.field private mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOpenAppsList:Landroid/support/v7/preference/PreferenceCategory;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/better/OPAppLocker;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/better/OPAppLocker;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOpenAppsList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppList:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/oneplus/settings/better/OPAppLocker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPAppLocker$1;-><init>(Lcom/oneplus/settings/better/OPAppLocker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private updateListData()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 81
    const/16 v1, 0x3f

    .line 80
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 83
    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->addPreferencesFromResource(I)V

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppLocker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    .line 94
    const-string/jumbo v0, "appops"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppLocker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 96
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    .line 97
    iget-object v2, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPAppLocker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 96
    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    .line 99
    const-string/jumbo v0, "app_locker_open_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOpenAppsList:Landroid/support/v7/preference/PreferenceCategory;

    .line 100
    const-string/jumbo v0, "app_locker_add_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerAddAppsPreference:Landroid/support/v7/preference/Preference;

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerAddAppsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerAddAppsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    :cond_0
    const-string/jumbo v0, "app_locker_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 125
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p2

    .line 126
    check-cast v1, Ljava/lang/Boolean;

    .line 127
    .local v1, "value":Ljava/lang/Boolean;
    const-string/jumbo v2, "app_locker_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const-string/jumbo v2, "OPAppLocker"

    const-string/jumbo v4, "KEY_APP_LOCKER_SWITCH"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppLocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "app_locker_switch"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 131
    :goto_0
    const/4 v6, -0x2

    .line 129
    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 133
    :cond_0
    return v3

    .line 130
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "app_locker_add_apps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string/jumbo v1, "OPAppLocker"

    const-string/jumbo v2, "KEY_APP_LOCKER_ADD_APPS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "android.intent.action.ONEPLUS_GAME_READ_APP_LIST_ACTION"

    .line 140
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "op_load_app_tyep"

    .line 143
    const/16 v2, 0x3f

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    const/4 v1, 0x1

    return v1

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPAppLocker;->updateListData()V

    .line 115
    iget-object v2, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppLocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "app_locker_switch"

    .line 118
    const/4 v4, -0x2

    .line 116
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 119
    .local v0, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 111
    .end local v0    # "value":I
    :cond_1
    return-void
.end method
