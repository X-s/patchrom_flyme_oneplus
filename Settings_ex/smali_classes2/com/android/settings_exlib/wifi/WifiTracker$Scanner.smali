.class Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Scanner"
.end annotation


# static fields
.field static final MSG_SCAN:I


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings_exlib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/wifi/WifiTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 668
    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->removeMessages(I)V

    .line 681
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->sendEmptyMessage(I)Z

    .line 679
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 696
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get4(Lcom/android/settings_exlib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    iput v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 706
    :cond_1
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 695
    return-void

    .line 699
    :cond_2
    iget v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 700
    iput v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 701
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get1(Lcom/android/settings_exlib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 702
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get1(Lcom/android/settings_exlib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_fail_to_scan:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 704
    :cond_3
    return-void
.end method

.method isScanning()Z
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 685
    iput v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->removeMessages(I)V

    .line 684
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 674
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->sendEmptyMessage(I)Z

    .line 673
    :cond_0
    return-void
.end method
