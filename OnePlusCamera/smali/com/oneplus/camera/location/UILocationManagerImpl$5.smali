.class Lcom/oneplus/camera/location/UILocationManagerImpl$5;
.super Ljava/lang/Object;
.source "UILocationManagerImpl.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/location/UILocationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-get0(Lcom/oneplus/camera/location/UILocationManagerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLocationChanged() - "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, ", time: "

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, " ms, elapsed: "

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string/jumbo v3, " ns"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const v1, 0x453b8000    # 3000.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 151
    const-string/jumbo v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$5;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-wrap3(Lcom/oneplus/camera/location/UILocationManagerImpl;Landroid/location/Location;)V

    .line 146
    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 162
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 167
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 172
    return-void
.end method
