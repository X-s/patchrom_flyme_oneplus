.class public Lcom/oppo/statistics/c/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oppo/statistics/c/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_3

    const-string v3, "NearMeStatistics"

    const-string v4, "upload failed,sleep 5s and retry."

    invoke-static {v3, v4}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-ne v3, v2, :cond_4

    const-string v3, "NearMeStatistics"

    const-string v4, "upload failed,sleep 10s and retry."

    invoke-static {v3, v4}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x2710

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "NearMeStatistics"

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v3, v2, :cond_2

    :try_start_1
    const-string v0, "NearMeStatistics"

    const-string v2, "upload failed,return."

    invoke-static {v0, v2}, Lcom/oppo/statistics/g/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "NearMeStatistics"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/statistics/g/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method
