.class public Lcom/android/settings_ex/applications/WriteSettingsDetails;
.super Lcom/android/settings_ex/applications/AppInfoWithHeader;
.source "WriteSettingsDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I

.field private static final KEY_APP_OPS_PREFERENCE_SCREEN:Ljava/lang/String; = "app_ops_preference_screen"

.field private static final KEY_APP_OPS_SETTINGS_DESC:Ljava/lang/String; = "app_ops_settings_description"

.field private static final KEY_APP_OPS_SETTINGS_PREFS:Ljava/lang/String; = "app_ops_settings_preference"

.field private static final KEY_APP_OPS_SETTINGS_SWITCH:Ljava/lang/String; = "app_ops_settings_switch"

.field private static final LOG_TAG:Ljava/lang/String; = "WriteSettingsDetails"


# instance fields
.field private mAppBridge:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field private mWriteSettingsDesc:Landroid/support/v7/preference/Preference;

.field private mWriteSettingsPrefs:Landroid/support/v7/preference/Preference;

.field private mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 52
    const/16 v1, 0x17

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 51
    sput-object v0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->APP_OPS_OP_CODE:[I

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private canWriteSettings(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 126
    const/16 v3, 0x17

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 129
    const/4 v1, 0x1

    return v1

    .line 132
    :cond_0
    return v4
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writeSettingsState"    # Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0f94

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    const v0, 0x7f0e0f95

    goto :goto_0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v1, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .line 175
    .local v0, "state":Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 168
    .end local v0    # "state":Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    :cond_0
    iget-object v1, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_1

    .line 169
    new-instance v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v1, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V

    .restart local v0    # "state":Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    goto :goto_0

    .line 171
    .end local v0    # "state":Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    :cond_1
    new-instance v1, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    invoke-direct {v1, p0, v2, v2}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    .line 172
    iget-object v2, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 171
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    .restart local v0    # "state":Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    goto :goto_0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0e0f95

    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, "isSystem":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 188
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 189
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 190
    const/4 v3, 0x1

    .line 198
    :cond_0
    const-string/jumbo v11, "appops"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 201
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v11, Lcom/android/settings_ex/applications/WriteSettingsDetails;->APP_OPS_OP_CODE:[I

    .line 200
    invoke-virtual {v1, v11}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v8

    .line 202
    .local v8, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v8, :cond_1

    .line 203
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 192
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v8    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "WriteSettingsDetails"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 206
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v8    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_1
    if-eqz v3, :cond_4

    const/4 v9, 0x0

    .line 207
    .local v9, "uid":I
    :goto_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "packageOp$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 208
    .local v6, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 209
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    .line 214
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_3
    const/4 v11, -0x1

    if-ne v9, v11, :cond_5

    .line 215
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 206
    .end local v7    # "packageOp$iterator":Ljava/util/Iterator;
    .end local v9    # "uid":I
    :cond_4
    const/4 v9, -0x1

    .restart local v9    # "uid":I
    goto :goto_0

    .line 218
    .restart local v7    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_5
    const/16 v11, 0x17

    invoke-virtual {v1, v11, v9, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 219
    .local v4, "mode":I
    if-nez v4, :cond_6

    .line 220
    const v10, 0x7f0e0f94

    .line 219
    :cond_6
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private setCanWriteSettings(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 120
    :goto_0
    const/16 v4, 0x17

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 119
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0xdd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppBridge:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    .line 71
    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 73
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->addPreferencesFromResource(I)V

    .line 74
    const-string/jumbo v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 75
    const-string/jumbo v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/support/v7/preference/Preference;

    .line 76
    const-string/jumbo v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsDesc:Landroid/support/v7/preference/Preference;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0e0f8b

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    .line 79
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0e0f92

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0e0f91

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsDesc:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0e0f93

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->setCanWriteSettings(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->refreshUi()Z

    .line 114
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 111
    goto :goto_0

    .line 116
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "WriteSettingsDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to launch write system settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected refreshUi()Z
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mAppBridge:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 139
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v0

    .line 145
    .local v0, "canWrite":Z
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-boolean v2, v2, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 151
    const/4 v1, 0x1

    return v1
.end method
