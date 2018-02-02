.class Lcom/amap/api/mapcore2d/df$a;
.super Ljava/lang/Object;
.source "LogProcessor.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/dv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/df;

.field private b:Lcom/amap/api/mapcore2d/dp;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/df;Lcom/amap/api/mapcore2d/dp;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/amap/api/mapcore2d/df$a;->a:Lcom/amap/api/mapcore2d/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/amap/api/mapcore2d/df$a;->b:Lcom/amap/api/mapcore2d/dp;

    .line 296
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df$a;->b:Lcom/amap/api/mapcore2d/dp;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/df$a;->a:Lcom/amap/api/mapcore2d/df;

    .line 302
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/df;->b()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cz;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 301
    invoke-virtual {v0, p1, v1}, Lcom/amap/api/mapcore2d/dp;->b(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
