.class final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifierHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 668
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 669
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 673
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 689
    :goto_0
    return-void

    .line 675
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendUserActivity()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$500(Lcom/android/server/power/Notifier;)V

    goto :goto_0

    .line 679
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendNextBroadcast()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$400(Lcom/android/server/power/Notifier;)V

    goto :goto_0

    .line 683
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$600(Lcom/android/server/power/Notifier;)V

    goto :goto_0

    .line 686
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$700(Lcom/android/server/power/Notifier;)V

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
