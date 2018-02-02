.class Lcom/amap/api/mapcore2d/b$4;
.super Lcom/amap/api/mapcore2d/by;
.source "AMapDelegateImpGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/b;->h(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b$4;->a:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/by;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/mapcore2d/aw;->a()Lcom/amap/api/mapcore2d/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/aw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/appmaptile?z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&lang=zh_cn&size=1&scale=1&style=6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
