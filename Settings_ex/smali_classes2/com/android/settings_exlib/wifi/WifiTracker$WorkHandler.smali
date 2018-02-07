.class final Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_RESUME:I = 0x2

.field private static final MSG_UPDATE_ACCESS_POINTS:I = 0x0

.field private static final MSG_UPDATE_NETWORK_INFO:I = 0x1

.field private static final MSG_UPDATE_WIFI_STATE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/wifi/WifiTracker;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    .line 631
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 630
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 636
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 638
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-wrap1(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    goto :goto_0

    .line 641
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-wrap2(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 644
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-wrap0(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    goto :goto_0

    .line 647
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->resume()V

    .line 660
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get3(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0, v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->-set0(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 655
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0, v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->-set1(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 656
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_1

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
