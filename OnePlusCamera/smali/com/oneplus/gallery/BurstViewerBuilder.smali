.class public final Lcom/oneplus/gallery/BurstViewerBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "BurstViewerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oneplus/gallery/BurstViewer;

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
    new-instance v0, Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery/BurstViewer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
