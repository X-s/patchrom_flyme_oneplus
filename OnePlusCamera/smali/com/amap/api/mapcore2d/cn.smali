.class public Lcom/amap/api/mapcore2d/cn;
.super Ljava/lang/Object;
.source "AuthManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Lcom/amap/api/mapcore2d/cu;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 18
    sput v0, Lcom/amap/api/mapcore2d/cn;->a:I

    const-string/jumbo v0, ""

    .line 22
    sput-object v0, Lcom/amap/api/mapcore2d/cn;->b:Ljava/lang/String;

    const-string/jumbo v0, "http://apiinit.amap.com/v3/log/init"

    .line 26
    sput-object v0, Lcom/amap/api/mapcore2d/cn;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/amap/api/mapcore2d/cn;->e:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/amap/api/mapcore2d/cn;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v0, "resType"

    const-string/jumbo v2, "json"

    .line 160
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "encode"

    const-string/jumbo v2, "UTF-8"

    .line 161
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/amap/api/mapcore2d/co;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ts"

    .line 164
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "key"

    .line 165
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resType=json&encode=UTF-8&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "scode"

    .line 169
    invoke-static {p0, v0, v2}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v1

    .line 174
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "gParams"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v0, Lcom/amap/api/mapcore2d/cn;

    monitor-enter v0

    .line 84
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore2d/cn;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 35
    sput-object p1, Lcom/amap/api/mapcore2d/cn;->c:Lcom/amap/api/mapcore2d/cu;

    .line 39
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/cn;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    .line 41
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    .line 42
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    .line 43
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "User-Agent"

    .line 44
    sget-object v4, Lcom/amap/api/mapcore2d/cn;->c:Lcom/amap/api/mapcore2d/cu;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/cu;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "X-INFO"

    .line 46
    sget-object v4, Lcom/amap/api/mapcore2d/cn;->c:Lcom/amap/api/mapcore2d/cu;

    const/4 v5, 0x0

    .line 47
    invoke-static {p0, v4, v5, p2}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "logversion"

    const-string/jumbo v4, "2.1"

    .line 48
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "platinfo"

    const-string/jumbo v4, "platform=Android&sdkversion=%s&product=%s"

    const/4 v5, 0x2

    .line 50
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/amap/api/mapcore2d/cn;->c:Lcom/amap/api/mapcore2d/cu;

    .line 52
    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/cu;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/amap/api/mapcore2d/cn;->c:Lcom/amap/api/mapcore2d/cu;

    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/cu;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 50
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/amap/api/mapcore2d/dy;->a()Lcom/amap/api/mapcore2d/dy;

    move-result-object v3

    .line 54
    new-instance v4, Lcom/amap/api/mapcore2d/cw;

    invoke-direct {v4}, Lcom/amap/api/mapcore2d/cw;-><init>()V

    .line 55
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cs;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/net/Proxy;)V

    .line 56
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/util/Map;)V

    .line 57
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cn;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 58
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore2d/cw;->b(Ljava/util/Map;)V

    .line 59
    invoke-virtual {v4, v0}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/dy;->a(Lcom/amap/api/mapcore2d/ee;)[B

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cn;->a([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "getAuth"

    .line 64
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private static a([B)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    if-eqz p0, :cond_1

    .line 110
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    .line 113
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v0, "info"

    .line 121
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    :goto_1
    sget v0, Lcom/amap/api/mapcore2d/cn;->a:I

    if-eqz v0, :cond_5

    .line 127
    :goto_2
    sget v0, Lcom/amap/api/mapcore2d/cn;->a:I

    if-eq v0, v2, :cond_6

    .line 130
    return v3

    .line 108
    :cond_1
    return v2

    :cond_2
    const-string/jumbo v0, "status"

    .line 114
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    if-eq v0, v2, :cond_3

    .line 117
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 118
    sput v0, Lcom/amap/api/mapcore2d/cn;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Auth"

    const-string/jumbo v2, "lData"

    .line 147
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_3
    return v3

    :cond_3
    const/4 v0, 0x1

    .line 116
    :try_start_1
    sput v0, Lcom/amap/api/mapcore2d/cn;->a:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    const-string/jumbo v1, "Auth"

    const-string/jumbo v2, "lData"

    .line 151
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :try_start_2
    const-string/jumbo v0, "info"

    .line 122
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cn;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "AuthFailure"

    .line 125
    sget-object v1, Lcom/amap/api/mapcore2d/cn;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 128
    :cond_6
    return v2
.end method
