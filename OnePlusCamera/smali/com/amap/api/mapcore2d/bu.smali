.class Lcom/amap/api/mapcore2d/bu;
.super Ljava/lang/Object;
.source "TrafSegment.java"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->b:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/amap/api/mapcore2d/bu;->a:I

    return v0
.end method
