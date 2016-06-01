.class public Lcom/oppo/statistics/f/b;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V
    .locals 8

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->t(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/oppo/statistics/f/b;->a:J

    invoke-interface {p1}, Lcom/oppo/statistics/b/h;->d()I

    move-result v0

    invoke-static {p0, v0}, Lcom/oppo/statistics/f/a;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NearMeStatistics"

    const-string v2, "uploadRecord:upload timely."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-wide v2, Lcom/oppo/statistics/f/b;->a:J

    invoke-static {p0, v0, v2, v3}, Lcom/oppo/statistics/f/a/d;->a(Landroid/content/Context;Ljava/lang/Integer;J)V

    :cond_0
    invoke-static {p0}, Lcom/oppo/statistics/e/d;->j(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {p0}, Lcom/oppo/statistics/f/a;->a(Landroid/content/Context;)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    const-string v0, "NearMeStatistics"

    const-string v1, "uploadRecord:upload gap."

    invoke-static {v0, v1}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, v3}, Lcom/oppo/statistics/e/d;->b(Landroid/content/Context;J)V

    invoke-static {p0}, Lcom/oppo/statistics/f/a;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sget-wide v2, Lcom/oppo/statistics/f/b;->a:J

    invoke-static {p0, v0, v2, v3}, Lcom/oppo/statistics/f/b;->a(Landroid/content/Context;Ljava/util/List;J)V

    invoke-static {p0}, Lcom/oppo/statistics/f/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sget-wide v2, Lcom/oppo/statistics/f/b;->a:J

    invoke-static {p0, v0, v2, v3}, Lcom/oppo/statistics/f/b;->a(Landroid/content/Context;Ljava/util/List;J)V

    :cond_1
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oppo/statistics/f/b;->a:J

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;J)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p0, v0, p2, p3}, Lcom/oppo/statistics/f/a/d;->a(Landroid/content/Context;Ljava/lang/Integer;J)V

    goto :goto_0
.end method
