.class public Lcom/amap/api/location/c;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/aps/k;

.field volatile b:Z

.field c:Z

.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private f:J

.field private g:Lcom/amap/api/location/a$a;

.field private h:Lcom/amap/api/location/a;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    .line 31
    iput-boolean v2, p0, Lcom/amap/api/location/c;->d:Z

    const-wide/16 v0, 0x7d0

    .line 33
    iput-wide v0, p0, Lcom/amap/api/location/c;->f:J

    .line 66
    iput-boolean v2, p0, Lcom/amap/api/location/c;->b:Z

    .line 150
    iput-boolean v2, p0, Lcom/amap/api/location/c;->i:Z

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    .line 52
    iput-object p3, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    .line 53
    invoke-virtual {p0, v2}, Lcom/amap/api/location/c;->b(Z)V

    .line 54
    iput-object p1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/aps/a;

    invoke-direct {v0}, Lcom/aps/a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    .line 56
    iput-object p2, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    .line 57
    return-void
.end method

.method private a(Lcom/aps/c;)Lcom/amap/api/location/AMapLocation;
    .locals 4

    .prologue
    .line 283
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "lbs"

    .line 284
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Lcom/aps/c;->f()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 286
    invoke-virtual {p1}, Lcom/aps/c;->e()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 287
    invoke-virtual {p1}, Lcom/aps/c;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    .line 288
    invoke-virtual {p1}, Lcom/aps/c;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    .line 289
    invoke-virtual {p1}, Lcom/aps/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setPoiId(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lcom/aps/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/aps/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/aps/c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/aps/c;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/aps/c;->a()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAMapException(Lcom/amap/api/location/core/AMapLocException;)V

    .line 295
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "citycode"

    .line 296
    invoke-virtual {p1}, Lcom/aps/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "desc"

    .line 297
    invoke-virtual {p1}, Lcom/aps/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "adcode"

    .line 298
    invoke-virtual {p1}, Lcom/aps/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p1}, Lcom/aps/c;->k()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lcom/aps/c;->l()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {p1}, Lcom/aps/c;->m()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    .line 314
    if-nez v3, :cond_1

    .line 317
    :cond_0
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->b(Ljava/lang/String;)V

    .line 319
    :goto_0
    invoke-virtual {p1}, Lcom/aps/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/aps/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/aps/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->a(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/aps/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    .line 323
    return-object v0

    .line 314
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, " "

    const-string/jumbo v3, ""

    .line 315
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    .line 103
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-nez v0, :cond_1

    .line 111
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "key"

    .line 112
    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v0, "X-INFO"

    .line 114
    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v2

    const-string/jumbo v3, "loc"

    invoke-virtual {v2, v3}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :goto_2
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/c;->c()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    const-string/jumbo v3, "ex"

    const-string/jumbo v4, "UTF-8"

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/aps/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    const-string/jumbo v0, "X-BIZ"

    .line 130
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "User-Agent"

    const-string/jumbo v2, "AMAP Location SDK Android 1.3.1"

    .line 131
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v0, :cond_2

    .line 146
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/c;->i:Z

    .line 148
    return-void

    .line 104
    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    iget-object v1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Landroid/content/Context;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 107
    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 145
    :catch_1
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 118
    :catch_2
    move-exception v0

    .line 117
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 129
    :catch_3
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4
.end method

.method private e()Lcom/aps/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Lcom/aps/c;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-object v0

    .line 237
    :cond_0
    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    .line 238
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/aps/c;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    goto :goto_0
.end method

.method private f()Lcom/aps/c;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-nez v0, :cond_0

    .line 252
    :goto_0
    if-eqz v1, :cond_1

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    .line 269
    :goto_1
    return-object v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0}, Lcom/aps/k;->a()Lcom/aps/c;

    move-result-object v1

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 268
    :catch_0
    move-exception v0

    .line 259
    new-instance v1, Lcom/aps/c;

    invoke-direct {v1}, Lcom/aps/c;-><init>()V

    .line 260
    invoke-virtual {v1, v0}, Lcom/aps/c;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 261
    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    goto :goto_1

    .line 268
    :catch_1
    move-exception v0

    .line 266
    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private g()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 274
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-wide v6, v0, Lcom/amap/api/location/a;->d:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/amap/api/location/c;->f:J

    const-wide/16 v8, 0x5

    mul-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iput-boolean v2, v0, Lcom/amap/api/location/a;->c:Z

    .line 276
    return v1

    :cond_0
    move v0, v2

    .line 274
    goto :goto_0

    .line 278
    :cond_1
    return v2
.end method


# virtual methods
.method a(J)V
    .locals 3

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 229
    iput-wide p1, p0, Lcom/amap/api/location/c;->f:J

    .line 231
    :cond_0
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, p1}, Lcom/aps/k;->a(Landroid/app/PendingIntent;)V

    .line 388
    return-void
