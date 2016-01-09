.class Lcom/android/server/OemExService$OemHander;
.super Landroid/os/Handler;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemHander"
.end annotation


# static fields
.field private static final MSG_BOOTCOMPLETE:I = 0x3

.field private static final MSG_DELAY_COVER:I = 0x2

.field private static final MSG_INTERACTIVE_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method public constructor <init>(Lcom/android/server/OemExService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/server/OemExService$OemHander;->this$0:Lcom/android/server/OemExService;

    .line 651
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 652
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 656
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 669
    :goto_0
    return-void

    .line 659
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/OemExService$OemHander;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$1100(Lcom/android/server/OemExService;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    goto :goto_0

    .line 663
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "threeKey":Landroid/content/Intent;
    const-string v1, "switch_state"

    sget-object v2, Lcom/android/server/OemExService;->switch_state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/android/server/OemExService$OemHander;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
