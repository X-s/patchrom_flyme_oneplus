.class public Lcom/oppo/statistics/g/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NearMeStatistics"

    const-string v2, "ssoid not set."

    invoke-static {v1, v2}, Lcom/oppo/statistics/g/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