.end method

.method a(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, p1, p2}, Lcom/aps/k;->a(Lcom/aps/j;Landroid/app/PendingIntent;)V

    .line 376
    return-void
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 68
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/location/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 69
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/location/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 78
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/location/c;->a(Z)V

    .line 79
    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    if-nez v0, :cond_1

    .line 85
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/c;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 86
    return-void

    .line 80
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method b(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, p1}, Lcom/aps/k;->b(Landroid/app/PendingIntent;)V

    .line 391
    return-void
.end method

.method b(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, p1, p2}, Lcom/aps/k;->b(Lcom/aps/j;Landroid/app/PendingIntent;)V

    .line 380
    return-void
.end method

.method declared-synchronized b(Z)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 96
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/location/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 97
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 93
    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0}, Lcom/aps/k;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 154
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 155
    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-boolean v0, p0, Lcom/amap/api/location/c;->i:Z

    if-eqz v0, :cond_3

    .line 162
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    .line 219
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-result v0

    if-nez v0, :cond_b

    .line 225
    :goto_2
    return-void

    .line 156
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V

    .line 157
    return-void

    .line 159
    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/amap/api/location/c;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 162
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->c:Z

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->e:Z

    if-eqz v0, :cond_8

    .line 179
    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Lcom/aps/c;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 180
    if-nez v0, :cond_9

    move-object v0, v1

    .line 208
    :goto_3
    if-nez v0, :cond_10

    .line 198
    :cond_6
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    if-eq v0, v4, :cond_13

    .line 202
    :goto_5
    :try_start_6
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-nez v0, :cond_14

    const-wide/16 v2, 0x7530

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    goto :goto_1

    .line 166
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 169
    :cond_8
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    .line 170
    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 198
    :try_start_9
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    move-result v0

    if-eq v0, v4, :cond_e

    .line 202
    :goto_6
    :try_start_a
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-nez v0, :cond_f

    const-wide/16 v2, 0x7530

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_0

    .line 209
    :catch_2
    move-exception v0

    goto :goto_1

    .line 181
    :cond_9
    :try_start_b
    invoke-direct {p0, v0}, Lcom/amap/api/location/c;->a(Lcom/aps/c;)Lcom/amap/api/location/AMapLocation;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    goto :goto_3

    .line 210
    :catch_3
    move-exception v0

    .line 188
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 198
    :try_start_d
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    move-result v0

    if-eq v0, v4, :cond_15

    .line 202
    :goto_7
    :try_start_e
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-nez v0, :cond_16

    const-wide/16 v2, 0x7530

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 209
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 203
    :cond_a
    :try_start_f
    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 190
    :goto_8
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    .line 220
    :cond_b
    :try_start_11
    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_2

    .line 224
    :catch_5
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 176
    :catch_6
    move-exception v0

    .line 198
    :try_start_12
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    move-result v0

    if-eq v0, v4, :cond_c

    .line 202
    :goto_9
    :try_start_13
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-nez v0, :cond_d

    const-wide/16 v0, 0x7530

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    goto/16 :goto_1

    .line 209
    :catch_7
    move-exception v0

    goto/16 :goto_1

    .line 199
    :cond_c
    :try_start_14
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    goto :goto_9

    .line 203
    :cond_d
    :try_start_15
    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_1

    .line 199
    :cond_e
    :try_start_16
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_6

    .line 203
    :cond_f
    :try_start_17
    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_0

    .line 208
    :cond_10
    :try_start_18
    iget-object v2, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v2, v2, Lcom/amap/api/location/a;->e:Z

    if-eqz v2, :cond_6

    .line 191
    iget-object v2, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v2, v2, Lcom/amap/api/location/a;->c:Z

    if-nez v2, :cond_12

    .line 192
    :cond_11
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 193
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x64

    .line 194
    iput v0, v2, Landroid/os/Message;->what:I

    .line 195
    iget-object v0, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 191
    :cond_12
    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_4

    .line 199
    :cond_13
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_5

    .line 203
    :cond_14
    :try_start_19
    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1

    goto/16 :goto_0

    .line 199
    :cond_15
    :try_start_1a
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_7

    .line 203
    :cond_16
    :try_start_1b
    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_4

    goto/16 :goto_0

    .line 210
    :catchall_0
    move-exception v0

    .line 198
    :try_start_1c
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0

    move-result v1

    if-eq v1, v4, :cond_17

    .line 202
    :goto_a
    :try_start_1d
    iget-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    if-nez v1, :cond_a

    const-wide/16 v2, 0x7530

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_8

    goto/16 :goto_8

    .line 209
    :catch_8
    move-exception v0

    goto/16 :goto_1

    .line 199
    :cond_17
    :try_start_1e
    iget-object v1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0

    goto :goto_a
.end method
