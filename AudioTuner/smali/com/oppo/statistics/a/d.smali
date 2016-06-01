.class public Lcom/oppo/statistics/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static c:J


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/oppo/statistics/a/d;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/statistics/a/d;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/oppo/statistics/a/d;->c(Landroid/content/Context;Ljava/lang/String;JJ)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->p(Landroid/content/Context;)J

    move-result-wide v2

    const-string v1, "time"

    invoke-static {v2, v3}, Lcom/oppo/statistics/g/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "activities"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/oppo/statistics/g/j;->d()J

    move-result-wide v2

    new-instance v1, Lcom/oppo/statistics/b/f;

    invoke-direct {v1, p4, v0, v2, v3}, Lcom/oppo/statistics/b/f;-><init>(Ljava/lang/String;Lorg/json/JSONObject;J)V

    invoke-static {p0, v1}, Lcom/oppo/statistics/f/a/a;->a(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    const-string v2, "NearMeStatistics"

    invoke-static {v2, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;J)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/oppo/statistics/f/a;->e(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->m(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->l(Landroid/content/Context;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v8, p1, v4

    if-lez v8, :cond_0

    sub-long v4, p1, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_2

    sub-long v4, p1, v6

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/oppo/statistics/a/d;->d(Landroid/content/Context;Ljava/lang/String;JJ)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 6

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/oppo/statistics/a/d;->c:J

    sub-long v0, p4, v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x5460

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    const-wide/16 v2, -0x1

    sget-wide v4, Lcom/oppo/statistics/a/d;->c:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/oppo/statistics/e/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->o(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/2addr v1, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {p0, v1}, Lcom/oppo/statistics/e/d;->c(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oppo/statistics/e/d;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {p0, p2, p3}, Lcom/oppo/statistics/e/d;->d(Landroid/content/Context;J)V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 4

    invoke-static {p0, p2, p3}, Lcom/oppo/statistics/a/d;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/oppo/statistics/a/a;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/oppo/statistics/e/d;->e(Landroid/content/Context;J)V

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->o(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    int-to-long v2, v1

    const-string v1, "page"

    invoke-static {p0, v0, v2, v3, v1}, Lcom/oppo/statistics/a/d;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oppo/statistics/e/d;->c(Landroid/content/Context;I)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/oppo/statistics/e/d;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/oppo/statistics/e/d;->c(Landroid/content/Context;J)V

    invoke-static {p0, p1}, Lcom/oppo/statistics/e/d;->e(Landroid/content/Context;Ljava/lang/String;)V

    sput-wide p4, Lcom/oppo/statistics/a/d;->c:J

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {p1}, Lcom/oppo/statistics/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "NearMeStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/statistics/a/e;

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/oppo/statistics/a/e;-><init>(Lcom/oppo/statistics/a/d;Landroid/content/Context;Ljava/lang/String;JJI)V

    iget-object v1, p0, Lcom/oppo/statistics/a/d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "NearMeStatistics"

    const-string v1, "onPause() called without context."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {p1}, Lcom/oppo/statistics/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "NearMeStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oppo/statistics/a/e;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/oppo/statistics/a/e;-><init>(Lcom/oppo/statistics/a/d;Landroid/content/Context;Ljava/lang/String;JJI)V

    iget-object v1, p0, Lcom/oppo/statistics/a/d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "NearMeStatistics"

    const-string v1, "onPause() called without context."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
