.class final Lcom/oneplus/camera/CaptureModeBuilders;
.super Ljava/lang/Object;
.source "CaptureModeBuilders.java"


# static fields
.field public static final BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    .line 14
    new-instance v1, Lcom/oneplus/camera/timelapse/TimelapseCaptureModeBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/timelapse/TimelapseCaptureModeBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 15
    new-instance v1, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureModeBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureModeBuilder;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 16
    new-instance v1, Lcom/oneplus/camera/capturemode/PhotoCaptureModeBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/capturemode/PhotoCaptureModeBuilder;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 17
    new-instance v1, Lcom/oneplus/camera/capturemode/VideoCaptureModeBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/capturemode/VideoCaptureModeBuilder;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 18
    new-instance v1, Lcom/oneplus/camera/manual/ManualCaptureModeBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/manual/ManualCaptureModeBuilder;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 19
    new-instance v1, Lcom/oneplus/camera/panorama/PanoramaCaptureModeBuilder;

    invoke-direct {v1}, Lcom/oneplus/camera/panorama/PanoramaCaptureModeBuilder;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 13
    sput-object v0, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    .line 11
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
