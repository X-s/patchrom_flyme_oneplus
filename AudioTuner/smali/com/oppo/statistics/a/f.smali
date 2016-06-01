.class public Lcom/oppo/statistics/a/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->g(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-static {p0, v0, v2, v3}, Lcom/oppo/statistics/f/a/d;->a(Landroid/content/Context;Ljava/lang/Integer;J)V

    :cond_0
    return-void
.end method
