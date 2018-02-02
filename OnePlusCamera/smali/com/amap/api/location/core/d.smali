.class public Lcom/amap/api/location/core/d;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field static c:I

.field static d:Ljava/lang/String;

.field private static e:Landroid/content/SharedPreferences;

.field private static f:Landroid/content/SharedPreferences$Editor;

.field private static g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, ""

    .line 30
    sput-object v0, Lcom/amap/api/location/core/d;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 31
    sput-object v0, Lcom/amap/api/location/core/d;->b:Ljava/lang/String;

    const/16 v0, 0x800

    .line 37
    sput v0, Lcom/amap/api/location/core/d;->c:I

    .line 235
    sput-object v1, Lcom/amap/api/location/core/d;->e:Landroid/content/SharedPreferences;

    .line 236
    sput-object v1, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    .line 333
    sput-object v1, Lcom/amap/api/location/core/d;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 322
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    return-object v0

    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 330
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    :try_start_0
    sget-object v0, Lcom/amap/api/location/core/d;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 337
    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/c;->i()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/d;->d:Ljava/lang/String;

    .line 340
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/location/core/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    return-object v0

    .line 336
    :cond_1
    sget-object v0, Lcom/amap/api/location/core/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 345
    return-object v3
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    .prologue
    .line 240
    :try_start_0
    sget-object v0, Lcom/amap/api/location/core/d;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 247
    :goto_1
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "last_know_lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "last_know_lng"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "province"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "city"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "district"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "cityCode"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "adCode"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "accuracy"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 257
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "time"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 258
    sget-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/amap/api/location/core/d;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 265
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v0, "last_know_location"

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/d;->e:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 245
    :cond_1
    :try_start_1
    sget-object v0, Lcom/amap/api/location/core/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/d;->f:Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 268
    if-eqz p0, :cond_0

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 283
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    :goto_0
    return-void

    .line 269
    :cond_0
    return-void

    .line 273
    :cond_1
    :try_start_0
    sget-object v0, Lcom/amap/api/location/core/d;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 277
    :goto_1
    sget-object v0, Lcom/amap/api/location/core/d;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    :try_start_1
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "apply"

    const/4 v2, 0x0

    .line 275
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/d;->g:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/location/core/AMapLocException;
        }
    .end annotation

    .prologue
    .line 351
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    .line 352
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "info"

    .line 352
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "status"

    .line 355
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "info"

    .line 356
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "0"

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 380
    :cond_2
    :goto_0
    return-void

    .line 358
    :cond_3
    return-void

    :cond_4
    const-string/jumbo v1, "INVALID_USER_KEY"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    :cond_5
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "INSUFFICIENT_PRIVILEGES"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "USERKEY_PLAT_NOMATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "INVALID_USER_SCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "SERVICE_NOT_EXIST"

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 371
    :cond_7
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string/jumbo v1, "SERVICE_RESPONSE_ERROR"

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "OVER_QUOTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "UNKNOWN_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "INVALID_PARAMS"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    if-eqz p0, :cond_1

    :try_start_0
    const-string/jumbo v0, "connectivity"

    .line 179
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 181
    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 189
    if-nez v0, :cond_4

    .line 191
    :cond_0
    return v2

    .line 177
    :cond_1
    return v2

    .line 182
    :cond_2
    return v2

    .line 186
    :cond_3
    return v2

    .line 189
    :cond_4
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    .line 193
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    return v2
.end method

.method public static b(Landroid/content/Context;)Lcom/amap/api/location/AMapLocation;
    .locals 8

    .prologue
    :try_start_0
    const-string/jumbo v0, "last_know_location"

    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 209
    new-instance v2, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v2, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "lbs"

    .line 210
    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    const-string/jumbo v1, "last_know_lat"

    const-string/jumbo v3, "0.0"

    .line 211
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string/jumbo v1, "last_know_lng"

    const-string/jumbo v3, "0.0"

    .line 213
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 215
    invoke-virtual {v2, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 216
    invoke-virtual {v2, v6, v7}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const-string/jumbo v1, "province"

    const-string/jumbo v3, ""

    .line 217
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    const-string/jumbo v1, "city"

    const-string/jumbo v3, ""

    .line 218
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    const-string/jumbo v1, "district"

    const-string/jumbo v3, ""

    .line 219
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    const-string/jumbo v1, "cityCode"

    const-string/jumbo v3, ""

    .line 220
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    const-string/jumbo v1, "adCode"

    const-string/jumbo v3, ""

    .line 221
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    const-string/jumbo v1, "accuracy"

    const/4 v3, 0x0

    .line 222
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    const-string/jumbo v1, "time"

    const-wide/16 v4, 0x0

    .line 223
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/location/AMapLocation;->setTime(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-object v2

    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 230
    return-object v0
.end method
