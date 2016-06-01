.class public Lcom/oppo/statistics/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oppo/statistics/b/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/b/e;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/b/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/statistics/b/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/oppo/statistics/b/e;
    .locals 4

    new-instance v0, Lcom/oppo/statistics/b/e;

    invoke-direct {v0}, Lcom/oppo/statistics/b/e;-><init>()V

    invoke-static {p0}, Lcom/oppo/statistics/e/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/oppo/statistics/g/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/oppo/statistics/g/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/oppo/statistics/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/oppo/statistics/b/e;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/oppo/statistics/b/e;->c(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/e;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oppo/statistics/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/statistics/b/e;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
