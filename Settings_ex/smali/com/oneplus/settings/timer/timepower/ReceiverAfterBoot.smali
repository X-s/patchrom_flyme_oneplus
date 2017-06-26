.class public Lcom/oneplus/settings/timer/timepower/ReceiverAfterBoot;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverAfterBoot.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_INTERNAL_SDCARD_STATE:Ljava/lang/String; = "persist.sys.oppo.iSdCardState"

.field private static final TAG:Ljava/lang/String; = "ReceiverAfterBoot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setInternalSdState(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "persist.sys.oppo.iSdCardState"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const-string v0, "mounted"

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "persist.sys.oppo.iSdCardState"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    :cond_0
    return-void
.end method

.method private statisticsPowerOnTimes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_pwoer_on_times"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "currentTimes":I
    add-int/lit8 v0, v0, 0x1

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_pwoer_on_times"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    return-void
.end method

.method private writeUsingThemeFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUsingTheme"    # Z

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_is_using_theme"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_is_using_theme"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const-string v9, "BOOTCOMPLETED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==========ReceiverAfterBoot :["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ====="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 45
    const-string v9, "BOOTCOMPLETED"

    const-string v10, "==========ReceiverAfterBoot : ACTION_BOOT_COMPLETED====="

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/oneplus/settings/timer/timepower/ReceiverAfterBoot;->writeUsingThemeFlag(Landroid/content/Context;Z)V

    .line 51
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverAfterBoot;->statisticsPowerOnTimes(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverAfterBoot;->setInternalSdState(Landroid/content/Context;)V

    .line 57
    :cond_0
    const/4 v9, 0x2

    new-array v4, v9, [J

    .line 59
    .local v4, "nearestTime":[J
    const-string v9, "persist.sys.quick.test.mode"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "def_timepower_config"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "timeConfig":Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v4

    .line 85
    .end local v8    # "timeConfig":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.settings.POWER_ON"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v6, "powerOnIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    aget-wide v10, v4, v9

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    .line 95
    const/4 v9, 0x0

    aget-wide v10, v4, v9

    const/4 v9, 0x0

    invoke-static {p1, v6, v10, v11, v9}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->setAlarm(Landroid/content/Context;Landroid/content/Intent;JI)V

    .line 116
    :goto_1
    const-string v9, "android.fpd.boot_completed"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 118
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.settings.POWER_OFF"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, "powerOffIntent":Landroid/content/Intent;
    const/4 v9, 0x1

    aget-wide v10, v4, v9

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_6

    .line 129
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v9, "trigger_time"

    const/4 v10, 0x1

    aget-wide v10, v4, v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 131
    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    const/4 v9, 0x1

    aget-wide v10, v4, v9

    const/4 v9, 0x1

    invoke-static {p1, v5, v10, v11, v9}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->setAlarm(Landroid/content/Context;Landroid/content/Intent;JI)V

    .line 147
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "powerOffIntent":Landroid/content/Intent;
    :cond_1
    :goto_2
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.TIME_SET"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 157
    :cond_2
    return-void

    .line 69
    .end local v6    # "powerOnIntent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "CurrentTime":J
    const/4 v9, 0x1

    const-wide/32 v10, 0xea60

    add-long/2addr v10, v0

    aput-wide v10, v4, v9

    .line 71
    const/4 v9, 0x0

    const-wide/32 v10, 0x1d4c0

    add-long/2addr v10, v0

    aput-wide v10, v4, v9

    .line 72
    const-string v9, "sp_count"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 73
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string v9, "count"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 74
    .local v3, "count":I
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "count"

    add-int/lit8 v11, v3, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    const-string v9, "ReceiverAfterBoot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-------Total test times:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--------"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    .end local v0    # "CurrentTime":J
    .end local v3    # "count":I
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "powerOnIntent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 111
    :cond_5
    const/4 v9, 0x0

    invoke-static {p1, v6, v9}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 140
    .restart local v5    # "powerOffIntent":Landroid/content/Intent;
    :cond_6
    const/4 v9, 0x1

    invoke-static {p1, v5, v9}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_2
.end method
