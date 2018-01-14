.class Lcom/android/internal/os/BatteryStatsImpl$5;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 9872
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 9875
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-get1()Lcom/oem/os/IOemExService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 9877
    const-string/jumbo v1, "OEMExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 9876
    invoke-static {v1}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->-set0(Lcom/oem/os/IOemExService;)Lcom/oem/os/IOemExService;

    .line 9879
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-get1()Lcom/oem/os/IOemExService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9880
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-get1()Lcom/oem/os/IOemExService;

    move-result-object v1

    const-string/jumbo v2, "battery_reset"

    invoke-interface {v1, v2}, Lcom/oem/os/IOemExService;->dumpLightBugreport(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9873
    :cond_1
    :goto_0
    return-void

    .line 9882
    :catch_0
    move-exception v0

    .line 9883
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dumpLightBugreport failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
