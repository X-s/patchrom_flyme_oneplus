.class final Lcom/oneplus/camera/slowmotion/SlowMotionUI$ResolutionSelector;
.super Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;
.source "SlowMotionUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/slowmotion/SlowMotionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResolutionSelector"
.end annotation


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 36
    return-void
.end method


# virtual methods
.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 7
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/base/Settings;
    .param p3, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/base/Settings;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 49
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/Resolution;

    .line 50
    .local v2, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v2}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    new-instance v3, Lcom/oneplus/camera/media/Resolution;

    const/16 v4, 0x78

    invoke-direct {v3, v2, v4}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/Resolution;I)V

    .line 53
    .local v3, "targetResolution":Lcom/oneplus/camera/media/Resolution;
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/oneplus/camera/media/Resolution;

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 47
    .end local v3    # "targetResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    .end local v2    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_1
    return-object v6
.end method
