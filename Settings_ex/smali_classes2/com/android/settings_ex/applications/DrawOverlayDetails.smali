.class public Lcom/android/settings_ex/applications/DrawOverlayDetails;
.super Lcom/android/settings_ex/applications/AppInfoWithHeader;
.source "DrawOverlayDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I

.field private static final KEY_APP_OPS_SETTINGS_DESC:Ljava/lang/String; = "app_ops_settings_description"

.field private static final KEY_APP_OPS_SETTINGS_PREFS:Ljava/lang/String; = "app_ops_settings_preference"

.field private static final KEY_APP_OPS_SETTINGS_SWITCH:Ljava/lang/String; = "app_ops_settings_switch"

.field private static final LOG_TAG:Ljava/lang/String; = "DrawOverlayDetails"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mOverlayBridge:Lcom/android/settings_ex/applications/AppStateOverlayBridge;

.field private mOverlayDesc:Landroid/support/v7/preference/Preference;

.field private mOverlayPrefs:Landroid/support/v7/preference/Preference;

.field private mOverlayState:Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 49
    const/16 v1, 0x18

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->APP_OPS_OP_CODE:[I

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private canDrawOverlay(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 124
    const/16 v3, 0x18

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 126
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 127
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_0
    return v4
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlayState"    # Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const v0, 0x7f0e0fb7

    .line 173
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    const v0, 0x7f0e0fb8

    goto :goto_0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v1, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    .line 169
    .local v0, "state":Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 162
    .end local v0    # "state":Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;
    :cond_0
    iget-object v1, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_1

    .line 163
    new-instance v0, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    iget-object v1, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V

    .restart local v0    # "state":Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;
    goto :goto_0

    .line 165
    .end local v0    # "state":Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;
    :cond_1
    new-instance v1, Lcom/android/settings_ex/applications/AppStateOverlayBridge;

    invoke-direct {v1, p0, v2, v2}, Lcom/android/settings_ex/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    .line 166
    iget-object v2, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 165
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    .restart local v0    # "state":Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;
    goto :goto_0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0e0fb7

    const v7, 0x7f0e0fb8

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 180
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, -0x1

    .line 182
    .local v5, "uid":I
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 183
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 184
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 185
    const v6, 0x7f0e0fb7

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 187
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "DrawOverlayDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 193
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 195
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 196
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 199
    :cond_1
    const/16 v8, 0x18

    invoke-virtual {v1, v8, v5, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 200
    .local v3, "mode":I
    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    move v6, v7

    .line 201
    goto :goto_0
.end method

.method private setCanDrawOverlay(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 118
    :goto_0
    const/16 v4, 0x18

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 117
    return-void

    .line 120
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
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0xdd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings_ex/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings_ex/applications/AppStateOverlayBridge;

    .line 68
    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 71
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->addPreferencesFromResource(I)V

    .line 72
    const-string/jumbo v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 73
    const-string/jumbo v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    .line 74
    const-string/jumbo v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayDesc:Landroid/support/v7/preference/Preference;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0e0fab

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0e0faf

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 79
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0e0fb0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayDesc:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0e0fb1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->setCanDrawOverlay(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->refreshUi()Z

    .line 112
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 109
    goto :goto_0

    .line 114
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "DrawOverlayDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to launch app draw overlay settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 102
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected refreshUi()Z
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings_ex/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 135
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    .line 138
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    .line 139
    .local v0, "isAllowed":Z
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayState:Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v2, v2, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/DrawOverlayDetails;->mOverlayPrefs:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 145
    const/4 v1, 0x1

    return v1
.end method
