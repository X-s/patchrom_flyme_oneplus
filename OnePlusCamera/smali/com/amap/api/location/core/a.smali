.class public Lcom/amap/api/location/core/a;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field static a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 15
    sput v0, Lcom/amap/api/location/core/a;->b:I

    const-string/jumbo v0, ""

    .line 19
    sput-object v0, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/amap/api/location/core/a;->b:I

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "&"

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 194
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    array-length v4, v2

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 204
    return-object p0

    .line 195
    :cond_0
    aget-object v5, v2, v0

    .line 196
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "&"

    .line 197
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const-class v2, Lcom/amap/api/location/core/a;

    monitor-enter v2

    .line 37
    :try_start_0
    invoke-static {}, Lcom/amap/api/location/core/a;->c()[B

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/amap/api/location/core/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {}, Lcom/aps/l;->a()Lcom/aps/l;

    move-result-object v4

    const-string/jumbo v5, "loc"

    invoke-virtual {v4, p0, v3, v0, v5}, Lcom/aps/l;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/amap/api/location/core/a;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 61
    :goto_0
    :try_start_1
    sget v3, Lcom/amap/api/location/core/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v3, v1, :cond_1

    :goto_1
    monitor-exit v2

    return v0

    .line 47
    :cond_0
    :try_start_2
    invoke-static {v0}, Lcom/amap/api/location/core/a;->c(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    const/4 v3, 0x0

    .line 53
    :try_start_3
    sput v3, Lcom/amap/api/location/core/a;->b:I

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    :try_start_4
    sget v0, Lcom/amap/api/location/core/a;->b:I

    if-ne v0, v1, :cond_2

    :goto_2
    move v0, v1

    .line 60
    goto :goto_1

    :catchall_0
    move-exception v0

    .line 58
    sget v3, Lcom/amap/api/location/core/a;->b:I

    if-ne v3, v1, :cond_3

    .line 57
    :goto_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    const/4 v1, 0x0

    .line 58
    :try_start_5
    sput v1, Lcom/amap/api/location/core/a;->b:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/location/core/a;->b:I

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    sput v1, Lcom/amap/api/location/core/a;->b:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "http://apiinit.amap.com/v3/log/init"

    .line 70
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-static {}, Lcom/amap/api/location/core/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&ts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&scode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, p0}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    .line 144
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v1, "info"

    .line 152
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    :goto_1
    sget v0, Lcom/amap/api/location/core/a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    .line 166
    :goto_2
    sget v0, Lcom/amap/api/location/core/a;->b:I

    if-eq v0, v3, :cond_5

    .line 169
    return v2

    :cond_1
    :try_start_1
    const-string/jumbo v1, "status"

    .line 145
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    if-eq v1, v3, :cond_2

    .line 148
    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 149
    sput v1, Lcom/amap/api/location/core/a;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    sput v2, Lcom/amap/api/location/core/a;->b:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 147
    :try_start_2
    sput v1, Lcom/amap/api/location/core/a;->b:I

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "info"

    .line 153
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "AuthFailure"

    .line 156
    sget-object v1, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 167
    :cond_5
    return v3
.end method

.method private static c()[B
    .locals 2

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "resType=json&encode=UTF-8&ec=1"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 187
    return-object v0
.end method
