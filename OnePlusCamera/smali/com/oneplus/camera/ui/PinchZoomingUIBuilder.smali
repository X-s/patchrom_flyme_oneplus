.class public final Lcom/oneplus/camera/ui/PinchZoomingUIBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "PinchZoomingUIBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isBusinessCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/PinchZoomingUI;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/ui/PinchZoomingUI;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
