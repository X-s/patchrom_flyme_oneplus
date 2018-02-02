.class Lcom/amap/api/mapcore2d/db$a;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/amap/api/mapcore2d/db$a;->a:Landroid/content/Context;

    .line 289
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/db$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cz;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogNetListener"

    const-string/jumbo v2, "onNetCompleted"

    .line 297
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
