.class Lcom/oneplus/camera/location/UILocationManagerImpl$5;
.super Ljava/lang/Object;
.source "UILocationManagerImpl.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/location/UILocationManagerImpl;->startLocationListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/location/UILocationManagerImpl;I)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    iput p2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    # getter for: Lcom/oneplus/camera/location/UILocationManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$600(Lcom/oneplus/camera/location/UILocationManagerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const v1, 0x453b8000    # 3000.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    iget v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->val$index:I

    # invokes: Lcom/oneplus/camera/location/UILocationManagerImpl;->onLocationChanged(ILandroid/location/Location;)V
    invoke-static {v0, v1, p1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$700(Lcom/oneplus/camera/location/UILocationManagerImpl;ILandroid/location/Location;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 266
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 262
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 258
    return-void
.end method
