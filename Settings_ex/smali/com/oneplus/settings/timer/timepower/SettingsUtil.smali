.class public Lcom/oneplus/settings/timer/timepower/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field public static final ACTION_PHONE_STATE:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_POWER_CANCEL_OP_OFF:Ljava/lang/String; = "com.android.settings.POWER_CANCEL_OP_OFF"

.field public static final ACTION_POWER_CONFIRM_OP_OFF:Ljava/lang/String; = "com.android.settings.POWER_CONFIRM_OP_OFF"

.field public static final ACTION_POWER_OFF:Ljava/lang/String; = "com.android.settings.POWER_OFF"

.field public static final ACTION_POWER_ON:Ljava/lang/String; = "com.android.settings.POWER_ON"

.field public static final ACTION_POWER_OP_OFF:Ljava/lang/String; = "com.android.settings.POWER_OP_OFF"

.field public static final ACTION_POWER_OP_ON:Ljava/lang/String; = "com.android.settings.POWER_OP_ON"

.field public static final ACTION_SET_CHANGED:Ljava/lang/String; = "com.android.settings.SET_CHANGED"

.field public static final MILLIS_OF_DAY:J = 0x5265c00L

.field public static final REQUEST_CODE_OFF:I = 0x1

.field public static final REQUEST_CODE_ON:I = 0x0

.field private static final RTC_POWERUP_MTK:I = 0x7

.field private static final RTC_POWERUP_QCOM:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SettingsUtil"

.field public static final TIMEOUT_MILLIS:I = 0xea60

.field private static final TIME_POWER_COUNTS:I = 0x2

.field public static final TRIGGER_TIME:Ljava/lang/String; = "trigger_time"

.field private static mCurrentTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 140
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 142
    .local v0, "am":Landroid/app/AlarmManager;
    const/high16 v2, 0x8000000

    invoke-static {p0, p2, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 144
    .local v1, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 151
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

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "def_timepower_config"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v6

    .line 170
    :cond_1
    filled-new-array {v10, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 171
    .local v4, "mTimeArray":[[I
    filled-new-array {v10, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 173
    .local v3, "mStateArray":[[Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v8, 0x6

    if-gt v1, v8, :cond_2

    .line 174
    add-int/lit8 v8, v1, 0x6

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "tmp":Ljava/lang/String;
    aget-object v8, v4, v2

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v6

    .line 176
    aget-object v8, v4, v2

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v7

    .line 177
    aget-object v8, v3, v2

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->intToBool(I)Z

    move-result v9

    aput-boolean v9, v8, v6

    .line 178
    aget-object v8, v3, v2

    const/4 v9, 0x6

    invoke-virtual {v5, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->intToBool(I)Z

    move-result v9

    aput-boolean v9, v8, v7

    .line 173
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 182
    aget-object v8, v3, v6

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    move v6, v7

    .line 183
    goto :goto_0

    .line 186
    :cond_3
    aget-object v8, v3, v7

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_0

    move v6, v7

    .line 187
    goto :goto_0
.end method

.method public static getNearestTime(Ljava/lang/String;)[J
    .locals 12
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    .line 53
    new-array v3, v7, [J

    fill-array-data v3, :array_0

    .line 54
    .local v3, "timeArray":[J
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v3

    .line 58
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "list_poweron":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "list_poweroff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v7, :cond_4

    .line 61
    if-ne v9, v0, :cond_3

    .line 62
    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, -0x6

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, -0x4

    mul-int/lit8 v6, v0, 0x6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getUTC(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_3
    if-ne v7, v0, :cond_2

    .line 67
    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, -0x6

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, -0x4

    mul-int/lit8 v6, v0, 0x6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getUTC(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 75
    sget-wide v4, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 78
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v10

    aput-wide v4, v3, v8

    .line 85
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    sget-wide v4, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 89
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v10

    aput-wide v4, v3, v9

    goto/16 :goto_0

    .line 80
    :cond_6
    sget-wide v4, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v8

    goto :goto_3

    .line 91
    :cond_7
    sget-wide v4, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v9

    goto/16 :goto_0

    .line 53
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static getUTC(II)J
    .locals 5
    .param p0, "hourOfDay"    # I
    .param p1, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    .local v0, "calendar":Ljava/util/Calendar;
    sget-wide v2, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 103
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 107
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method static intToBool(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 195
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
    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static setAlarm(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "TriggerAtTime"    # J
    .param p4, "requestCode"    # I

    .prologue
    .line 112
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 114
    .local v0, "am":Landroid/app/AlarmManager;
    const/high16 v2, 0x8000000

    invoke-static {p0, p4, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    .local v1, "sender":Landroid/app/PendingIntent;
    packed-switch p4, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 126
    :pswitch_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 130
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
