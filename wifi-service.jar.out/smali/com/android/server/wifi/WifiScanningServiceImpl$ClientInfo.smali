.class Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0x10


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field mHotlistSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field mScanPeriods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mScanSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mScanWorkReported:Z

.field mSignificantWifiHandlers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I

.field private final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;ILcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 2
    .param p2, "uid"    # I
    .param p3, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p4, "m"    # Landroid/os/Messenger;

    .prologue
    const/4 v1, 0x4

    .line 563
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanPeriods:Ljava/util/HashMap;

    .line 794
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    .line 849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    .line 564
    iput-object p3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    .line 565
    iput-object p4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 566
    iput p2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    .line 567
    new-instance v0, Landroid/os/WorkSource;

    const-string v1, "WifiScanningService"

    invoke-direct {v0, p2, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    .line 569
    return-void
.end method


# virtual methods
.method addHostlistSettings(Landroid/net/wifi/WifiScanner$HotlistSettings;I)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p2, "handler"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    return-void
.end method

.method addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "id"    # I

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanWorkUpdate()V

    .line 654
    return-void
.end method

.method addSignificantWifiChange(I)V
    .locals 2
    .param p1, "handler"    # I

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 852
    return-void
.end method

.method cleanup()V
    .locals 4

    .prologue
    .line 885
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 886
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    .line 888
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 889
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 891
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 892
    .local v0, "handler":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    goto :goto_0

    .line 895
    .end local v0    # "handler":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully stopped all requests for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    .line 897
    return-void
.end method

.method deliverScanResults(I[Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "handler"    # I
    .param p2, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    .line 755
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-direct {v0, p2}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 757
    .local v0, "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 758
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 636
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 638
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    const-string v4, "ScanId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 641
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 645
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method getCsph()I
    .locals 7

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "csph":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 600
    .local v4, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-nez v5, :cond_1

    const/4 v2, 0x0

    .line 601
    .local v2, "num_channels":I
    :goto_1
    if-nez v2, :cond_0

    iget v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-eqz v5, :cond_0

    .line 602
    iget v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-static {v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$2000(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v5

    array-length v2, v5

    .line 605
    :cond_0
    iget v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 606
    .local v3, "scans_per_Hour":I
    :goto_2
    mul-int v5, v2, v3

    add-int/2addr v0, v5

    .line 607
    goto :goto_0

    .line 600
    .end local v2    # "num_channels":I
    .end local v3    # "scans_per_Hour":I
    :cond_1
    iget-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v5

    goto :goto_1

    .line 605
    .restart local v2    # "num_channels":I
    :cond_2
    const v5, 0x36ee80

    iget v6, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    div-int v3, v5, v6

    goto :goto_2

    .line 609
    .end local v2    # "num_channels":I
    .end local v4    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_3
    return v0
.end method

.method getHotlistSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getScanSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getScans()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method getWifiChangeHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    return-object v0
.end method

.method removeAllScanRequests()V
    .locals 6

    .prologue
    .line 666
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 667
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 669
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 670
    .local v2, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const-string v3, "WifiScanningService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending scan removed, handler="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", period="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 674
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v2    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    return-void
.end method

.method removeHostlistSettings(I)V
    .locals 2
    .param p1, "handler"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    return-void
.end method

.method removeScanRequest(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 658
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanWorkUpdate()V

    .line 663
    return-void
.end method

.method removeSignificantWifiChange(I)V
    .locals 2
    .param p1, "handler"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 856
    return-void
.end method

.method reportBatchedScanStart()V
    .locals 4

    .prologue
    .line 572
    iget v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    if-nez v2, :cond_0

    .line 583
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getCsph()I

    move-result v0

    .line 578
    .local v0, "csph":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1800(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v2, v3, v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "started scanning for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", csph = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to report scan work: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->logw(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportBatchedScanStop()V
    .locals 3

    .prologue
    .line 586
    iget v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    if-nez v1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 590
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1800(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopped scanning for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to cleanup scan work: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->logw(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportFullScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 12
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 761
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 762
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 763
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 764
    .local v3, "handler":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 765
    .local v8, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v2, v8, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 766
    .local v2, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v9, v8, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v9, :cond_1

    if-eqz v2, :cond_1

    array-length v9, v2

    if-nez v9, :cond_2

    .line 768
    :cond_1
    iget v9, v8, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$2000(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v2

    .line 770
    :cond_2
    move-object v0, v2

    .local v0, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v0, v4

    .line 771
    .local v1, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v9, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    iget v10, p1, Landroid/net/wifi/ScanResult;->frequency:I

    if-ne v9, v10, :cond_3

    .line 772
    new-instance v7, Landroid/net/wifi/ScanResult;

    invoke-direct {v7, p1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 774
    .local v7, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v9, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v9}, [Landroid/net/wifi/ScanResult$InformationElement;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v9, v7, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 775
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v10, 0x27014

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v3, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 770
    .end local v7    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 780
    .end local v0    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v1    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v2    # "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v3    # "handler":I
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_4
    return-void
.end method

.method reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V
    .locals 21
    .param p1, "what"    # I
    .param p2, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 812
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 813
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 814
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 815
    .local v7, "handler":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 816
    .local v18, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v14, 0x0

    .line 817
    .local v14, "num_results":I
    move-object/from16 v4, p2

    .local v4, "arr$":[Landroid/net/wifi/ScanResult;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v4    # "arr$":[Landroid/net/wifi/ScanResult;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_2

    aget-object v16, v4, v9

    .line 818
    .local v16, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .local v5, "arr$":[Landroid/net/wifi/WifiScanner$BssidInfo;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v13, :cond_0

    aget-object v3, v5, v8

    .line 819
    .local v3, "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 820
    add-int/lit8 v14, v14, 0x1

    .line 817
    .end local v3    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_1

    .line 818
    .end local v9    # "i$":I
    .restart local v3    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .restart local v8    # "i$":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 826
    .end local v3    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v5    # "arr$":[Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v8    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "result":Landroid/net/wifi/ScanResult;
    .restart local v9    # "i$":I
    :cond_2
    if-nez v14, :cond_4

    .line 847
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v7    # "handler":I
    .end local v9    # "i$":I
    .end local v14    # "num_results":I
    .end local v18    # "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_3
    return-void

    .line 831
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .restart local v7    # "handler":I
    .restart local v9    # "i$":I
    .restart local v14    # "num_results":I
    .restart local v18    # "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_4
    new-array v0, v14, [Landroid/net/wifi/ScanResult;

    move-object/from16 v17, v0

    .line 832
    .local v17, "results2":[Landroid/net/wifi/ScanResult;
    const/4 v10, 0x0

    .line 833
    .local v10, "index":I
    move-object/from16 v4, p2

    .restart local v4    # "arr$":[Landroid/net/wifi/ScanResult;
    array-length v12, v4

    .restart local v12    # "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    move v9, v8

    .end local v4    # "arr$":[Landroid/net/wifi/ScanResult;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .restart local v9    # "i$":I
    :goto_3
    if-ge v9, v12, :cond_7

    aget-object v16, v4, v9

    .line 834
    .restart local v16    # "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .restart local v5    # "arr$":[Landroid/net/wifi/WifiScanner$BssidInfo;
    array-length v13, v5

    .restart local v13    # "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_4
    if-ge v8, v13, :cond_6

    aget-object v3, v5, v8

    .line 835
    .restart local v3    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 836
    aput-object v16, v17, v10

    .line 837
    add-int/lit8 v10, v10, 0x1

    .line 834
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 833
    .end local v3    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_6
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_3

    .line 842
    .end local v5    # "arr$":[Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v13    # "len$":I
    .end local v16    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    new-instance v15, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 845
    .local v15, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v7, v15}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V
    .locals 4
    .param p1, "handler"    # I
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "newPeriodInMs"    # I

    .prologue
    .line 783
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanPeriods:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 784
    .local v1, "prevPeriodObject":Ljava/lang/Integer;
    iget v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 785
    .local v0, "prevPeriodInMs":I
    if-eqz v1, :cond_0

    .line 786
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 789
    :cond_0
    if-eq v0, p3, :cond_1

    .line 790
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27013

    invoke-virtual {v2, v3, p3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 792
    :cond_1
    return-void
.end method

.method reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    .line 685
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 686
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 688
    .local v0, "handler":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;I)V

    goto :goto_0

    .line 690
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;I)V
    .locals 26
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "handler"    # I

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 694
    .local v22, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 695
    .local v10, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    move/from16 v23, v0

    if-nez v23, :cond_0

    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 697
    :cond_0
    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    move/from16 v23, v0

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$2000(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v10

    .line 701
    :cond_1
    const/16 v18, 0x0

    .line 702
    .local v18, "num_results":I
    move-object/from16 v5, p1

    .local v5, "arr$":[Landroid/net/wifi/WifiScanner$ScanData;
    array-length v15, v5

    .local v15, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v13, v11

    .end local v5    # "arr$":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v11    # "i$":I
    .end local v15    # "len$":I
    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_6

    aget-object v19, v5, v13

    .line 703
    .local v19, "result":Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v9, 0x0

    .line 704
    .local v9, "copyScanData":Z
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v6

    .local v6, "arr$":[Landroid/net/wifi/ScanResult;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .end local v13    # "i$":I
    .restart local v11    # "i$":I
    move v12, v11

    .end local v6    # "arr$":[Landroid/net/wifi/ScanResult;
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .local v12, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    aget-object v21, v6, v12

    .line 705
    .local v21, "scanResult":Landroid/net/wifi/ScanResult;
    move-object v7, v10

    .local v7, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v0, v7

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    aget-object v8, v7, v11

    .line 706
    .local v8, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v0, v8, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 707
    const/4 v9, 0x1

    .line 711
    .end local v8    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_2
    if-eqz v9, :cond_5

    .line 712
    add-int/lit8 v18, v18, 0x1

    .line 702
    .end local v7    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_3
    add-int/lit8 v11, v13, 0x1

    .restart local v11    # "i$":I
    move v13, v11

    .end local v11    # "i$":I
    .restart local v13    # "i$":I
    goto :goto_0

    .line 705
    .end local v13    # "i$":I
    .restart local v7    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v8    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v11    # "i$":I
    .restart local v17    # "len$":I
    .restart local v21    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 704
    .end local v8    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_5
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_1

    .line 718
    .end local v7    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v9    # "copyScanData":Z
    .end local v12    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    .end local v21    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v13    # "i$":I
    :cond_6
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "results = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", num_results = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    .line 720
    move/from16 v0, v18

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ScanData;

    move-object/from16 v20, v0

    .line 721
    .local v20, "results2":[Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v14, 0x0

    .line 722
    .local v14, "index":I
    move-object/from16 v5, p1

    .restart local v5    # "arr$":[Landroid/net/wifi/WifiScanner$ScanData;
    array-length v15, v5

    .restart local v15    # "len$":I
    const/4 v11, 0x0

    .end local v13    # "i$":I
    .restart local v11    # "i$":I
    move v13, v11

    .end local v5    # "arr$":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v11    # "i$":I
    .end local v15    # "len$":I
    .restart local v13    # "i$":I
    :goto_3
    if-ge v13, v15, :cond_c

    aget-object v19, v5, v13

    .line 723
    .restart local v19    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v9, 0x0

    .line 724
    .restart local v9    # "copyScanData":Z
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v6

    .restart local v6    # "arr$":[Landroid/net/wifi/ScanResult;
    array-length v0, v6

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v11, 0x0

    .end local v13    # "i$":I
    .restart local v11    # "i$":I
    move v12, v11

    .end local v6    # "arr$":[Landroid/net/wifi/ScanResult;
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .restart local v12    # "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v12, v0, :cond_8

    aget-object v21, v6, v12

    .line 725
    .restart local v21    # "scanResult":Landroid/net/wifi/ScanResult;
    move-object v7, v10

    .restart local v7    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v0, v7

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_5
    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    aget-object v8, v7, v11

    .line 726
    .restart local v8    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v0, v8, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 727
    const/4 v9, 0x1

    .line 731
    .end local v8    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_7
    if-eqz v9, :cond_b

    .line 736
    .end local v7    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_8
    if-eqz v9, :cond_9

    .line 740
    new-instance v23, Landroid/net/wifi/WifiScanner$ScanData;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(Landroid/net/wifi/WifiScanner$ScanData;)V

    aput-object v23, v20, v14

    .line 741
    add-int/lit8 v14, v14, 0x1

    .line 722
    :cond_9
    add-int/lit8 v11, v13, 0x1

    .restart local v11    # "i$":I
    move v13, v11

    .end local v11    # "i$":I
    .restart local v13    # "i$":I
    goto :goto_3

    .line 725
    .end local v13    # "i$":I
    .restart local v7    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v8    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v11    # "i$":I
    .restart local v17    # "len$":I
    .restart local v21    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 724
    .end local v8    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_b
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_4

    .line 745
    .end local v7    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v9    # "copyScanData":Z
    .end local v12    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    .end local v21    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v13    # "i$":I
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "delivering results, num = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->deliverScanResults(I[Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 748
    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    move/from16 v23, v0

    if-nez v23, :cond_d

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$400(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v23

    const v24, 0x2710a

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, p2

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 752
    :cond_d
    return-void
.end method

.method reportScanWorkUpdate()V
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStop()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStart()V

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 621
    :cond_1
    return-void
.end method

.method reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 863
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v2, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 865
    .local v2, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 866
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 868
    .local v0, "handler":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x2700f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 871
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 874
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v2, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 876
    .local v2, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 877
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 878
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 879
    .local v0, "handler":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x27010

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 882
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "mChannel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    const-string v1, "mMessenger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
