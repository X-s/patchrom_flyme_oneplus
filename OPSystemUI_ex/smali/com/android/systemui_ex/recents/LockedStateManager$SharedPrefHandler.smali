.class Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;
.super Landroid/os/Handler;
.source "LockedStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/LockedStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPrefHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/LockedStateManager;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/LockedStateManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;->this$0:Lcom/android/systemui_ex/recents/LockedStateManager;

    .line 53
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "taskId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "taskId":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;->this$0:Lcom/android/systemui_ex/recents/LockedStateManager;

    # invokes: Lcom/android/systemui_ex/recents/LockedStateManager;->initSharedPref()V
    invoke-static {v3}, Lcom/android/systemui_ex/recents/LockedStateManager;->access$000(Lcom/android/systemui_ex/recents/LockedStateManager;)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;->this$0:Lcom/android/systemui_ex/recents/LockedStateManager;

    # invokes: Lcom/android/systemui_ex/recents/LockedStateManager;->writeToSharedPref(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v2}, Lcom/android/systemui_ex/recents/LockedStateManager;->access$100(Lcom/android/systemui_ex/recents/LockedStateManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;->this$0:Lcom/android/systemui_ex/recents/LockedStateManager;

    # invokes: Lcom/android/systemui_ex/recents/LockedStateManager;->removeFromSharedPref(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/systemui_ex/recents/LockedStateManager;->access$200(Lcom/android/systemui_ex/recents/LockedStateManager;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
