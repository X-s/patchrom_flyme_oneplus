.class public Lcom/oppo/statistics/c/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/statistics/b/e;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "NearMeStatistics"

    const-string v2, "updateServerConfig start."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/oppo/statistics/c/b;->b(Landroid/content/Context;Lcom/oppo/statistics/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/oppo/statistics/c/c;->b(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3ea

    if-ne v3, v2, :cond_2

    invoke-static {v1}, Lcom/oppo/statistics/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2}, Lcom/oppo/statistics/c/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NearMeStatistics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateServerConfig get response is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2}, Lcom/oppo/statistics/c/b;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/oppo/statistics/c/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/oppo/statistics/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/statistics/b/g;)Z
    .locals 3

    const-string v0, "NearMeStatistics"

    const-string v1, "uploadSpecialAppStart start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/oppo/statistics/d/b;->a(Landroid/content/Context;Lcom/oppo/statistics/b/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    invoke-static {p0, v2, v1}, Lcom/oppo/statistics/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/oppo/statistics/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v1, "NearMeStatistics"

    const-string v2, "uploadSpecialAppStart finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "NearMeStatistics"

    const-string v2, "uploadAppLog start."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/oppo/statistics/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/oppo/statistics/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v1, "NearMeStatistics"

    const-string v2, "uploadAppLog finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 3

    const-string v0, "NearMeStatistics"

    const-string v1, "uploadAppStart start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/oppo/statistics/d/b;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    invoke-static {p0, v2, v1}, Lcom/oppo/statistics/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/oppo/statistics/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v1, "NearMeStatistics"

    const-string v2, "uploadAppStart finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static b(Landroid/content/Context;Lcom/oppo/statistics/b/e;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/oppo/statistics/d/b;->a(Landroid/content/Context;Lcom/oppo/statistics/b/e;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p0, v1, v0}, Lcom/oppo/statistics/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "NearMeStatistics"

    const-string v1, "uploadPageVisit start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Lcom/oppo/statistics/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/oppo/statistics/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v1, "NearMeStatistics"

    const-string v2, "uploadPageVisit finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)Z
    .locals 3

    const-string v0, "NearMeStatistics"

    const-string v1, "uploadUserAction start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/oppo/statistics/d/b;->b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    invoke-static {p0, v2, v1}, Lcom/oppo/statistics/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/oppo/statistics/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v1, "NearMeStatistics"

    const-string v2, "uploadUserAction finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "NearMeStatistics"

    const-string v1, "uploadException start."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v1, p1}, Lcom/oppo/statistics/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/oppo/statistics/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v1, "NearMeStatistics"

    const-string v2, "uploadException finish."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/oppo/statistics/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "uploadPeriod"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "uploadStrategy"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "needlessApp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appPauseTimeout"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v2}, Lcom/oppo/statistics/e/d;->a(Landroid/content/Context;I)V

    invoke-static {p0, v3}, Lcom/oppo/statistics/e/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/oppo/statistics/e/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/oppo/statistics/e/d;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "NearMeStatistics"

    invoke-static {v2, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
