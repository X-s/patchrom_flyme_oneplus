.class Lcom/amap/api/mapcore2d/br$a;
.super Ljava/lang/Object;
.source "TileOverlayView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/br;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/br;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amap/api/mapcore2d/br$a;->a:Lcom/amap/api/mapcore2d/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/br;Lcom/amap/api/mapcore2d/br$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/br$a;-><init>(Lcom/amap/api/mapcore2d/br;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const-string/jumbo v1, "compare"

    .line 24
    check-cast p1, Lcom/amap/api/mapcore2d/aj;

    .line 25
    check-cast p2, Lcom/amap/api/mapcore2d/aj;

    .line 27
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 37
    return v0

    .line 27
    :cond_1
    if-eqz p2, :cond_0

    .line 28
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aj;->d()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/aj;->d()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_2
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aj;->d()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/aj;->d()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 31
    return v0

    .line 36
    :catch_0
    move-exception v0

    const-string/jumbo v2, "TileOverlayView"

    .line 35
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
