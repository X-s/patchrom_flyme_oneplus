.class public abstract Lcom/oneplus/camera/ModeUI;
.super Lcom/oneplus/camera/UIComponent;
.source "ModeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ModeUI$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TController:",
        "Lcom/oneplus/camera/ModeController",
        "<*>;>",
        "Lcom/oneplus/camera/UIComponent;"
    }
.end annotation


# instance fields
.field private m_Controller:Lcom/oneplus/camera/ModeController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTController;"
        }
    .end annotation
.end field

.field private final m_ControllerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TTController;>;"
        }
    .end annotation
.end field

.field private final m_ControllerSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/component/ComponentSearchCallback",
            "<TTController;>;"
        }
    .end annotation
.end field

.field private m_EnterFlags:I

.field private m_IsEntered:Z


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ModeUI;Lcom/oneplus/camera/ModeController;)V
    .locals 0
    .param p1, "controller"    # Lcom/oneplus/camera/ModeController;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ModeUI;->onControllerFound(Lcom/oneplus/camera/ModeController;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/camera/CameraActivity;",
            "Ljava/lang/Class",
            "<+TTController;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    .local p3, "controllerType":Ljava/lang/Class;, "Ljava/lang/Class<+TTController;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 22
    new-instance v0, Lcom/oneplus/camera/ModeUI$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ModeUI$1;-><init>(Lcom/oneplus/camera/ModeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ModeUI;->m_ControllerSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;

    .line 41
    if-nez p3, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No controller type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p3, p0, Lcom/oneplus/camera/ModeUI;->m_ControllerClass:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method private onControllerFound(Lcom/oneplus/camera/ModeController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTController;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    .local p1, "controller":Lcom/oneplus/camera/ModeController;, "TTController;"
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeUI;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onControllerFound() - Component is not running"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1, p0}, Lcom/oneplus/camera/ModeController;->link(Lcom/oneplus/base/component/Component;)V

    .line 165
    iput-object p1, p0, Lcom/oneplus/camera/ModeUI;->m_Controller:Lcom/oneplus/camera/ModeController;

    .line 166
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ModeUI;->onControllerLinked(Lcom/oneplus/camera/ModeController;)V

    .line 157
    return-void
.end method


# virtual methods
.method public final enter(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeUI;->verifyAccess()V

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeUI;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enter() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v3

    .line 61
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/ModeUI;->m_IsEntered:Z

    if-eqz v1, :cond_1

    .line 62
    return v4

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enter()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enter() - Fail to enter mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return v3

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enter() - Fail to enter mode"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return v3

    .line 82
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    iput-boolean v4, p0, Lcom/oneplus/camera/ModeUI;->m_IsEntered:Z

    .line 83
    return v4
.end method

.method public final exit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 94
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeUI;->verifyAccess()V

    .line 95
    iget-boolean v1, p0, Lcom/oneplus/camera/ModeUI;->m_IsEntered:Z

    if-nez v1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "exit()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/camera/ModeUI;->m_IsEntered:Z

    .line 91
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "exit() - Error occurred while exiting mode"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final getController()Lcom/oneplus/camera/ModeController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTController;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->m_Controller:Lcom/oneplus/camera/ModeController;

    return-object v0
.end method

.method protected final isControllerLinked()Z
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->m_Controller:Lcom/oneplus/camera/ModeController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isEntered()Z
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    iget-boolean v0, p0, Lcom/oneplus/camera/ModeUI;->m_IsEntered:Z

    return v0
.end method

.method protected onCameraThreadStarted()V
    .locals 3

    .prologue
    .line 150
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onCameraThreadStarted()V

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeUI;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ModeUI;->m_ControllerClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/oneplus/camera/ModeUI;->m_ControllerSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 148
    return-void
.end method

.method protected onControllerLinked(Lcom/oneplus/camera/ModeController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTController;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    .local p1, "controller":Lcom/oneplus/camera/ModeController;, "TTController;"
    iget-boolean v0, p0, Lcom/oneplus/camera/ModeUI;->m_IsEntered:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onControllerLinked() - Enter mode again"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/oneplus/camera/ModeUI;->m_EnterFlags:I

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/ModeController;->enter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onControllerLinked() - Fail to enter mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ModeUI;->exit(I)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onEnter(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 195
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->m_Controller:Lcom/oneplus/camera/ModeController;

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEnter() - Enter mode later when controller linked"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->m_Controller:Lcom/oneplus/camera/ModeController;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/ModeController;->enter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onEnter() - Fail to enter mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method protected onExit(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 212
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->m_Controller:Lcom/oneplus/camera/ModeController;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/oneplus/camera/ModeUI;->m_Controller:Lcom/oneplus/camera/ModeController;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/ModeController;->exit(I)V

    .line 210
    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 223
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 226
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeUI;->isCameraThreadStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeUI;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ModeUI;->m_ControllerClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/oneplus/camera/ModeUI;->m_ControllerSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 220
    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 235
    .local p0, "this":Lcom/oneplus/camera/ModeUI;, "Lcom/oneplus/camera/ModeUI<TTController;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ModeUI;->m_Controller:Lcom/oneplus/camera/ModeController;

    .line 236
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onRelease()V

    .line 233
    return-void
.end method
