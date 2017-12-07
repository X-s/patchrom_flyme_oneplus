.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastScanSettings"
.end annotation


# instance fields
.field public backgroundScanActive:Z

.field public hwPnoScanActive:Z

.field public maxAps:I

.field public pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

.field public pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field public reportEvents:I

.field public reportNumScansThreshold:I

.field public reportPercentThreshold:I

.field public reportSingleScanFullResults:Z

.field public scanId:I

.field public singleScanActive:Z

.field public singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field public singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field public startTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    .line 858
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    .line 872
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    .line 836
    iput-wide p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->startTime:J

    .line 835
    return-void
.end method


# virtual methods
.method public setBackgroundScan(IIIII)V
    .locals 1
    .param p1, "scanId"    # I
    .param p2, "maxAps"    # I
    .param p3, "reportEvents"    # I
    .param p4, "reportNumScansThreshold"    # I
    .param p5, "reportPercentThreshold"    # I

    .prologue
    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    .line 850
    iput p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    .line 851
    iput p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->maxAps:I

    .line 852
    iput p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    .line 853
    iput p4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportNumScansThreshold:I

    .line 854
    iput p5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportPercentThreshold:I

    .line 848
    return-void
.end method

.method public setHwPnoScan([Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V
    .locals 1
    .param p1, "pnoNetworkList"    # [Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .param p2, "pnoScanEventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .prologue
    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    .line 880
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .line 881
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 878
    return-void
.end method

.method public setSingleScan(ZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V
    .locals 1
    .param p1, "reportSingleScanFullResults"    # Z
    .param p2, "singleScanFreqs"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .param p3, "singleScanEventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    .line 867
    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    .line 868
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 869
    iput-object p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 865
    return-void
.end method
