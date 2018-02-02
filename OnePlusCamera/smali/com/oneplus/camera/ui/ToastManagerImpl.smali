.class final Lcom/oneplus/camera/ui/ToastManagerImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ToastManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/ToastManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;
    }
.end annotation


# static fields
.field private static final DURATION_TOAST:J = 0xbb8L

.field private static final MSG_HIDE_TOAST:I = 0x2711


# instance fields
.field private m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_OnScreenHintHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ToastManagerImpl;Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ToastManagerImpl;->hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 48
    const-string/jumbo v0, "Toast manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 46
    return-void
.end method

.method private hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->verifyAccess()V

    .line 74
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    if-eq v0, p1, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    .line 80
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    .line 70
    return-void
.end method

.method private showToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;I)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v3, p1, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->message:Ljava/lang/CharSequence;

    or-int/lit8 v5, p2, 0x8

    invoke-interface {v0, v3, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    .line 150
    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 154
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    .line 137
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 54
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 87
    return-void
.end method

.method protected onInitialize()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 103
    const-class v0, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 97
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/16 v1, 0x2711

    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl;->m_CurrentToastHandle:Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 109
    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "flags"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->verifyAccess()V

    .line 128
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ToastManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const/4 v1, 0x0

    return-object v1

    .line 130
    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;-><init>(Lcom/oneplus/camera/ui/ToastManagerImpl;Ljava/lang/CharSequence;)V

    .line 131
    .local v0, "handle":Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;
    invoke-direct {p0, v0, p2}, Lcom/oneplus/camera/ui/ToastManagerImpl;->showToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;I)V

    .line 132
    return-object v0
.end method
