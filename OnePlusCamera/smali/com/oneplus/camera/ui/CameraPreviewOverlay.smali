.class public interface abstract Lcom/oneplus/camera/ui/CameraPreviewOverlay;
.super Ljava/lang/Object;
.source "CameraPreviewOverlay.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;,
        Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    }
.end annotation


# virtual methods
.method public abstract addRenderer(Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract invalidateCameraPreviewOverlay()V
.end method
