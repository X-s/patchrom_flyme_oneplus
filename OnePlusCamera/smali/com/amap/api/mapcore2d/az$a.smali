.class Lcom/amap/api/mapcore2d/az$a;
.super Ljava/lang/Object;
.source "MemoryTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Ljava/lang/String;

.field c:Z

.field d:J

.field e:I

.field f:J

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/bu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/amap/api/mapcore2d/az;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/az;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 321
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$a;->h:Lcom/amap/api/mapcore2d/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object v1, p0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    const-string/jumbo v0, ""

    .line 325
    iput-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->b:Ljava/lang/String;

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/az$a;->c:Z

    .line 328
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/az$a;->d:J

    const/4 v0, -0x1

    .line 330
    iput v0, p0, Lcom/amap/api/mapcore2d/az$a;->e:I

    .line 331
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/az$a;->f:J

    .line 332
    iput-object v1, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;

    .line 322
    return-void
.end method
