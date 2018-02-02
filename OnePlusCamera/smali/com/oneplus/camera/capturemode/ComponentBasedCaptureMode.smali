.class public abstract Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;
.super Lcom/oneplus/camera/capturemode/BasicCaptureMode;
.source "ComponentBasedCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent:",
        "Lcom/oneplus/camera/ModeUI",
        "<*>;>",
        "Lcom/oneplus/camera/capturemode/BasicCaptureMode;"
    }
.end annotation


# instance fields
.field private m_Component:Lcom/oneplus/camera/ModeUI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTComponent;"
        }
    .end annotation
.end field

.field private final m_ComponentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TTComponent;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/oneplus/camera/media/MediaType;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "customSettingsName"    # Ljava/lang/String;
    .param p5, "mediaType"    # Lcom/oneplus/camera/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/CameraActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+TTComponent;>;",
            "Lcom/oneplus/camera/media/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;, "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode<TTComponent;>;"
    .local p4, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<+TTComponent;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/camera/media/MediaType;)V

    .line 28
    if-nez p4, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No component type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p4, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_ComponentClass:Ljava/lang/Class;

    .line 25
    return-void
.end method


# virtual methods
.method protected onCallComponentEnter(Lcom/oneplus/camera/capturemode/CaptureMode;II)Z
    .locals 2
    .param p1, "prevMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I
    .param p3, "customFlags"    # I

    .prologue
    .line 43
    .local p0, "this":Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;, "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode<TTComponent;>;"
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_Component:Lcom/oneplus/camera/ModeUI;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCallComponentEnter() - No component to call"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_Component:Lcom/oneplus/camera/ModeUI;

    invoke-virtual {v0, p3}, Lcom/oneplus/camera/ModeUI;->enter(I)Z

    move-result v0

    return v0
.end method

.method protected onCallComponentExit(Lcom/oneplus/camera/capturemode/CaptureMode;II)V
    .locals 1
    .param p1, "nextMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I
    .param p3, "customFlags"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;, "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode<TTComponent;>;"
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_Component:Lcom/oneplus/camera/ModeUI;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_Component:Lcom/oneplus/camera/ModeUI;

    invoke-virtual {v0, p3}, Lcom/oneplus/camera/ModeUI;->exit(I)V

    .line 58
    :cond_0
    return-void
.end method

.method protected bridge synthetic onEnter(Lcom/oneplus/camera/Mode;I)Z
    .locals 1
    .param p1, "prevMode"    # Lcom/oneplus/camera/Mode;
    .param p2, "flags"    # I

    .prologue
    .line 67
    .local p0, "this":Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;, "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode<TTComponent;>;"
    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "prevMode":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v0

    return v0
.end method

.method protected onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z
    .locals 2
    .param p1, "prevMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;, "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode<TTComponent;>;"
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_Component:Lcom/oneplus/camera/ModeUI;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_ComponentClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ModeUI;

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_Component:Lcom/oneplus/camera/ModeUI;

    .line 71
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->onCallComponentEnter(Lcom/oneplus/camera/capturemode/CaptureMode;II)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onExit(Lcom/oneplus/camera/Mode;I)V
    .locals 0
    .param p1, "nextMode"    # Lcom/oneplus/camera/Mode;
    .param p2, "flags"    # I

    .prologue
    .line 77
    .local p0, "this":Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;, "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode<TTComponent;>;"
    check-cast p1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .end local p1    # "nextMode":Lcom/oneplus/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V

    return-void
.end method

.method protected onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V
    .locals 1
    .param p1, "nextMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 79
    .local p0, "this":Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;, "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode<TTComponent;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->onCallComponentExit(Lcom/oneplus/camera/capturemode/CaptureMode;II)V

    .line 77
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;, "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode<TTComponent;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;->m_Component:Lcom/oneplus/camera/ModeUI;

    .line 88
    invoke-super {p0}, Lcom/oneplus/camera/capturemode/BasicCaptureMode;->onRelease()V

    .line 85
    return-void
.end method
