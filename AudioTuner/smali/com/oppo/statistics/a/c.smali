.class public Lcom/oppo/statistics/a/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    invoke-static {}, Lcom/oppo/statistics/g/j;->a()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    invoke-static/range {p1 .. p6}, Lcom/oppo/statistics/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "event"

    invoke-static {p0, v1, v0}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/j;->a(J)Ljava/lang/String;

    move-result-object v3

    sub-long v4, p3, v0

    const-wide/32 v0, 0x240c8400

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "event"

    invoke-static {p0, v1, v0}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7

    invoke-static {}, Lcom/oppo/statistics/g/j;->a()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oppo/statistics/d/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 2

    invoke-static {p1, p2, p3, p4, p5}, Lcom/oppo/statistics/d/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ekv"

    invoke-static {p0, v1, v0}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/oppo/statistics/b/a;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/oppo/statistics/b/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;J)V

    invoke-static {p0, v2}, Lcom/oppo/statistics/f/a/a;->a(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oppo/statistics/e/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v2, p3, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    :cond_0
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "duration"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "ekv"

    invoke-static {p0, v0, v1}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
