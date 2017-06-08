.class public Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;
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
    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 23
    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

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

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "def_timepower_config"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v6

    .line 207
    :cond_1
    filled-new-array {v10, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 208
    .local v4, "mTimeArray":[[I
    filled-new-array {v10, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 210
    .local v3, "mStateArray":[[Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v8, 0x6

    if-gt v1, v8, :cond_2

    .line 211
    add-int/lit8 v8, v1, 0x6

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "tmp":Ljava/lang/String;
    aget-object v8, v4, v2

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v6

    .line 213
    aget-object v8, v4, v2

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v7

    .line 214
    aget-object v8, v3, v2

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v9

    aput-boolean v9, v8, v6

    .line 215
    aget-object v8, v3, v2

    const/4 v9, 0x6

    invoke-virtual {v5, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v9

    aput-boolean v9, v8, v7

    .line 210
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 219
    aget-object v8, v3, v6

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    move v6, v7

    .line 220
    goto :goto_0

    .line 223
    :cond_3
    aget-object v8, v3, v7

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    move v6, v7

    .line 224
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
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "action":Ljava/lang/String;
    const/4 v15, 0x2

    new-array v9, v15, [J

    .line 36
    .local v9, "nearestTime":[J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "def_timepower_config"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 38
    .local v14, "timeConfig":Ljava/lang/String;
    invoke-static {v14}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v9

    .line 42
    const-string v15, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 52
    const-string v15, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.intent.action.TIME_SET"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 58
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOffEnable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 59
    new-instance v10, Landroid/content/Intent;

    const-string v15, "com.android.settings.POWER_OP_OFF"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v10, "powerOFFIntent":Landroid/content/Intent;
    const/4 v15, 0x1

    aget-wide v18, v9, v15

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-eqz v15, :cond_1

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 66
    .local v4, "c":Ljava/util/Calendar;
    const/4 v15, 0x0

    aget-wide v18, v9, v15

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 67
    const-string v15, "boot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Power on alarm with flag set:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v15, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 73
    .local v3, "am":Landroid/app/AlarmManager;
    const/4 v15, 0x0

    const/high16 v18, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v15, v10, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 77
    .local v13, "sender":Landroid/app/PendingIntent;
    const/4 v15, 0x0

    const/16 v18, 0x1

    aget-wide v18, v9, v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v15, v0, v1, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 171
    .end local v3    # "am":Landroid/app/AlarmManager;
    .end local v4    # "c":Ljava/util/Calendar;
    .end local v10    # "powerOFFIntent":Landroid/content/Intent;
    .end local v13    # "sender":Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    const-string v15, "com.android.settings.POWER_OP_ON"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "android.intent.action.TIME_SET"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 177
    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string v15, "com.android.settings.POWER_OP_ON"

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v11, "powerONIntent":Landroid/content/Intent;
    const-string v15, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 179
    .restart local v3    # "am":Landroid/app/AlarmManager;
    const/4 v15, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v15, v11, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 180
    .restart local v13    # "sender":Landroid/app/PendingIntent;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 181
    const/4 v15, 0x5

    const/16 v18, 0x0

    aget-wide v18, v9, v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v15, v0, v1, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 188
    .end local v3    # "am":Landroid/app/AlarmManager;
    .end local v11    # "powerONIntent":Landroid/content/Intent;
    .end local v13    # "sender":Landroid/app/PendingIntent;
    :cond_3
    :goto_1
    return-void

    .line 81
    :cond_4
    const-string v15, "com.android.settings.POWER_OP_OFF"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 86
    .local v6, "currentTime":J
    const/4 v15, 0x1

    aget-wide v18, v9, v15

    sub-long v18, v6, v18

    const-wide/32 v20, 0x5265c00

    sub-long v18, v18, v20

    const-wide/32 v20, 0x5265c00

    rem-long v16, v18, v20

    .line 87
    .local v16, "wrongTime":J
    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_5

    const-wide/32 v18, 0xea60

    cmp-long v15, v16, v18

    if-gtz v15, :cond_3

    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gez v15, :cond_6

    const-wide/32 v18, -0x52571a0

    cmp-long v15, v16, v18

    if-gtz v15, :cond_3

    .line 95
    :cond_6
    new-instance v8, Landroid/content/Intent;

    const-class v15, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v8, "it":Landroid/content/Intent;
    const/high16 v15, 0x10000000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 116
    .end local v6    # "currentTime":J
    .end local v8    # "it":Landroid/content/Intent;
    .end local v16    # "wrongTime":J
    :cond_7
    const-string v15, "com.android.settings.POWER_CONFIRM_OP_OFF"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v15, :cond_8

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 125
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    const v18, 0x1000000a

    const-string v19, "TimepowerWakeLock"

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 134
    new-instance v5, Landroid/content/Intent;

    const-string v15, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v5, "intet":Landroid/content/Intent;
    const-string v15, "android.intent.extra.KEY_CONFIRM"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    const/high16 v15, 0x10000000

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "intet":Landroid/content/Intent;
    :cond_9
    const-string v15, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 153
    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.android.settings.POWER_OP_OFF"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v12, "powerOffIntent":Landroid/content/Intent;
    const-string v15, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 156
    .restart local v3    # "am":Landroid/app/AlarmManager;
    const/4 v15, 0x0

    const/high16 v18, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v15, v12, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 162
    .restart local v13    # "sender":Landroid/app/PendingIntent;
    invoke-virtual {v3, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 183
    .end local v12    # "powerOffIntent":Landroid/content/Intent;
    .restart local v11    # "powerONIntent":Landroid/content/Intent;
    :cond_a
    invoke-virtual {v3, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method
