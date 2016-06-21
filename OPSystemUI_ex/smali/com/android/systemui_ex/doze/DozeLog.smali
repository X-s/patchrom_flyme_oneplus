.class public Lcom/android/systemui_ex/doze/DozeLog;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SIZE:I

.field private static sCount:I

.field private static sEmergencyCallStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

.field private static final sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private static sMessages:[Ljava/lang/String;

.field private static sNotificationPulseStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNearVibrationStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNotNearVibrationStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

.field private static sPosition:I

.field private static sProxStats:[[Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

.field private static sPulsing:Z

.field private static sScreenOnNotPulsingStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

.field private static sScreenOnPulsingStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

.field private static sSince:J

.field private static sTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "DozeLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/doze/DozeLog;->DEBUG:Z

    .line 35
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/systemui_ex/doze/DozeLog;->SIZE:I

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui_ex/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 230
    new-instance v0, Lcom/android/systemui_ex/doze/DozeLog$1;

    invoke-direct {v0}, Lcom/android/systemui_ex/doze/DozeLog$1;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void

    .line 35
    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcom/android/systemui_ex/doze/DozeLog;->sSince:J

    return-wide v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 169
    const-class v5, Lcom/android/systemui_ex/doze/DozeLog;

    monitor-enter v5

    .line 170
    :try_start_0
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v4, :cond_0

    monitor-exit v5

    .line 195
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v4, "  Doze log:"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    sget v4, Lcom/android/systemui_ex/doze/DozeLog;->sPosition:I

    sget v6, Lcom/android/systemui_ex/doze/DozeLog;->sCount:I

    sub-int/2addr v4, v6

    sget v6, Lcom/android/systemui_ex/doze/DozeLog;->SIZE:I

    add-int/2addr v4, v6

    sget v6, Lcom/android/systemui_ex/doze/DozeLog;->SIZE:I

    rem-int v3, v4, v6

    .line 173
    .local v3, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lcom/android/systemui_ex/doze/DozeLog;->sCount:I

    if-ge v0, v4, :cond_1

    .line 174
    add-int v4, v3, v0

    sget v6, Lcom/android/systemui_ex/doze/DozeLog;->SIZE:I

    rem-int v1, v4, v6

    .line 175
    .local v1, "j":I
    const-string v4, "    "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    sget-object v7, Lcom/android/systemui_ex/doze/DozeLog;->sTimes:[J

    aget-wide v8, v7, v1

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 178
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sMessages:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    .end local v1    # "j":I
    :cond_1
    const-string v4, "  Doze summary stats (for "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/systemui_ex/doze/DozeLog;->sSince:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 182
    const-string v4, "):"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const-string v6, "Pickup pulse (near vibration)"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 184
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const-string v6, "Pickup pulse (not near vibration)"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 185
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const-string v6, "Notification pulse"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 186
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const-string v6, "Screen on (pulsing)"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 187
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const-string v6, "Screen on (not pulsing)"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 188
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const-string v6, "Emergency call"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x4

    if-ge v0, v4, :cond_2

    .line 190
    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "reason":Ljava/lang/String;
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sProxStats:[[Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    aget-object v4, v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proximity near ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 192
    sget-object v4, Lcom/android/systemui_ex/doze/DozeLog;->sProxStats:[[Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    aget-object v4, v4, v0

    const/4 v6, 0x1

    aget-object v4, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proximity far ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    .end local v2    # "reason":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v3    # "start":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 198
    const-class v1, Lcom/android/systemui_ex/doze/DozeLog;

    monitor-enter v1

    .line 199
    :try_start_0
    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v0, :cond_1

    monitor-exit v1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sTimes:[J

    sget v2, Lcom/android/systemui_ex/doze/DozeLog;->sPosition:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 201
    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sMessages:[Ljava/lang/String;

    sget v2, Lcom/android/systemui_ex/doze/DozeLog;->sPosition:I

    aput-object p0, v0, v2

    .line 202
    sget v0, Lcom/android/systemui_ex/doze/DozeLog;->sPosition:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/systemui_ex/doze/DozeLog;->SIZE:I

    rem-int/2addr v0, v2

    sput v0, Lcom/android/systemui_ex/doze/DozeLog;->sPosition:I

    .line 203
    sget v0, Lcom/android/systemui_ex/doze/DozeLog;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/systemui_ex/doze/DozeLog;->SIZE:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/systemui_ex/doze/DozeLog;->sCount:I

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    sget-boolean v0, Lcom/android/systemui_ex/doze/DozeLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static pulseReasonToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "pulseReason"    # I

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_0
    const-string v0, "intent"

    .line 163
    :goto_0
    return-object v0

    .line 160
    :pswitch_1
    const-string v0, "notification"

    goto :goto_0

    .line 161
    :pswitch_2
    const-string v0, "sigmotion"

    goto :goto_0

    .line 162
    :pswitch_3
    const-string v0, "pickup"

    goto :goto_0

    .line 163
    :pswitch_4
    const-string v0, "proximity"

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static traceDozing(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dozing"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 88
    sput-boolean v1, Lcom/android/systemui_ex/doze/DozeLog;->sPulsing:Z

    .line 89
    const-class v2, Lcom/android/systemui_ex/doze/DozeLog;

    monitor-enter v2

    .line 90
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 91
    sget v1, Lcom/android/systemui_ex/doze/DozeLog;->SIZE:I

    new-array v1, v1, [J

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sTimes:[J

    .line 92
    sget v1, Lcom/android/systemui_ex/doze/DozeLog;->SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sMessages:[Ljava/lang/String;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui_ex/doze/DozeLog;->sSince:J

    .line 94
    new-instance v1, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui_ex/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    .line 95
    new-instance v1, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui_ex/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    .line 96
    new-instance v1, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui_ex/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    .line 97
    new-instance v1, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui_ex/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    .line 98
    new-instance v1, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui_ex/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    .line 99
    new-instance v1, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui_ex/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    .line 100
    const/4 v1, 0x4

    const/4 v3, 0x2

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-class v3, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    sput-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sProxStats:[[Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 102
    sget-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sProxStats:[[Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui_ex/doze/DozeLog$1;)V

    aput-object v4, v1, v3

    .line 103
    sget-object v1, Lcom/android/systemui_ex/doze/DozeLog;->sProxStats:[[Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v0

    const/4 v3, 0x1

    new-instance v4, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui_ex/doze/DozeLog$1;)V

    aput-object v4, v1, v3

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const-string v1, "init"

    invoke-static {v1}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    sget-object v3, Lcom/android/systemui_ex/doze/DozeLog;->sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 108
    .end local v0    # "i":I
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dozing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static traceEmergencyCall()V
    .locals 1

    .prologue
    .line 121
    const-string v0, "emergencyCall"

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->append()V

    .line 123
    return-void
.end method

.method public static traceFling(ZZZZ)V
    .locals 2
    .param p0, "expand"    # Z
    .param p1, "aboveThreshold"    # Z
    .param p2, "thresholdNeeded"    # Z
    .param p3, "screenOnFromTouch"    # Z

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling expand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " aboveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thresholdNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenOnFromTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static traceKeyguard(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui_ex/doze/DozeLog;->sPulsing:Z

    .line 148
    :cond_0
    return-void
.end method

.method public static traceKeyguardBouncerChanged(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bouncer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static traceNotificationPulse(J)V
    .locals 2
    .param p0, "instance"    # J

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notificationPulse instance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->append()V

    .line 84
    return-void
.end method

.method public static tracePickupPulse(Z)V
    .locals 2
    .param p0, "withinVibrationThreshold"    # Z

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickupPulse withinVibrationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 64
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->append()V

    .line 66
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    goto :goto_0
.end method

.method public static tracePulseFinish()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui_ex/doze/DozeLog;->sPulsing:Z

    .line 77
    const-string v0, "pulseFinish"

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static tracePulseStart(I)V
    .locals 2
    .param p0, "reason"    # I

    .prologue
    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui_ex/doze/DozeLog;->sPulsing:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulseStart reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui_ex/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static traceScreenOff(I)V
    .locals 2
    .param p0, "why"    # I

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOff why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static traceScreenOn()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOn pulsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui_ex/doze/DozeLog;->sPulsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 133
    sget-boolean v0, Lcom/android/systemui_ex/doze/DozeLog;->sPulsing:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;->append()V

    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui_ex/doze/DozeLog;->sPulsing:Z

    .line 135
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui_ex/doze/DozeLog$SummaryStats;

    goto :goto_0
.end method
