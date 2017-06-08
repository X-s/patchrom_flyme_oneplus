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
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 122
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v4, :cond_0

    .line 125
    iget v3, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/settings_ex/IccLockSettings;->mPinCount:I
    invoke-static {v3}, Lcom/android/settings_ex/IccLockSettings;->access$002(I)I

    .line 129
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    :goto_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(ZI)V
    invoke-static {v3, v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$100(Lcom/android/settings_ex/IccLockSettings;ZI)V

    goto :goto_0

    .line 127
    :cond_0
    # setter for: Lcom/android/settings_ex/IccLockSettings;->mPinCount:I
    invoke-static {v5}, Lcom/android/settings_ex/IccLockSettings;->access$002(I)I

    goto :goto_1

    :cond_1
    move v1, v2

    .line 129
    goto :goto_2

    .line 132
    :pswitch_1
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v4, :cond_2

    .line 133
    iget v3, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/settings_ex/IccLockSettings;->mPinCount:I
    invoke-static {v3}, Lcom/android/settings_ex/IccLockSettings;->access$002(I)I

    .line 137
    :goto_3
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    :goto_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(ZI)V
    invoke-static {v3, v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$200(Lcom/android/settings_ex/IccLockSettings;ZI)V

    goto :goto_0

    .line 135
    :cond_2
    # setter for: Lcom/android/settings_ex/IccLockSettings;->mPinCount:I
    invoke-static {v5}, Lcom/android/settings_ex/IccLockSettings;->access$002(I)I

    goto :goto_3

    :cond_3
    move v1, v2

    .line 137
    goto :goto_4

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # invokes: Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$300(Lcom/android/settings_ex/IccLockSettings;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
