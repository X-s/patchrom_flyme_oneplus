.class public Lcom/amap/api/location/b;
.super Ljava/lang/Object;
.source "AMapWeather.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/location/b$a;

.field b:Lcom/amap/api/location/AMapLocalWeatherListener;

.field c:Lcom/amap/api/location/a;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Lcom/amap/api/location/AMapLocalWeatherListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/a;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    .line 43
    iput-object p2, p0, Lcom/amap/api/location/b;->d:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    .line 45
    new-instance v0, Lcom/amap/api/location/b$a;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/location/b$a;-><init>(Lcom/amap/api/location/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/b;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/amap/api/location/b;->e:I

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherLive;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocalWeatherLive;-><init>()V

    .line 190
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lives"

    .line 197
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_1
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Lcom/amap/api/location/core/AMapLocException;)V

    goto :goto_0

    .line 198
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 199
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "weather"

    .line 200
    invoke-virtual {p0, v0, v2}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "temperature"

    .line 201
    invoke-virtual {p0, v0, v3}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "winddirection"

    .line 202
    invoke-virtual {p0, v0, v4}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "windpower"

    .line 203
    invoke-virtual {p0, v0, v5}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "humidity"

    .line 204
    invoke-virtual {p0, v0, v6}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "reporttime"

    .line 205
    invoke-virtual {p0, v0, v7}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->f(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1, v6}, Lcom/amap/api/location/AMapLocalWeatherLive;->e(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->b(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v4}, Lcom/amap/api/location/AMapLocalWeatherLive;->c(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, v5}, Lcom/amap/api/location/AMapLocalWeatherLive;->d(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCity(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCityCode(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setProvince(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 218
    :catch_1
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "http://restapi.amap.com/v3/weather/weatherInfo?"

    .line 184
    return-object v0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "output=json&ec=1"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&extensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherForecast;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v4, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-direct {v4}, Lcom/amap/api/location/AMapLocalWeatherForecast;-><init>()V

    .line 225
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "forecasts"

    .line 232
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 233
    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_1
    return-object v4

    .line 230
    :catch_0
    move-exception v2

    .line 228
    invoke-virtual {v4, v2}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 229
    invoke-virtual {v2}, Lcom/amap/api/location/core/AMapLocException;->printStackTrace()V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 234
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "reporttime"

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v4, v3}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Ljava/lang/String;)V

    const-string/jumbo v3, "casts"

    .line 237
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 238
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 239
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 240
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v3, v2, :cond_2

    .line 268
    invoke-virtual {v4, v6}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Ljava/util/List;)V

    goto :goto_1

    .line 241
    :cond_2
    new-instance v7, Lcom/amap/api/location/AMapLocalDayWeatherForecast;

    invoke-direct {v7}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;-><init>()V

    .line 242
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v8, "date"

    .line 243
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "week"

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "dayweather"

    .line 245
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "nightweather"

    .line 246
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "daytemp"

    .line 247
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "nighttemp"

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "daywind"

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "nightwind"

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "daypower"

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "nightpower"

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v7, v8}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->a(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v7, v9}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->b(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v7, v10}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->c(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v7, v11}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v7, v12}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->e(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v7, v13}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->f(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v7, v14}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->g(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v7, v15}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->h(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->i(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->j(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setCity(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setCityCode(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setProvince(Ljava/lang/String;)V

    .line 266
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/amap/api/location/b;)Lcom/amap/api/location/AMapLocalWeatherListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amap/api/location/b;->f:Lcom/amap/api/location/AMapLocalWeatherListener;

    return-object v0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 276
    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    .line 280
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 277
    return-object v0

    .line 280
    :cond_2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(ILcom/amap/api/location/AMapLocalWeatherListener;Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 52
    :try_start_0
    iput p1, p0, Lcom/amap/api/location/b;->e:I

    .line 53
    iput-object p2, p0, Lcom/amap/api/location/b;->f:Lcom/amap/api/location/AMapLocalWeatherListener;

    .line 54
    if-eqz p3, :cond_0

    .line 57
    if-eq p1, v0, :cond_1

    :goto_0
    const/4 v0, 0x2

    .line 60
    if-eq p1, v0, :cond_2

    .line 67
    :goto_1
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    const-wide/16 v2, -0x1

    const/high16 v4, 0x41200000    # 10.0f

    const-string/jumbo v6, "lbs"

    const/4 v7, 0x1

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string/jumbo v0, "base"

    .line 58
    invoke-virtual {p0, p3, v0, p2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "all"

    .line 61
    invoke-virtual {p0, p3, v0, p2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    iput-object p3, p0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/AMapLocalWeatherListener;

    .line 72
    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    invoke-direct {p0}, Lcom/amap/api/location/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 77
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v2}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    .line 80
    :try_start_0
    invoke-static {}, Lcom/aps/l;->a()Lcom/aps/l;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/location/b;->d:Landroid/content/Context;

    const-string/jumbo v6, "sea"

    invoke-virtual {v4, v5, v3, v0, v6}, Lcom/aps/l;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v2

    :goto_0
    const-string/jumbo v2, "base"

    .line 85
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    const-string/jumbo v2, "all"

    .line 103
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    :goto_2
    return-void

    .line 73
    :cond_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 82
    goto :goto_0

    .line 87
    :cond_1
    if-nez v0, :cond_2

    .line 90
    new-instance v1, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocalWeatherLive;-><init>()V

    .line 91
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    .line 93
    :goto_3
    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 94
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCity(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCityCode(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setProvince(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    .line 98
    iput v4, v3, Landroid/os/Message;->what:I

    .line 99
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v1, v3}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    move-object v1, v2

    goto :goto_1

    .line 88
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/amap/api/location/b;->a(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherLive;

    move-result-object v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_3

    .line 105
    :cond_3
    if-nez v0, :cond_4

    .line 108
    new-instance v0, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocalWeatherForecast;-><init>()V

    .line 109
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    .line 111
    :goto_4
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    .line 113
    iput v2, v1, Landroid/os/Message;->what:I

    .line 114
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 106
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/amap/api/location/b;->b(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherForecast;

    move-result-object v0

    goto :goto_4
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    .prologue
    .line 313
    if-nez p1, :cond_1

    .line 320
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    .line 321
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 322
    iget v1, p0, Lcom/amap/api/location/b;->e:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 323
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "\u5b9a\u4f4d\u5931\u8d25\u65e0\u6cd5\u83b7\u53d6\u57ce\u5e02\u4fe1\u606f"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    .line 324
    iget v2, p0, Lcom/amap/api/location/b;->e:I

    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    .line 330
    :goto_0
    iget v2, p0, Lcom/amap/api/location/b;->e:I

    const/4 v3, 0x2

    if-eq v3, v2, :cond_3

    .line 340
    :goto_1
    return-void

    .line 313
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    .line 315
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 316
    iput v1, v0, Landroid/os/Message;->what:I

    .line 317
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 339
    :catch_0
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 325
    :cond_2
    :try_start_1
    new-instance v2, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocalWeatherLive;-><init>()V

    .line 326
    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 327
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    iget-object v2, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v2, v0}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 331
    :cond_3
    new-instance v2, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocalWeatherForecast;-><init>()V

    .line 332
    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 333
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method
