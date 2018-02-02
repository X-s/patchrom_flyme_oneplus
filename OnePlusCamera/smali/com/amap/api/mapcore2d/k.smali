.class Lcom/amap/api/mapcore2d/k;
.super Ljava/lang/Object;
.source "CameraChangeFinishObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/k$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/k;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/amap/api/mapcore2d/k;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/k;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/k;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/k;->b:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/k;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/amap/api/mapcore2d/k;->a:Lcom/amap/api/mapcore2d/k;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/k$a;)V
    .locals 1

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    return-void

    .line 20
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/k$a;

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/k$a;->Q()V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/k$a;)V
    .locals 1

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
