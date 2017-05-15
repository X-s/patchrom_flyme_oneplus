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


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    .line 619
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 620
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 624
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 626
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    # invokes: Lcom/android/settings_exlib/wifi/WifiTracker;->updateAccessPoints()V
    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$700(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    goto :goto_0

    .line 629
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/settings_exlib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$800(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 632
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    # invokes: Lcom/android/settings_exlib/wifi/WifiTracker;->handleResume()V
    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$900(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
