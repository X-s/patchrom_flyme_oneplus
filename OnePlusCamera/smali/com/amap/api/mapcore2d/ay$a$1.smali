.class Lcom/amap/api/mapcore2d/ay$a$1;
.super Lcom/amap/api/mapcore2d/by;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ay$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ay$a;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a$1;->a:Lcom/amap/api/mapcore2d/ay$a;

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

    .line 663
    sget-object v0, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a$1;->a:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->h:Z

    .line 667
    invoke-static {}, Lcom/amap/api/mapcore2d/aw;->a()Lcom/amap/api/mapcore2d/aw;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aw;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    .line 669
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    .line 670
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    .line 671
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    sget v0, Lcom/amap/api/mapcore2d/p;->m:I

    if-eq v0, v6, :cond_2

    const-string/jumbo v0, "webrd"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$a$1;->a:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 667
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 663
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    const-string/jumbo v1, ""

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a$1;->a:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/am;->h:Z

    .line 677
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 678
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 679
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 677
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "wprd"

    goto :goto_0
.end method
