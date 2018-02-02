.class public Lcom/oneplus/camera/ui/BusinessCardUIBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "BusinessCardUIBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/camera/ui/BusinessCardUI;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isBusinessCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/oneplus/camera/ui/BusinessCardUI;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/ui/BusinessCardUI;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
