.class public Lcom/oneplus/camera/ui/DynamicShortcutsManagerBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "DynamicShortcutsManagerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
