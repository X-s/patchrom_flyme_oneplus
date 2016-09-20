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
    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 50
    return-void
.end method


# virtual methods
.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 5
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;
    .param p3, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/camera/Settings;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    if-eqz v1, :cond_1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 60
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/Resolution;

    .line 61
    .local v2, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v2}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/oneplus/camera/media/Resolution;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 65
    .end local v0    # "i":I
    .end local v2    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :goto_1
    return-object v3

    .line 58
    .restart local v0    # "i":I
    .restart local v2    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    .end local v2    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
