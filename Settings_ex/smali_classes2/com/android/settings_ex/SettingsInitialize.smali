.class public Lcom/android/settings_ex/SettingsInitialize;
.super Landroid/content/BroadcastReceiver;
.source "SettingsInitialize.java"


# static fields
.field private static final PRIMARY_PROFILE_SETTING:Ljava/lang/String; = "com.android.settings_ex.PRIMARY_PROFILE_CONTROLLED"

.field private static final TAG:Ljava/lang/String; = "Settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private managedProfileSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "broadcast"    # Landroid/content/Intent;
    .param p4, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 61
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 64
    const-string/jumbo v9, "Settings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Received broadcast: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 65
    const-string/jumbo v11, ". Setting up intent forwarding for managed profile."

    .line 64
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    move-object/from16 v0, p4

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v9}, Landroid/content/pm/PackageManager;->clearCrossProfileIntentFilters(I)V

    .line 70
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const/16 v9, 0x2c1

    .line 75
    invoke-virtual {p2, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 77
    .local v6, "resolvedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 78
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 79
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 80
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v9, :cond_0

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_0

    .line 81
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_0

    .line 82
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 83
    const-string/jumbo v10, "com.android.settings_ex.PRIMARY_PROFILE_CONTROLLED"

    .line 82
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 84
    .local v8, "shouldForward":Z
    if-eqz v8, :cond_0

    .line 85
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v0, p4

    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    .line 86
    move-object/from16 v0, p4

    iget v11, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v12, 0x2

    .line 85
    invoke-virtual {p2, v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V

    .line 78
    .end local v8    # "shouldForward":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "resolvedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-void

    .line 94
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "resolvedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    new-instance v7, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings_ex/Settings;

    invoke-direct {v7, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v7, "settingsComponentName":Landroid/content/ComponentName;
    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 95
    invoke-virtual {p2, v7, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 100
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.android.documentsui"

    .line 101
    const-string/jumbo v11, "com.android.documentsui.LauncherActivity"

    .line 100
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v10, 0x2

    const/4 v11, 0x1

    .line 100
    invoke-virtual {p2, v9, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 106
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v9

    if-nez v9, :cond_3

    .line 107
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.oneplus.provision"

    .line 108
    const-string/jumbo v11, "com.oneplus.provision.WelcomePage"

    .line 107
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v10, 0x2

    const/4 v11, 0x1

    .line 107
    invoke-virtual {p2, v9, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 114
    :cond_3
    move-object/from16 v0, p4

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    const/16 v10, 0x3e7

    if-ne v9, v10, :cond_4

    .line 115
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v9

    if-nez v9, :cond_5

    .line 116
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.android.packageinstaller"

    .line 117
    const-string/jumbo v11, "com.android.packageinstaller.PackageInstallerActivity"

    .line 116
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v10, 0x2

    .line 119
    const/4 v11, 0x1

    .line 116
    invoke-virtual {p2, v9, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 128
    :goto_1
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/android/settings_ex/FallbackHome;

    invoke-direct {v9, p1, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const/4 v10, 0x2

    .line 130
    const/4 v11, 0x1

    .line 128
    invoke-virtual {p2, v9, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 60
    :cond_4
    :goto_2
    return-void

    .line 121
    :cond_5
    new-instance v9, Landroid/content/ComponentName;

    .line 122
    const-string/jumbo v10, "com.google.android.packageinstaller"

    .line 123
    const-string/jumbo v11, "com.android.packageinstaller.PackageInstallerActivity"

    .line 121
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v10, 0x2

    .line 125
    const/4 v11, 0x1

    .line 121
    invoke-virtual {p2, v9, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 132
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method private webviewSettingSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v2, 0x1

    .line 139
    if-nez p3, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings_ex/WebViewImplementation;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "settingsComponentName":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 144
    :goto_0
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 138
    return-void

    .line 147
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 53
    .local v1, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 54
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1, v0, p2, v2}, Lcom/android/settings_ex/SettingsInitialize;->managedProfileSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    .line 56
    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings_ex/SettingsInitialize;->webviewSettingSetup(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/UserInfo;)V

    .line 51
    return-void
.end method
