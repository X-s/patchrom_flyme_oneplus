.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J

.field private oemNTPserver:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "2.cn.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3.cn.pool.ntp.org"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    .line 63
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 65
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 69
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 79
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x104003a

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "defaultServer":Ljava/lang/String;
    const v7, 0x10e0087

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v2, v7

    .line 84
    .local v2, "defaultTimeout":J
    const-string/jumbo v7, "ntp_server"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 88
    .local v8, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 89
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 90
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 93
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v7

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 88
    goto :goto_0

    .line 75
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 98
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    const-string v6, "NtpTrustedTime"

    const-string/jumbo v8, "missing server, so no trusted time available"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 188
    :goto_0
    return v6

    .line 105
    :cond_0
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_1

    .line 107
    sget-object v6, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 109
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_3

    const/4 v3, 0x0

    .line 112
    .local v3, "ni":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_4

    .line 113
    :cond_2
    const-string v6, "NtpTrustedTime"

    const-string v8, "forceRefresh: no connectivity"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 114
    goto :goto_0

    .line 109
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 111
    :cond_3
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    goto :goto_1

    .line 120
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    const-string v6, "NtpTrustedTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTimeout = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 124
    const-string v6, "NtpTrustedTime"

    const-string v9, "forceRefresh()"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v6, "persist.sys.oem.region"

    const-string v9, "CN"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "region":Ljava/lang/String;
    const-string v6, "CN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "OC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 129
    :cond_5
    new-instance v4, Landroid/net/OemHttpClient;

    invoke-direct {v4}, Landroid/net/OemHttpClient;-><init>()V

    .line 131
    .local v4, "oemHttpClient":Landroid/net/OemHttpClient;
    const-string v6, "NtpTrustedTime"

    const-string/jumbo v9, "oemHttpClient requestTime() start"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v6, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    iget-wide v10, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v9, v10

    invoke-virtual {v4, v6, v7, v9}, Landroid/net/OemHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    iget-wide v10, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v9, v10

    invoke-virtual {v4, v6, v8, v9}, Landroid/net/OemHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 135
    :cond_6
    const-string v6, "NtpTrustedTime"

    const-string v7, "Use oem http server algin time success!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v8, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 137
    invoke-virtual {v4}, Landroid/net/OemHttpClient;->getHttpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 138
    invoke-virtual {v4}, Landroid/net/OemHttpClient;->getHttpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 139
    invoke-virtual {v4}, Landroid/net/OemHttpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v12

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v6, v8

    .line 141
    goto/16 :goto_0

    .line 144
    .end local v4    # "oemHttpClient":Landroid/net/OemHttpClient;
    :cond_7
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 145
    .local v0, "client":Landroid/net/SntpClient;
    const-string v6, "NtpTrustedTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set time out value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_c

    .line 147
    const-string v6, "1"

    const-string/jumbo v9, "sys.ntp.exception"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 148
    .local v2, "isNtpError":Z
    if-eqz v2, :cond_8

    .line 149
    iget-wide v10, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 146
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 151
    :cond_8
    const-string v6, "NtpTrustedTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SntpClient requestTime() start, server = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-wide v10, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v9, v10

    invoke-virtual {v0, v6, v9}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 154
    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "request time from "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " successfully!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean v8, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 156
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 157
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 158
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v12

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v6, v8

    .line 160
    goto/16 :goto_0

    .line 162
    :cond_9
    const-string v6, "NtpTrustedTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "request time from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 167
    .end local v0    # "client":Landroid/net/SntpClient;
    .end local v1    # "i":I
    .end local v2    # "isNtpError":Z
    .end local v5    # "region":Ljava/lang/String;
    :cond_a
    const-string v6, "NtpTrustedTime"

    const-string v9, "forceRefresh() from cache miss"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 170
    .restart local v0    # "client":Landroid/net/SntpClient;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_c

    .line 172
    const-string v6, "NtpTrustedTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SntpClient requestTime() start, server = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-wide v10, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v9, v10

    invoke-virtual {v0, v6, v9}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 175
    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "request time from "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " successfully!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-boolean v8, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 177
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 178
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 179
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v12

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v6, v8

    .line 181
    goto/16 :goto_0

    .line 183
    :cond_b
    const-string v6, "NtpTrustedTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "request time from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/util/NtpTrustedTime;->oemNTPserver:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_c
    move v6, v7

    .line 188
    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 199
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 202
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 209
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 211
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 228
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
