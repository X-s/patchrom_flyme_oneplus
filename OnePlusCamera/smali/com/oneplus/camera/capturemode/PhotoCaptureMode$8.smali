.class Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;
.super Ljava/lang/Object;
.source "PhotoCaptureMode.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/capturemode/PhotoCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/scene/SceneManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/capturemode/PhotoCaptureMode;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;->this$0:Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 156
    check-cast p1, Lcom/oneplus/camera/scene/SceneManager;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;->onComponentFound(Lcom/oneplus/camera/scene/SceneManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/scene/SceneManager;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;->this$0:Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-static {v0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-wrap7(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/SceneManager;)V

    .line 156
    return-void
.end method
