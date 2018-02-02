.class public Lcom/amap/api/maps2d/AMapOptions;
.super Ljava/lang/Object;
.source "AMapOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/AMapOptionsCreator;

.field public static final LOGO_POSITION_BOTTOM_CENTER:I = 0x1

.field public static final LOGO_POSITION_BOTTOM_LEFT:I = 0x0

.field public static final LOGO_POSITION_BOTTOM_RIGHT:I = 0x2

.field public static final ZOOM_POSITION_RIGHT_BUTTOM:I = 0x0

.field public static final ZOOM_POSITION_RIGHT_CENTER:I = 0x1


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/amap/api/maps2d/model/CameraPosition;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/amap/api/maps2d/AMapOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/AMapOptions;->CREATOR:Lcom/amap/api/maps2d/AMapOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    .line 17
    iput-boolean v1, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    .line 18
    iput-boolean v1, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    .line 19
    iput-boolean v1, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    .line 21
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    .line 23
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    .line 24
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    .line 25
    iput v0, p0, Lcom/amap/api/maps2d/AMapOptions;->i:I

    .line 58
    return-void
.end method


# virtual methods
.method public camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 107
    return-object p0
.end method

.method public compassEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    .line 135
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 248
    return v0
.end method

.method public getCamera()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object v0
.end method

.method public getCompassEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLogoPosition()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/amap/api/maps2d/AMapOptions;->i:I

    return v0
.end method

.method public getMapType()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    return v0
.end method

.method public getScaleControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getScrollGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZOrderOnTop()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZoomControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public logoPosition(I)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/amap/api/maps2d/AMapOptions;->i:I

    .line 62
    return-object p0
.end method

.method public mapType(I)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    .line 94
    return-object p0
.end method

.method public scaleControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    .line 120
    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    .line 148
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 254
    iget v0, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    .line 255
    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    aput-boolean v2, v0, v1

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 259
    return-void
.end method

.method public zOrderOnTop(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    .line 75
    return-object p0
.end method

.method public zoomControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    .line 130
    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    .line 161
    return-object p0
.end method
