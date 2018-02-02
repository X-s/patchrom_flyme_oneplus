.class Lcom/amap/api/mapcore2d/ed$1;
.super Lcom/amap/api/mapcore2d/em;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ee;

.field final synthetic b:Lcom/amap/api/mapcore2d/ef;

.field final synthetic c:Lcom/amap/api/mapcore2d/ed;


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ed$1;->c:Lcom/amap/api/mapcore2d/ed;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ed$1;->a:Lcom/amap/api/mapcore2d/ee;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->b(Lcom/amap/api/mapcore2d/ee;Z)Lcom/amap/api/mapcore2d/eg;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ed$1;->c:Lcom/amap/api/mapcore2d/ed;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ed$1;->b:Lcom/amap/api/mapcore2d/ef;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore2d/ed;->a(Lcom/amap/api/mapcore2d/ed;Lcom/amap/api/mapcore2d/eg;Lcom/amap/api/mapcore2d/ef;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ed$1;->c:Lcom/amap/api/mapcore2d/ed;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ed$1;->b:Lcom/amap/api/mapcore2d/ef;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore2d/ed;->a(Lcom/amap/api/mapcore2d/ed;Lcom/amap/api/mapcore2d/ck;Lcom/amap/api/mapcore2d/ef;)V

    goto :goto_0
.end method
