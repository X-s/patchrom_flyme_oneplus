.class public final Lcom/oneplus/camera/ui/CameraWizardBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "CameraWizardBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 9
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 27
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    return-object v8

    .line 29
    :cond_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    .line 30
    .local v2, "settings":Lcom/oneplus/base/Settings;
    const/4 v1, 0x0

    .line 31
    .local v1, "needShow":Z
    sget-object v5, Lcom/oneplus/camera/ui/CameraWizardImpl;->SETTINGS_KEY_WIZARD_LIST:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 33
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v2, v0, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 35
    const/4 v1, 0x1

    .line 39
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 40
    new-instance v3, Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-direct {v3, p1}, Lcom/oneplus/camera/ui/CameraWizardImpl;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v3

    .line 31
    .restart local v0    # "item":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "item":Ljava/lang/String;
    :cond_3
    return-object v8
.end method
