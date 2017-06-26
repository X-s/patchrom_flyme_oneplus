.class Lcom/android/settings_ex/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 126
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(ZI)V
    invoke-static {v3, v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$000(Lcom/android/settings_ex/IccLockSettings;ZI)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 131
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    :goto_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(ZI)V
    invoke-static {v3, v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$100(Lcom/android/settings_ex/IccLockSettings;ZI)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 139
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/IccLockSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iniState(Landroid/os/Bundle;Landroid/content/Context;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/IccLockSettings;->access$200(Lcom/android/settings_ex/IccLockSettings;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
