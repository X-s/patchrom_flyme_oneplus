.class public Lcom/amap/api/mapcore2d/at$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapOverlayViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/amap/api/maps2d/model/LatLng;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IILcom/amap/api/maps2d/model/LatLng;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/amap/api/mapcore2d/at$a;->a:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amap/api/mapcore2d/at$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 44
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->c:I

    .line 45
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->d:I

    const/16 v0, 0x33

    .line 46
    iput v0, p0, Lcom/amap/api/mapcore2d/at$a;->e:I

    .line 55
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->a:I

    .line 56
    iput-object p3, p0, Lcom/amap/api/mapcore2d/at$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 57
    iput p4, p0, Lcom/amap/api/mapcore2d/at$a;->c:I

    .line 58
    iput p5, p0, Lcom/amap/api/mapcore2d/at$a;->d:I

    .line 59
    iput p6, p0, Lcom/amap/api/mapcore2d/at$a;->e:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/amap/api/mapcore2d/at$a;->a:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amap/api/mapcore2d/at$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 44
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->c:I

    .line 45
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->d:I

    const/16 v0, 0x33

    .line 46
    iput v0, p0, Lcom/amap/api/mapcore2d/at$a;->e:I

    .line 75
    return-void
.end method
