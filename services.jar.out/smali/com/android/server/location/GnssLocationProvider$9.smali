.class Lcom/android/server/location/GnssLocationProvider$9;
.super Lcom/android/server/location/GnssMeasurementsProvider;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$9;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssMeasurementsProvider;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public isAvailableInPlatform()Z
    .locals 1

    .prologue
    .line 790
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap3()Z

    move-result v0

    return v0
.end method

.method protected isGpsEnabled()Z
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$9;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected registerWithService()Z
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$9;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap8(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v0

    return v0
.end method

.method protected unregisterFromService()V
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$9;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap10(Lcom/android/server/location/GnssLocationProvider;)Z

    .line 799
    return-void
.end method
