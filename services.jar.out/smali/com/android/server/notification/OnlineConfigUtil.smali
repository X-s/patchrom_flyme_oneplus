.class public Lcom/android/server/notification/OnlineConfigUtil;
.super Ljava/lang/Object;
.source "OnlineConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/OnlineConfigUtil$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DENOISE_NOTIFICATION:Ljava/lang/String; = "DenoiseNotification"

.field private static final TAG:Ljava/lang/String; = "OnlineConfigUtil"

.field private static sContext:Landroid/content/Context;

.field private static sGetListFail:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private static sWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/OnlineConfigUtil;->getWhiteList(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/notification/OnlineConfigUtil;->DEBUG:Z

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/notification/OnlineConfigUtil;->sGetListFail:Z

    .line 32
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.immomo.momo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.MobileTicket"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.androidqqmail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.qqlite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.taobao.idlefish"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.minihd.qq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mobileqqi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.qq.kddi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.wework"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.miracle.msnmobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.apps.plus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.duowan.mobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.skype.raider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.alibaba.mobileim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "cn.com.fetion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.eico.weico"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.talk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.apps.messaging"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.netease.mail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.kingsoft.email"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.netease.mobimail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.cloudmagic.mail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.corp21cn.mail189"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.asiainfo.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.alibaba.cloudmail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.sina.mail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.yahoo.mobile.client.android.mail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.microsoft.office.outlook"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.smartisan.email"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.tim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.weico.international"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.p1.mobile.putong"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.channel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.skype.rover"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.microsoft.teams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.oneplus.bbs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpList()V
    .locals 5

    .prologue
    .line 148
    sget-object v2, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    sget-object v3, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "pkg":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 150
    const-string/jumbo v2, "OnlineConfigUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "idx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private static getWhiteList(Lorg/json/JSONArray;)V
    .locals 10
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v9, 0x1

    .line 115
    if-eqz p0, :cond_4

    .line 117
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 118
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 119
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "default_reset_op_level_list"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 121
    .local v5, "list":Lorg/json/JSONArray;
    sget-object v7, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    monitor-enter v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :try_start_1
    sget-object v6, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 124
    sget-object v6, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    :try_start_2
    monitor-exit v7

    .line 117
    .end local v2    # "i":I
    .end local v5    # "list":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .restart local v5    # "list":Lorg/json/JSONArray;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "list":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "OnlineConfigUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWhiteList error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sput-boolean v9, Lcom/android/server/notification/OnlineConfigUtil;->sGetListFail:Z

    .line 142
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "index":I
    :goto_2
    sget-boolean v6, Lcom/android/server/notification/OnlineConfigUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 143
    invoke-static {}, Lcom/android/server/notification/OnlineConfigUtil;->dumpList()V

    .line 114
    :cond_2
    return-void

    .line 129
    .restart local v3    # "index":I
    :cond_3
    const/4 v6, 0x0

    :try_start_3
    sput-boolean v6, Lcom/android/server/notification/OnlineConfigUtil;->sGetListFail:Z

    .line 130
    const-string/jumbo v6, "OnlineConfigUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DenoiseNotification updated complete sWhiteList size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 134
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "OnlineConfigUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWhiteList error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sput-boolean v9, Lcom/android/server/notification/OnlineConfigUtil;->sGetListFail:Z

    goto :goto_2

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "index":I
    :cond_4
    const-string/jumbo v6, "OnlineConfigUtil"

    const-string/jumbo v7, "jsonArray is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sput-boolean v9, Lcom/android/server/notification/OnlineConfigUtil;->sGetListFail:Z

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    sput-object p0, Lcom/android/server/notification/OnlineConfigUtil;->sContext:Landroid/content/Context;

    .line 81
    sput-object p1, Lcom/android/server/notification/OnlineConfigUtil;->sHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/server/notification/OnlineConfigUtil$OnlineConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/OnlineConfigUtil$OnlineConfigUpdater;-><init>(Lcom/android/server/notification/OnlineConfigUtil$OnlineConfigUpdater;)V

    .line 84
    .local v0, "updater":Lcom/android/server/notification/OnlineConfigUtil$OnlineConfigUpdater;
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    .line 85
    sget-object v2, Lcom/android/server/notification/OnlineConfigUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/server/notification/OnlineConfigUtil;->sHandler:Landroid/os/Handler;

    const-string/jumbo v4, "DenoiseNotification"

    .line 84
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/notification/OnlineConfigUtil;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 86
    sget-object v1, Lcom/android/server/notification/OnlineConfigUtil;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 87
    sget-boolean v1, Lcom/android/server/notification/OnlineConfigUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 88
    const-string/jumbo v1, "OnlineConfigUtil"

    const-string/jumbo v2, "Register online config observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-static {}, Lcom/android/server/notification/OnlineConfigUtil;->updateData()V

    .line 79
    return-void
.end method

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v0, Lcom/android/server/notification/OnlineConfigUtil;->sWhiteList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static updateData()V
    .locals 3

    .prologue
    .line 98
    sget-boolean v1, Lcom/android/server/notification/OnlineConfigUtil;->sGetListFail:Z

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    .line 101
    sget-object v1, Lcom/android/server/notification/OnlineConfigUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "DenoiseNotification"

    .line 100
    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/notification/OnlineConfigUtil;->getWhiteList(Lorg/json/JSONArray;)V

    .line 97
    :cond_0
    return-void
.end method
