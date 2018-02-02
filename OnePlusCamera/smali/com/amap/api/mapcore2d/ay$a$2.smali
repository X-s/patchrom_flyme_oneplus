.class Lcom/amap/api/mapcore2d/ay$a$2;
.super Lcom/amap/api/mapcore2d/by;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ay$a;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/am;

.field final synthetic b:Lcom/amap/api/mapcore2d/ay$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ay$a;Lcom/amap/api/mapcore2d/am;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a$2;->b:Lcom/amap/api/mapcore2d/ay$a;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ay$a$2;->a:Lcom/amap/api/mapcore2d/am;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/by;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 743
    sget-object v0, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a$2;->a:Lcom/amap/api/mapcore2d/am;

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->h:Z

    .line 747
    invoke-static {}, Lcom/amap/api/mapcore2d/aw;->a()Lcom/amap/api/mapcore2d/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aw;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    .line 748
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    .line 749
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 750
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    sget v0, Lcom/amap/api/mapcore2d/p;->m:I

    if-eq v0, v6, :cond_2

    const-string/jumbo v0, "webrd"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$a$2;->b:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 747
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 743
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    const-string/jumbo v1, ""

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a$2;->a:Lcom/amap/api/mapcore2d/am;

    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/am;->h:Z

    .line 756
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 757
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 758
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 756
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "wprd"

    goto :goto_0
.end method
