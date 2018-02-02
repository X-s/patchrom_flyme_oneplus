.class Lcom/amap/api/mapcore2d/as$a;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/amap/api/mapcore2d/ab;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;)I
    .locals 3

    .prologue
    .line 61
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 72
    return v0

    .line 61
    :cond_1
    if-eqz p2, :cond_0

    .line 62
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->r()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ab;->r()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 63
    return v0

    .line 64
    :cond_2
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->r()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ab;->r()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 65
    return v0

    .line 71
    :catch_0
    move-exception v0

    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "compare"

    .line 69
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/amap/api/mapcore2d/ab;

    check-cast p2, Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/as$a;->a(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;)I

    move-result v0

    return v0
.end method
