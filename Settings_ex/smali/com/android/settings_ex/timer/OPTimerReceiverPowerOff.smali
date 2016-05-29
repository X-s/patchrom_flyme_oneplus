.class public Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "OPTimerReceiverPowerOff.java"


# instance fields
.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 23
    iput-object v0, p0, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static checkSwitch(Landroid/content/Context;Z)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "powerOnOrPowerOff"    # Z

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "def_timepower_config"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v6

    .line 186
    :cond_1
    filled-new-array {v10, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 187
    .local v4, "mTimeArray":[[I
    filled-new-array {v10, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 189
    .local v3, "mStateArray":[[Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v8, 0x6

    if-gt v1, v8, :cond_2

    .line 190
    add-int/lit8 v8, v1, 0x6

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "tmp":Ljava/lang/String;
    aget-object v8, v4, v2

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v6

    .line 192
    aget-object v8, v4, v2

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v7

    .line 193
    aget-object v8, v3, v2

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v9

    aput-boolean v9, v8, v6

    .line 194
    aget-object v8, v3, v2

    const/4 v9, 0x6

    invoke-virtual {v5, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v9

    aput-boolean v9, v8, v7

    .line 189
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 198
    aget-object v8, v3, v6

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    move v6, v7

    .line 199
    goto :goto_0

    .line 202
    :cond_3
    aget-object v8, v3, v7

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    move v6, v7

    .line 203
    goto :goto_0
.end method

.method static intToBool(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 26
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOffEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "action":Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v13, v0, [J

    .line 36
    .local v13, "nearestTime":[J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "def_timepower_config"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 38
    .local v18, "timeConfig":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v13

    .line 42
    const-string v19, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 51
    const-string v19, "com.android.settings_ex.action.REQUEST_POWER_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "android.intent.action.TIME_SET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 57
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->isPowerOffEnable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 58
    new-instance v14, Landroid/content/Intent;

    const-string v19, "com.android.settings_ex.POWER_OP_OFF"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v14, "powerOFFIntent":Landroid/content/Intent;
    const/16 v19, 0x1

    aget-wide v20, v13, v19

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_1

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 65
    .local v8, "c":Ljava/util/Calendar;
    const/16 v19, 0x0

    aget-wide v20, v13, v19

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    const-string v19, "boot"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Power on alarm with flag set:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 72
    .local v7, "am":Landroid/app/AlarmManager;
    const/16 v19, 0x0

    const/high16 v20, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 76
    .local v17, "sender":Landroid/app/PendingIntent;
    const/16 v19, 0x0

    const/16 v20, 0x1

    aget-wide v20, v13, v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    move-object/from16 v3, v17

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 147
    .end local v7    # "am":Landroid/app/AlarmManager;
    .end local v8    # "c":Ljava/util/Calendar;
    .end local v14    # "powerOFFIntent":Landroid/content/Intent;
    .end local v17    # "sender":Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    const-string v19, "com.android.settings_ex.POWER_OP_ON"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "android.intent.action.TIME_SET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 152
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 153
    new-instance v15, Landroid/content/Intent;

    const-string v19, "com.android.settings_ex.POWER_OP_ON"

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v15, "powerONIntent":Landroid/content/Intent;
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 157
    .restart local v7    # "am":Landroid/app/AlarmManager;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 161
    .restart local v17    # "sender":Landroid/app/PendingIntent;
    const/16 v19, 0x5

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    move-object/from16 v3, v17

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 167
    .end local v7    # "am":Landroid/app/AlarmManager;
    .end local v15    # "powerONIntent":Landroid/content/Intent;
    .end local v17    # "sender":Landroid/app/PendingIntent;
    :cond_3
    return-void

    .line 80
    :cond_4
    const-string v19, "com.android.settings_ex.POWER_OP_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 83
    .local v4, "CurrentTime":J
    const/16 v19, 0x1

    const-wide/32 v20, 0xea60

    add-long v20, v20, v4

    aput-wide v20, v13, v19

    .line 84
    const/16 v19, 0x0

    const-wide/32 v20, 0x1d4c0

    add-long v20, v20, v4

    aput-wide v20, v13, v19

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 92
    .local v10, "currentTime":J
    new-instance v12, Landroid/content/Intent;

    const-class v19, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v12, "it":Landroid/content/Intent;
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    .end local v4    # "CurrentTime":J
    .end local v10    # "currentTime":J
    .end local v12    # "it":Landroid/content/Intent;
    :cond_5
    const-string v19, "com.android.settings_ex.POWER_CONFIRM_OP_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 117
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    move-object/from16 v19, v0

    const v20, 0x1000000a

    const-string v21, "TimepowerWakeLock"

    invoke-virtual/range {v19 .. v21}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 124
    new-instance v9, Landroid/content/Intent;

    const-string v19, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, "intet":Landroid/content/Intent;
    const-string v19, "android.intent.extra.KEY_CONFIRM"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 129
    .end local v9    # "intet":Landroid/content/Intent;
    :cond_7
    const-string v19, "com.android.settings_ex.POWER_CANCEL_OP_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 136
    new-instance v16, Landroid/content/Intent;

    const-string v19, "com.android.settings_ex.POWER_OP_OFF"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v16, "powerOffIntent":Landroid/content/Intent;
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 139
    .restart local v7    # "am":Landroid/app/AlarmManager;
    const/16 v19, 0x0

    const/high16 v20, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v16

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 141
    .restart local v17    # "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method
