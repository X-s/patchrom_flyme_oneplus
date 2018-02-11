.class final Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field private static final MSG_ACCESS_POINT_CHANGED:I = 0x2

.field private static final MSG_CONNECTED_CHANGED:I = 0x0

.field private static final MSG_PAUSE_SCANNING:I = 0x4

.field private static final MSG_RESUME_SCANNING:I = 0x3

.field private static final MSG_WIFI_STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/wifi/WifiTracker;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    .line 596
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 595
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get2(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 602
    return-void

    .line 604
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 600
    :cond_1
    :goto_0
    return-void

    .line 606
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get2(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;->onConnectedChanged()V

    goto :goto_0

    .line 609
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get2(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    goto :goto_0

    .line 612
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get2(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;->onAccessPointsChanged()V

    goto :goto_0

    .line 615
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->resume()V

    goto :goto_0

    .line 620
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
