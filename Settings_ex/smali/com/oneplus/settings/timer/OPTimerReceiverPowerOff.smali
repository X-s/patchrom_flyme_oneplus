.class public Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "OPTimerReceiverPowerOff.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const-string v0, "OPTimerReceiverPowerOff"

    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->TAG:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 23
    iput-object v1, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

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

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "def_timepower_config"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v6

    .line 210
    :cond_1
    filled-new-array {v10, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 211
    .local v4, "mTimeArray":[[I
    filled-new-array {v10, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 213
    .local v3, "mStateArray":[[Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v8, 0x6

    if-gt v1, v8, :cond_2

    .line 214
    add-int/lit8 v8, v1, 0x6

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "tmp":Ljava/lang/String;
    aget-object v8, v4, v2

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v6

    .line 216
    aget-object v8, v4, v2

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v7

    .line 217
    aget-object v8, v3, v2

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v9

    aput-boolean v9, v8, v6

    .line 218
    aget-object v8, v3, v2

    const/4 v9, 0x6

    invoke-virtual {v5, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v9

    aput-boolean v9, v8, v7

    .line 213
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 222
    aget-object v8, v3, v6

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    move v6, v7

    .line 223
    goto :goto_0

    .line 226
    :cond_3
    aget-object v8, v3, v7

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    move v6, v7

    .line 227
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
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

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

    move-result-object v4

    .line 34
    .local v4, "action":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [J

    .line 36
    .local v11, "nearestTime":[J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "def_timepower_config"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 38
    .local v16, "timeConfig":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v11

    .line 42
    const-string v17, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 52
    const-string v17, "com.android.settings.action.REQUEST_POWER_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "android.intent.action.TIME_SET"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 58
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOffEnable(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 59
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.android.settings.POWER_OP_OFF"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v12, "powerOFFIntent":Landroid/content/Intent;
    const/16 v17, 0x1

    aget-wide v18, v11, v17

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_1

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 66
    .local v6, "c":Ljava/util/Calendar;
    const/16 v17, 0x0

    aget-wide v18, v11, v17

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 67
    const-string v17, "boot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Power on alarm with flag set:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v17, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 73
    .local v5, "am":Landroid/app/AlarmManager;
    const/16 v17, 0x0

    const/high16 v18, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 77
    .local v15, "sender":Landroid/app/PendingIntent;
    const/16 v17, 0x0

    const/16 v18, 0x1

    aget-wide v18, v11, v18

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v5, v0, v1, v2, v15}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 174
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v12    # "powerOFFIntent":Landroid/content/Intent;
    .end local v15    # "sender":Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    const-string v17, "com.android.settings.POWER_OP_ON"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "android.intent.action.TIME_SET"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 180
    :cond_2
    new-instance v13, Landroid/content/Intent;

    const-string v17, "com.android.settings.POWER_OP_ON"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v13, "powerONIntent":Landroid/content/Intent;
    const-string v17, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 182
    .restart local v5    # "am":Landroid/app/AlarmManager;
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 183
    .restart local v15    # "sender":Landroid/app/PendingIntent;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 184
    const/16 v17, 0x5

    const/16 v18, 0x0

    aget-wide v18, v11, v18

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v5, v0, v1, v2, v15}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 191
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v13    # "powerONIntent":Landroid/content/Intent;
    .end local v15    # "sender":Landroid/app/PendingIntent;
    :cond_3
    :goto_1
    return-void

    .line 81
    :cond_4
    const-string v17, "com.android.settings.POWER_OP_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 86
    .local v8, "currentTime":J
    const-string v17, "OPTimerReceiverPowerOff"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "time to power off--nearestTime[1]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v20, v11, v19

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v17, "OPTimerReceiverPowerOff"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "time to power off----currentTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v17, "OPTimerReceiverPowerOff"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "time to power off----isReturn:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v20, v11, v19

    sub-long v20, v8, v20

    const-wide/32 v22, 0x5265c00

    sub-long v20, v20, v22

    const-wide/32 v22, 0x5265c00

    rem-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/16 v17, 0x1

    aget-wide v18, v11, v17

    sub-long v18, v8, v18

    const-wide/32 v20, 0x5265c00

    sub-long v18, v18, v20

    const-wide/32 v20, 0x5265c00

    rem-long v18, v18, v20

    const-wide/32 v20, 0xea60

    cmp-long v17, v18, v20

    if-lez v17, :cond_5

    .line 90
    const-string v17, "OPTimerReceiverPowerOff"

    const-string v18, "time to power off----return"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 98
    :cond_5
    new-instance v10, Landroid/content/Intent;

    const-class v17, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v10, "it":Landroid/content/Intent;
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 119
    .end local v8    # "currentTime":J
    .end local v10    # "it":Landroid/content/Intent;
    :cond_6
    const-string v17, "com.android.settings.POWER_CONFIRM_OP_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 128
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 131
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    move-object/from16 v17, v0

    const v18, 0x1000000a

    const-string v19, "TimepowerWakeLock"

    invoke-virtual/range {v17 .. v19}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 137
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v7, "intet":Landroid/content/Intent;
    const-string v17, "android.intent.extra.KEY_CONFIRM"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    .end local v7    # "intet":Landroid/content/Intent;
    :cond_8
    const-string v17, "com.android.settings.POWER_CANCEL_OP_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 156
    new-instance v14, Landroid/content/Intent;

    const-string v17, "com.android.settings.POWER_OP_OFF"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v14, "powerOffIntent":Landroid/content/Intent;
    const-string v17, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 159
    .restart local v5    # "am":Landroid/app/AlarmManager;
    const/16 v17, 0x0

    const/high16 v18, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 165
    .restart local v15    # "sender":Landroid/app/PendingIntent;
    invoke-virtual {v5, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 186
    .end local v14    # "powerOffIntent":Landroid/content/Intent;
    .restart local v13    # "powerONIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {v5, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method
