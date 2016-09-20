.class public Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;
.super Ljava/lang/Object;
.source "UILocationManagerImpl.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/location/UILocationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OPAMapLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 396
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 409
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 410
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const v1, 0x453b8000    # 3000.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    # getter for: Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$800(Lcom/oneplus/camera/location/UILocationManagerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAmap onLocationChanged() - Use location : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    sget-object v1, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->AMAP:Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;

    invoke-virtual {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl$LocationProvier;->ordinal()I

    move-result v1

    # invokes: Lcom/oneplus/camera/location/UILocationManagerImpl;->onLocationChanged(ILandroid/location/Location;)V
    invoke-static {v0, v1, p1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$700(Lcom/oneplus/camera/location/UILocationManagerImpl;ILandroid/location/Location;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$OPAMapLocationListener;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    # getter for: Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$900(Lcom/oneplus/camera/location/UILocationManagerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 405
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 402
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 399
    return-void
.end method
