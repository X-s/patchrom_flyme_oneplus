.class public Lcom/oppo/statistics/a/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 2

    invoke-static {}, Lcom/oppo/statistics/g/j;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/oppo/statistics/b/i;

    invoke-direct {v1, p1, v0, p2}, Lcom/oppo/statistics/b/i;-><init>(ILjava/lang/String;I)V

    invoke-static {p0, v1}, Lcom/oppo/statistics/f/a/a;->a(Landroid/content/Context;Lcom/oppo/statistics/b/h;)V

    return-void
.end method
