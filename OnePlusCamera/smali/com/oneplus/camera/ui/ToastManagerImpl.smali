.class final Lcom/oneplus/camera/ui/ToastManagerImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ToastManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/ToastManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ToastManagerImpl$1;,
        Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;,
        Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;
    }
.end annotation


# static fields
.field private static final DURATION_TOAST:J = 0xbb8L

.field private static final MSG_SHOW_CURRENT_TOAST_AGAIN:I = 0x2710


# instance fields
.field private m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 107
    const-string v0, "Toast manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/ToastManagerImpl;Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ToastManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ToastManagerImpl;->hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    return-void
.end method

.method private hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->verifyAccess()V

    .line 133
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    if-eq v0, p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p1, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    goto :goto_0
.end method

.method private showToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 201
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    .line 204
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->updateToastLayout(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;Lcom/oneplus/base/Rotation;)V

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->showTime:J

    .line 207
    iget-object v0, p1, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateToastLayout(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;Lcom/oneplus/base/Rotation;)V
    .locals 11
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded",
            "ShowToast"
        }
    .end annotation

    .prologue
    const v10, 0x7f07005e

    const/4 v9, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p1, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->message:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 222
    .local v4, "toast":Landroid/widget/Toast;
    iput-object v4, p1, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->toast:Landroid/widget/Toast;

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 226
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V

    .line 229
    .local v1, "container":Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    .line 230
    .local v5, "toastView":Landroid/view/View;
    invoke-virtual {v1, v5}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->addView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 234
    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v6

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v7

    sub-int v2, v6, v7

    .line 235
    .local v2, "orientationDiff":I
    if-gez v2, :cond_1

    .line 236
    add-int/lit16 v2, v2, 0x168

    .line 237
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 238
    .local v3, "res":Landroid/content/res/Resources;
    sparse-switch v2, :sswitch_data_0

    .line 250
    const/16 v6, 0x51

    const v7, 0x7f07005f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v4, v6, v9, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 253
    :goto_1
    sget-object v6, Lcom/oneplus/camera/ui/ToastManagerImpl$1;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    const v6, 0x7f070061

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070063

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v5, v6, v9, v7, v9}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 241
    :sswitch_0
    const/16 v6, 0x15

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v4, v6, v7, v9}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 244
    :sswitch_1
    const/16 v6, 0x31

    invoke-virtual {v4}, Landroid/widget/Toast;->getYOffset()I

    move-result v7

    invoke-virtual {v4, v6, v9, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 247
    :sswitch_2
    const/16 v6, 0x13

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v4, v6, v7, v9}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 259
    :pswitch_1
    const v6, 0x7f070060

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070062

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v5, v6, v9, v7, v9}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto/16 :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 125
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->showToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 150
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 161
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 165
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    iget-wide v6, v3, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->showTime:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0xbb8

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    .line 166
    const/16 v1, 0x2710

    const/4 v5, 0x1

    const-wide/16 v6, 0x258

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iput-object v4, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    goto :goto_0
.end method

.method public showToast(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "flags"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->verifyAccess()V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ToastManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    .line 180
    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;-><init>(Lcom/oneplus/camera/ui/ToastManagerImpl;Ljava/lang/CharSequence;)V

    .line 181
    .local v0, "handle":Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->showToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    goto :goto_0
.end method
