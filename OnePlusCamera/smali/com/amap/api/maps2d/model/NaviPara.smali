.class public Lcom/amap/api/maps2d/model/NaviPara;
.super Ljava/lang/Object;
.source "NaviPara.java"


# static fields
.field public static final DRIVING_AVOID_CONGESTION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_NO_HIGHWAY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_NO_HIGHWAY_AVOID_CONGESTION:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_NO_HIGHWAY_AVOID_SHORT_MONEY:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_SAVE_MONEY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_SAVE_MONEY_AVOID_CONGESTION:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_SHORT_DISTANCE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/amap/api/maps2d/model/NaviPara;->a:I

    return-void
.end method


# virtual methods
.method public getNaviStyle()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/amap/api/maps2d/model/NaviPara;->a:I

    return v0
.end method

.method public getTargetPoint()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/maps2d/model/NaviPara;->b:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public setNaviStyle(I)V
    .locals 1

    .prologue
    .line 86
    if-gez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x9

    .line 86
    if-ge p1, v0, :cond_0

    .line 87
    iput p1, p0, Lcom/amap/api/maps2d/model/NaviPara;->a:I

    goto :goto_0
.end method

.method public setTargetPoint(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amap/api/maps2d/model/NaviPara;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 78
    return-void
.end method
