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
    .line 124
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 127
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(Ljava/lang/Throwable;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/IccLockSettings;->access$000(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(Ljava/lang/Throwable;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/IccLockSettings;->access$100(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # invokes: Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$200(Lcom/android/settings_ex/IccLockSettings;)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
