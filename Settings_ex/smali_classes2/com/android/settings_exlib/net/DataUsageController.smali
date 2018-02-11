.class public Lcom/android/settings_exlib/net/DataUsageController;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/net/DataUsageController$Callback;,
        Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;,
        Lcom/android/settings_exlib/net/DataUsageController$NetworkNameProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FIELDS:I = 0xa

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;

.field private static final TAG:Ljava/lang/String; = "DataUsageController"


# instance fields
.field private mCallback:Lcom/android/settings_exlib/net/DataUsageController$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/settings_exlib/net/DataUsageController$NetworkNameProvider;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-string/jumbo v0, "DataUsageController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_exlib/net/DataUsageController;->DEBUG:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_exlib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 54
    new-instance v0, Ljava/util/Formatter;

    .line 55
    sget-object v1, Lcom/android/settings_exlib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 54
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_exlib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settings_exlib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    .line 74
    iget-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 75
    iget-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 68
    return-void
.end method

.method private static addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 4
    .param p0, "t"    # Landroid/text/format/Time;
    .param p1, "months"    # I

    .prologue
    .line 113
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 114
    .local v0, "rt":Landroid/text/format/Time;
    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 116
    return-object v0
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v5, 0x0

    .line 196
    iget-object v4, p0, Lcom/android/settings_exlib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v5

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/android/settings_exlib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 198
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    if-nez v2, :cond_2

    return-object v5

    .line 199
    :cond_2
    array-length v0, v2

    .line 200
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 201
    aget-object v3, v2, v1

    .line 202
    .local v3, "policy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    return-object v3

    .line 200
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    return-object v5
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 259
    const v8, 0x10010

    .line 260
    .local v8, "flags":I
    sget-object v9, Lcom/android/settings_exlib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 261
    :try_start_0
    sget-object v0, Lcom/android/settings_exlib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings_exlib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 254
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 253
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "actualSubscriberId":Ljava/lang/String;
    return-object v0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 4

    .prologue
    .line 91
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v2, :cond_0

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    return-object v2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "DataUsageController"

    const-string/jumbo v3, "Failed to open stats session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DataUsageController"

    const-string/jumbo v3, "Failed to open stats session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .locals 4
    .param p0, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    const/4 v0, 0x0

    .line 210
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "bucketDuration="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string/jumbo v1, ",bucketStart="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, ",activeTime="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, ",rxBytes="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    const-string/jumbo v1, ",rxPackets="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    const-string/jumbo v1, ",txBytes="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    const-string/jumbo v1, ",txPackets="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    const-string/jumbo v1, ",operations="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const/16 v1, 0x5d

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string/jumbo v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get data usage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_exlib/net/DataUsageController;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "subscriberId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 122
    const-string/jumbo v2, "no subscriber id"

    invoke-direct {p0, v2}, Lcom/android/settings_exlib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    return-object v2

    .line 124
    :cond_0
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 125
    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    return-object v2
.end method

