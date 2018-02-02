.class public abstract Lcom/oneplus/camera/scene/BasicScene;
.super Lcom/oneplus/camera/BasicMode;
.source "BasicScene.java"

# interfaces
.implements Lcom/oneplus/camera/scene/Scene;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/BasicScene$1;,
        Lcom/oneplus/camera/scene/BasicScene$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/BasicMode",
        "<",
        "Lcom/oneplus/camera/scene/Scene;",
        ">;",
        "Lcom/oneplus/camera/scene/Scene;"
    }
.end annotation


# instance fields
.field private final m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaTypeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/media/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/BasicMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/oneplus/camera/scene/BasicScene$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/BasicScene$1;-><init>(Lcom/oneplus/camera/scene/BasicScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/BasicScene;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 26
    new-instance v0, Lcom/oneplus/camera/scene/BasicScene$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/BasicScene$2;-><init>(Lcom/oneplus/camera/scene/BasicScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/BasicScene;->m_MediaTypeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 44
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/BasicScene;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 45
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/BasicScene;->m_MediaTypeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 46
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/scene/BasicScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    .line 47
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/scene/BasicScene;->onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onCameraChanged(Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 55
    return-void
.end method

.method protected onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 63
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/BasicScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 72
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/BasicScene;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 73
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/BasicScene;->m_MediaTypeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 74
    invoke-super {p0}, Lcom/oneplus/camera/BasicMode;->onRelease()V

    .line 69
    return-void
.end method
