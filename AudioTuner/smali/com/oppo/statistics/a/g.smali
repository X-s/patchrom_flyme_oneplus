.class public Lcom/oppo/statistics/a/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    invoke-static {}, Lcom/oppo/statistics/g/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/oppo/statistics/g/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oppo/statistics/b/g;

    invoke-direct {v2, v1, v0, p1}, Lcom/oppo/statistics/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v2}, Lcom/oppo/statistics/f/a/a;->a(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V

    return-void
.end method
