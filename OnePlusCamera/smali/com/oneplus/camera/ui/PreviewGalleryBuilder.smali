.class public final Lcom/oneplus/camera/ui/PreviewGalleryBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "PreviewGalleryBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/ui/PreviewGallery;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
