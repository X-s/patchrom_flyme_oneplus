.class public Lcom/oneplus/camera/manual/ManualModeUIBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "ManualModeUIBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/manual/ManualModeUI;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
