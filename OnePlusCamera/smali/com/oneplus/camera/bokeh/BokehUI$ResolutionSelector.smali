.class final Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;
.super Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;
.source "BokehUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/bokeh/BokehUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResolutionSelector"
.end annotation


# static fields
.field private static final PHOTO_RATIOS:[Lcom/oneplus/util/AspectRatio;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/util/AspectRatio;

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;->PHOTO_RATIOS:[Lcom/oneplus/util/AspectRatio;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 78
    return-void
.end method


# virtual methods
.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 6
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
    .line 85
    sget-object v3, Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;->PHOTO_RATIOS:[Lcom/oneplus/util/AspectRatio;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;[Lcom/oneplus/util/AspectRatio;ILcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