.method public getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    .locals 30
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_exlib/net/DataUsageController;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v21

    .line 137
    .local v21, "session":Landroid/net/INetworkStatsSession;
    if-nez v21, :cond_0

    .line 138
    const-string/jumbo v12, "no stats session"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_exlib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v12

    return-object v12

    .line 140
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_exlib/net/DataUsageController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v19

    .line 142
    .local v19, "policy":Landroid/net/NetworkPolicy;
    const/16 v12, 0xa

    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 143
    .local v5, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 145
    .local v10, "now":J
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-lez v12, :cond_4

    .line 147
    sget-boolean v12, Lcom/android/settings_exlib/net/DataUsageController;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "DataUsageController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cycle day="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " tz="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 148
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 147
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, v19

    iget-object v12, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 150
    .local v18, "nowTime":Landroid/text/format/Time;
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    .line 151
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 152
    .local v20, "policyTime":Landroid/text/format/Time;
    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v12, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 153
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 154
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 155
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 156
    .local v6, "start":J
    const/4 v12, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/settings_exlib/net/DataUsageController;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 166
    .end local v18    # "nowTime":Landroid/text/format/Time;
    .end local v20    # "policyTime":Landroid/text/format/Time;
    .local v8, "end":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 167
    .local v16, "callStart":J
    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 168
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 169
    .local v14, "callEnd":J
    sget-boolean v12, Lcom/android/settings_exlib/net/DataUsageController;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "DataUsageController"

    const-string/jumbo v25, "history call from %s to %s now=%s took %sms: %s"

    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 170
    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x0

    aput-object v27, v26, v28

    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x1

    aput-object v27, v26, v28

    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x2

    aput-object v27, v26, v28

    sub-long v28, v14, v16

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    const/16 v28, 0x3

    aput-object v27, v26, v28

    .line 171
    invoke-static {v13}, Lcom/android/settings_exlib/net/DataUsageController;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    aput-object v27, v26, v28

    .line 169
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    if-nez v13, :cond_5

    .line 173
    const-string/jumbo v12, "no entry data"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_exlib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v12

    return-object v12

    .line 158
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .restart local v18    # "nowTime":Landroid/text/format/Time;
    .restart local v20    # "policyTime":Landroid/text/format/Time;
    :cond_3
    const/4 v12, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/settings_exlib/net/DataUsageController;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 159
    .restart local v6    # "start":J
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .restart local v8    # "end":J
    goto :goto_0

    .line 163
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v18    # "nowTime":Landroid/text/format/Time;
    .end local v20    # "policyTime":Landroid/text/format/Time;
    :cond_4
    move-wide v8, v10

    .line 164
    .restart local v8    # "end":J
    const-wide v26, 0x90321000L

    sub-long v6, v10, v26

    .restart local v6    # "start":J
    goto/16 :goto_0

    .line 175
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v14    # "callEnd":J
    .restart local v16    # "callStart":J
    :cond_5
    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v26, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v22, v26, v28

    .line 176
    .local v22, "totalBytes":J
    new-instance v24, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    invoke-direct/range {v24 .. v24}, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;-><init>()V

    .line 177
    .local v24, "usage":Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    move-object/from16 v0, v24

    iput-wide v6, v0, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->startDate:J

    .line 178
    move-wide/from16 v0, v22

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 179
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/settings_exlib/net/DataUsageController;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    .line 180
    if-eqz v19, :cond_9

    .line 181
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v12, v26, v28

    if-lez v12, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    :goto_1
    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 182
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v12, v26, v28

    if-lez v12, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v26, v0

    :goto_2
    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 186
    :goto_3
    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/net/DataUsageController;->mNetworkController:Lcom/android/settings_exlib/net/DataUsageController$NetworkNameProvider;

    if-eqz v12, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/net/DataUsageController;->mNetworkController:Lcom/android/settings_exlib/net/DataUsageController$NetworkNameProvider;

    invoke-interface {v12}, Lcom/android/settings_exlib/net/DataUsageController$NetworkNameProvider;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    .line 189
    :cond_6
    return-object v24

    .line 181
    :cond_7
    const-wide/16 v26, 0x0

    goto :goto_1

    .line 182
    :cond_8
    const-wide/16 v26, 0x0

    goto :goto_2

    .line 184
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->warningLevel:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 190
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "now":J
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .end local v22    # "totalBytes":J
    .end local v24    # "usage":Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    :catch_0
    move-exception v4

    .line 191
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "remote call failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_exlib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v12

    return-object v12
.end method

.method public getDefaultWarningLevel()J
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings_exlib/R$integer;->default_data_warning_level_mb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 86
    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getWifiDataUsageInfo()Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 132
    .local v0, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    return-object v1
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_exlib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/android/settings_exlib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/settings_exlib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 243
    :cond_0
    return v0
.end method

.method public setCallback(Lcom/android/settings_exlib/net/DataUsageController$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_exlib/net/DataUsageController$Callback;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_exlib/net/DataUsageController;->mCallback:Lcom/android/settings_exlib/net/DataUsageController$Callback;

    .line 103
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 223
    const-string/jumbo v2, "DataUsageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMobileDataEnabled: enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 225
    .local v1, "subId":[I
    array-length v2, v1

    if-nez v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mCallback:Lcom/android/settings_exlib/net/DataUsageController$Callback;

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mCallback:Lcom/android/settings_exlib/net/DataUsageController$Callback;

    invoke-interface {v2, p1}, Lcom/android/settings_exlib/net/DataUsageController$Callback;->onMobileDataEnabled(Z)V

    .line 222
    :cond_1
    return-void

    .line 228
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 229
    aget v2, v1, v0

    if-ltz v2, :cond_3

    .line 230
    iget-object v2, p0, Lcom/android/settings_exlib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v3, v1, v0

    invoke-virtual {v2, v3, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 228
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_3
    const-string/jumbo v2, "DataUsageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMobileDataEnabled: negative subId[i]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setNetworkController(Lcom/android/settings_exlib/net/DataUsageController$NetworkNameProvider;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/settings_exlib/net/DataUsageController$NetworkNameProvider;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_exlib/net/DataUsageController;->mNetworkController:Lcom/android/settings_exlib/net/DataUsageController$NetworkNameProvider;

    .line 78
    return-void
.end method
