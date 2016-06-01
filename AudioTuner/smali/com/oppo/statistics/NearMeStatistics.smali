.class public Lcom/oppo/statistics/NearMeStatistics;
.super Ljava/lang/Object;


# static fields
.field private static final EVENTID_PATTERN:Ljava/util/regex/Pattern;

.field public static final STATISTICS_CHARGETYPE_FREE:I = 0x0

.field public static final STATISTICS_CHARGETYPE_NOT_FREE:I = 0x1

.field public static final STATISTICS_OPAY_DEFAULT:I = 0x0

.field public static final STATISTICS_OPAY_POINT:I = 0x2

.field public static final STATISTICS_OPAY_TENPAY:I = 0x3

.field public static final STATISTICS_OPAY_YEEPAY:I = 0x1

.field private static sPageVisitAgent:Lcom/oppo/statistics/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oppo/statistics/a/d;

    invoke-direct {v0}, Lcom/oppo/statistics/a/d;-><init>()V

    sput-object v0, Lcom/oppo/statistics/NearMeStatistics;->sPageVisitAgent:Lcom/oppo/statistics/a/d;

    const-string v0, "^[a-zA-Z0-9\\_\\-]{1,64}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oppo/statistics/NearMeStatistics;->EVENTID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "NearMeStatistics"

    const-string v2, "EventID is null!"

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/oppo/statistics/NearMeStatistics;->EVENTID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "NearMeStatistics"

    const-string v2, "EventID format error!"

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_3

    :cond_2
    const-string v1, "NearMeStatistics"

    const-string v2, "EventTag format error!"

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x2710

    if-gt p2, v2, :cond_4

    if-ge p2, v1, :cond_5

    :cond_4
    const-string v1, "NearMeStatistics"

    const-string v2, "EventCount format error!"

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static onDebug(Z)V
    .locals 0

    invoke-static {p0}, Lcom/oppo/statistics/g/f;->a(Z)V

    return-void
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/oppo/statistics/a;

    invoke-direct {v0, p0}, Lcom/oppo/statistics/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/oppo/statistics/a;->a()V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const-string v0, ""

    invoke-static {p1, v0, v3}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, ""

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    const-string v0, ""

    invoke-static {p1, v0, p2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, ""

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    invoke-static {p1, p2, v3}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-static {p1, p2, p3}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/oppo/statistics/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/oppo/statistics/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    :cond_0
    return-void
.end method

.method public static onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    :cond_0
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/oppo/statistics/a/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/oppo/statistics/a/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/oppo/statistics/NearMeStatistics;->sPageVisitAgent:Lcom/oppo/statistics/a/d;

    invoke-virtual {v0, p0}, Lcom/oppo/statistics/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/oppo/statistics/NearMeStatistics;->sPageVisitAgent:Lcom/oppo/statistics/a/d;

    invoke-virtual {v0, p0}, Lcom/oppo/statistics/a/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static onServerConfig(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/oppo/statistics/a/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static onSpecialAppStart(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oppo/statistics/a/g;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static onUserAction(Landroid/content/Context;I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-static {v1, v0, v3}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, ""

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public static onUserAction(Landroid/content/Context;II)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-static {v1, v0, p2}, Lcom/oppo/statistics/NearMeStatistics;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, ""

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/oppo/statistics/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public static removeSsoID(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NearMeStatistics"

    const-string v1, "remove ssoid"

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->r(Landroid/content/Context;)V

    return-void
.end method

.method public static setSessionTimeoutSeconds(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "NearMeStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSession timeout is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    invoke-static {p0, p1}, Lcom/oppo/statistics/e/d;->d(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static setSsoID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NearMeStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSsoid ssoid is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "0"

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/oppo/statistics/e/d;->f(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearMeStatistics"

    invoke-static {v1, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static setUploadDelaySeconds(Landroid/content/Context;I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    invoke-static {p0, p1}, Lcom/oppo/statistics/e/d;->e(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
