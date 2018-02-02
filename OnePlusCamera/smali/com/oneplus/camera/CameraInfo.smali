.class public Lcom/oneplus/camera/CameraInfo;
.super Lcom/oneplus/base/BasicBaseObject;
.source "CameraInfo.java"


# static fields
.field private static final ENABLE_LOG:Z = false

.field private static final PREFERENCE_PREFIX:Ljava/lang/String;

.field private static final PREF_HASH_CODE:Ljava/lang/String; = "HashCode"

.field private static final PREF_ROM_BUILD_VERSION:Ljava/lang/String; = "RomBuildVersion"

.field private static final PREF_VERSION:Ljava/lang/String; = "Version"

.field public static final PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION:I = 0xf


# instance fields
.field private m_CharsPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 41
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AWBModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    .line 46
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AFModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    .line 51
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Capabilities"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    .line 55
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DefaultFaceBeautyValue"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 59
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "EVStep"

    const-class v2, Landroid/util/Rational;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    .line 64
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureCompRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 69
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureTimeRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 73
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyValue"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 78
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyValueList"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    .line 82
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FlashAvailable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    .line 87
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FocusRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 91
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HardwareLevel"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 95
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBurstCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 99
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsMirrorSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 103
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsWatermarkSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 108
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ISORange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 112
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 116
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxAECount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 120
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxAFCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 124
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxDigitalZoom"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    .line 129
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PictureSizes"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 134
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SceneModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    .line 138
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorRect"

    const-class v2, Landroid/graphics/Rect;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    .line 142
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorPixelSizeFull"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v7, v7}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    .line 146
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorPhysicalSize"

    const-class v2, Landroid/util/SizeF;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/SizeF;

    invoke-direct {v4, v8, v8}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 151
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SurfaceSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 156
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "TargetFPSRanges"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    .line 161
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 166
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Video60FpsSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 170
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxFaceCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 174
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "LensFacing"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    .line 179
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ThumbnailSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 184
    const-class v0, Lcom/oneplus/camera/CameraInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PREFERENCE_PREFIX:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "cameraCounts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 233
    const/16 v16, 0x0

    .line 234
    .local v16, "saveCameraInfo":Z
    const/4 v4, 0x1

    move/from16 v0, p4

    if-le v0, v4, :cond_0

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/oneplus/camera/CameraInfo;->PREFERENCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "HashCode"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 239
    .local v11, "hashcodeFromPrefs":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "RomBuildVersion"

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, "romVersionFromPrefes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "Version"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 241
    .local v17, "versionFromPrefs":I
    const-string/jumbo v4, "ro.build.date.YmdHM"

    invoke-static {v4}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 244
    .local v14, "romVersion":Ljava/lang/String;
    const/16 v4, 0xf

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    .line 246
    sget-object v4, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cameraInfo() - Version incompatible: "

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, " -> "

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", re-write data"

    invoke-static/range {v4 .. v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    const/16 v16, 0x1

    .line 274
    .end local v11    # "hashcodeFromPrefs":Ljava/lang/Long;
    .end local v14    # "romVersion":Ljava/lang/String;
    .end local v15    # "romVersionFromPrefes":Ljava/lang/String;
    .end local v17    # "versionFromPrefs":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->getCameraCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z

    move-result v10

    .line 277
    .local v10, "getCharacteristicsSuccessful":Z
    if-eqz v16, :cond_7

    .line 279
    if-eqz v10, :cond_6

    .line 280
    invoke-virtual/range {p2 .. p3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/camera/CameraInfo;->saveCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 197
    :cond_1
    :goto_1
    return-void

    .line 249
    .end local v10    # "getCharacteristicsSuccessful":Z
    .restart local v11    # "hashcodeFromPrefs":Ljava/lang/Long;
    .restart local v14    # "romVersion":Ljava/lang/String;
    .restart local v15    # "romVersionFromPrefes":Ljava/lang/String;
    .restart local v17    # "versionFromPrefs":I
    :cond_2
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 251
    sget-object v4, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cameraInfo() - Rom version incompatible: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", re-write data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/16 v16, 0x1

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/CameraInfo;->loadCharacteristics()J

    move-result-wide v12

    .line 260
    .local v12, "hashCode":J
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v12, v4

    if-nez v4, :cond_4

    .line 261
    return-void

    .line 264
    :cond_4
    sget-object v4, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cameraInfo() - Data is inconsistent, re-write data"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/16 v16, 0x1

    goto :goto_0

    .line 269
    .end local v12    # "hashCode":J
    :cond_5
    const/16 v16, 0x1

    goto :goto_0

    .line 282
    .end local v11    # "hashcodeFromPrefs":Ljava/lang/Long;
    .end local v14    # "romVersion":Ljava/lang/String;
    .end local v15    # "romVersionFromPrefes":Ljava/lang/String;
    .end local v17    # "versionFromPrefs":I
    .restart local v10    # "getCharacteristicsSuccessful":Z
    :cond_6
    sget-object v4, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cameraInfo() - getCameraCharacteristics failed, dont save prefs"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p4

    if-gt v0, v4, :cond_1

    .line 285
    sget-object v4, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cameraInfo() - Camera counts incorrect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", dont save prefs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getCameraCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z
    .locals 60
    .param p1, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 312
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Start"

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v7, 0x0

    .line 318
    .local v7, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 324
    .end local v7    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_0
    if-nez v7, :cond_0

    .line 325
    const/16 v55, 0x0

    return v55

    .line 321
    .restart local v7    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v9

    .line 322
    .local v9, "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get camera characteristics"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 326
    .end local v7    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_0
    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 327
    .local v16, "hardwareLevel":I
    const/16 v55, 0x2

    move/from16 v0, v16

    move/from16 v1, v55

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    .line 330
    .local v20, "isLegacyCamera":Z
    :goto_1
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->getCameraParameters(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    move-result-object v42

    .line 333
    :goto_2
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v56, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v7, v1}, Lcom/oneplus/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 334
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v56, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v7, v1}, Lcom/oneplus/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 335
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v56, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v7, v1}, Lcom/oneplus/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 336
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/Rational;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 337
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/Range;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 338
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/Range;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 339
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 340
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 341
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/camera/CameraInfo;->getFocusRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 342
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 343
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/Range;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 344
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 345
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 346
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 347
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Float;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 348
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/camera/CameraInfo;->getPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 349
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v56, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v7, v1}, Lcom/oneplus/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 350
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 351
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/SizeF;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 352
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/Size;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 353
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 354
    if-nez v42, :cond_1

    .line 355
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/camera/CameraInfo;->getSurfaceSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 356
    :cond_1
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/camera/CameraInfo;->getTargetFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 357
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/camera/CameraInfo;->getThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 358
    if-nez v42, :cond_2

    .line 359
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/camera/CameraInfo;->getVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 362
    :cond_2
    if-eqz v42, :cond_16

    .line 365
    invoke-virtual/range {v42 .. v42}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v28

    .line 366
    .local v28, "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v43, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v28, :cond_5

    .line 369
    const/16 v18, 0x0

    .local v18, "i":I
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "count":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v8, :cond_5

    .line 371
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/hardware/Camera$Size;

    .line 372
    .local v29, "legacySize":Landroid/hardware/Camera$Size;
    new-instance v55, Landroid/util/Size;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v56, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v57, v0

    invoke-direct/range {v55 .. v57}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v43

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 327
    .end local v8    # "count":I
    .end local v18    # "i":I
    .end local v20    # "isLegacyCamera":Z
    .end local v28    # "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v29    # "legacySize":Landroid/hardware/Camera$Size;
    .end local v43    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_3
    const/16 v20, 0x0

    .restart local v20    # "isLegacyCamera":Z
    goto/16 :goto_1

    .line 330
    :cond_4
    const/16 v42, 0x0

    .local v42, "parameters":Landroid/hardware/Camera$Parameters;
    goto/16 :goto_2

    .line 375
    .end local v42    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v28    # "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v43    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_5
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 378
    invoke-virtual/range {v42 .. v42}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v30

    .line 379
    .local v30, "legacyVideoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v53, "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v30, :cond_6

    .line 382
    const/16 v18, 0x0

    .restart local v18    # "i":I
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v8

    .restart local v8    # "count":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v8, :cond_6

    .line 384
    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/hardware/Camera$Size;

    .line 385
    .restart local v29    # "legacySize":Landroid/hardware/Camera$Size;
    new-instance v55, Landroid/util/Size;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v56, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v57, v0

    invoke-direct/range {v55 .. v57}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 388
    .end local v8    # "count":I
    .end local v18    # "i":I
    .end local v29    # "legacySize":Landroid/hardware/Camera$Size;
    :cond_6
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 393
    :try_start_1
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v50, "video60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const-string/jumbo v55, "support-60fps-video-sizes"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 395
    .local v52, "video60FpsSizesStr":Ljava/lang/String;
    const/16 v51, 0x0

    .line 397
    .local v51, "video60FpsSizesArr":[Ljava/lang/String;
    if-eqz v52, :cond_7

    .line 399
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "getCameraCharacteristics() - video60FpsSizesStr : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v55, ","

    move-object/from16 v0, v52

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v51

    .line 402
    .local v51, "video60FpsSizesArr":[Ljava/lang/String;
    const/16 v55, 0x0

    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v56, v0

    :goto_5
    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_7

    aget-object v47, v51, v55

    .line 404
    .local v47, "size":Ljava/lang/String;
    const-string/jumbo v57, "x"

    move-object/from16 v0, v47

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v57

    const/16 v58, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v58

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v54

    .line 405
    .local v54, "widthStr":Ljava/lang/String;
    const-string/jumbo v57, "x"

    move-object/from16 v0, v47

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v57

    add-int/lit8 v57, v57, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 406
    .local v17, "heightStr":Ljava/lang/String;
    new-instance v57, Landroid/util/Size;

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v57 .. v59}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v50

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v55, v55, 0x1

    goto :goto_5

    .line 409
    .end local v17    # "heightStr":Ljava/lang/String;
    .end local v47    # "size":Ljava/lang/String;
    .end local v51    # "video60FpsSizesArr":[Ljava/lang/String;
    .end local v54    # "widthStr":Ljava/lang/String;
    :cond_7
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    .end local v50    # "video60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v52    # "video60FpsSizesStr":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {v42 .. v42}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v46

    .line 419
    .local v46, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v55, "manual"

    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_8

    .line 421
    const/16 v31, 0x1

    .line 422
    .local v31, "manualCaps":I
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    invoke-interface/range {v55 .. v56}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_8

    .line 423
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    invoke-interface/range {v55 .. v56}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v31    # "manualCaps":I
    :cond_8
    :try_start_2
    const-string/jumbo v55, "face-beauty-current-value"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 430
    .local v10, "faceBeautyValue":Ljava/lang/String;
    const-string/jumbo v55, "face-beauty-values"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 431
    .local v12, "faceBeautyValueListStr":Ljava/lang/String;
    const/4 v11, 0x0

    .line 432
    .local v11, "faceBeautyValueArr":[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v13, "faceBeautyValuseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "getCameraCharacteristics() - faceBeautyValue : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "getCameraCharacteristics() - faceBeautyValueList : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    if-nez v10, :cond_9

    .line 439
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - faceBeautyValue is null"

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v10, "-100"

    .line 443
    :cond_9
    if-nez v12, :cond_b

    .line 444
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - faceBeautyValueListStr is null"

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local v11    # "faceBeautyValueArr":[Ljava/lang/String;
    :goto_7
    if-eqz v11, :cond_c

    .line 450
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_8
    array-length v0, v11

    move/from16 v55, v0

    move/from16 v0, v18

    move/from16 v1, v55

    if-ge v0, v1, :cond_c

    .line 452
    const-string/jumbo v55, "-100"

    move-object/from16 v0, v55

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_a

    if-nez v18, :cond_a

    .line 453
    aget-object v10, v11, v18

    .line 455
    :cond_a
    aget-object v55, v11, v18

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    .line 456
    .local v49, "value":I
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 450
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 412
    .end local v10    # "faceBeautyValue":Ljava/lang/String;
    .end local v12    # "faceBeautyValueListStr":Ljava/lang/String;
    .end local v13    # "faceBeautyValuseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "i":I
    .end local v46    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v49    # "value":I
    :catch_1
    move-exception v9

    .line 413
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when video 60fps list"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v56, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 446
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v10    # "faceBeautyValue":Ljava/lang/String;
    .restart local v11    # "faceBeautyValueArr":[Ljava/lang/String;
    .restart local v12    # "faceBeautyValueListStr":Ljava/lang/String;
    .restart local v13    # "faceBeautyValuseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v46    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    :try_start_3
    const-string/jumbo v55, ","

    move-object/from16 v0, v55

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "faceBeautyValueArr":[Ljava/lang/String;
    goto :goto_7

    .line 460
    .end local v11    # "faceBeautyValueArr":[Ljava/lang/String;
    :cond_c
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v13}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 461
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 462
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 475
    .end local v10    # "faceBeautyValue":Ljava/lang/String;
    .end local v12    # "faceBeautyValueListStr":Ljava/lang/String;
    .end local v13    # "faceBeautyValuseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_9
    :try_start_4
    const-string/jumbo v55, "min-focus-pos-index"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 476
    .local v40, "minFocus":Ljava/lang/String;
    const-string/jumbo v55, "max-focus-pos-index"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 477
    .local v35, "maxFocus":Ljava/lang/String;
    if-eqz v40, :cond_d

    if-nez v35, :cond_e

    .line 479
    :cond_d
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Cannot get focus position min and max, use [0,499]"

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string/jumbo v40, "0"

    .line 481
    const-string/jumbo v35, "499"

    .line 483
    :cond_e
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v56, Landroid/util/Range;

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v57

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v58

    invoke-direct/range {v56 .. v58}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 494
    .end local v35    # "maxFocus":Ljava/lang/String;
    .end local v40    # "minFocus":Ljava/lang/String;
    :goto_a
    :try_start_5
    const-string/jumbo v55, "min-exposure-time"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 495
    .local v37, "minExpStr":Ljava/lang/String;
    const-string/jumbo v55, "max-exposure-time"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 496
    .local v34, "maxExpStr":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v56

    const-wide v58, 0x412e848000000000L    # 1000000.0

    mul-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    .line 497
    .local v38, "minExp":J
    invoke-static/range {v34 .. v34}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v56

    const-wide v58, 0x412e848000000000L    # 1000000.0

    mul-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->round(D)J

    move-result-wide v32

    .line 498
    .local v32, "maxExp":J
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v56, Landroid/util/Range;

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    invoke-direct/range {v56 .. v58}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 499
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Exposure string range: "

    const/16 v57, 0x7

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v37, v57, v58

    const-string/jumbo v58, ", "

    const/16 v59, 0x1

    aput-object v58, v57, v59

    const/16 v58, 0x2

    aput-object v34, v57, v58

    const-string/jumbo v58, ", long range: "

    const/16 v59, 0x3

    aput-object v58, v57, v59

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const/16 v59, 0x4

    aput-object v58, v57, v59

    const-string/jumbo v58, ", "

    const/16 v59, 0x5

    aput-object v58, v57, v59

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const/16 v59, 0x6

    aput-object v58, v57, v59

    invoke-static/range {v55 .. v57}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 510
    .end local v32    # "maxExp":J
    .end local v34    # "maxExpStr":Ljava/lang/String;
    .end local v37    # "minExpStr":Ljava/lang/String;
    .end local v38    # "minExp":J
    :goto_b
    :try_start_6
    const-string/jumbo v55, "iso-values"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 511
    .local v27, "isoValuesStr":Ljava/lang/String;
    const-string/jumbo v55, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 512
    .local v26, "isoValuesArr":[Ljava/lang/String;
    const v41, 0x7fffffff

    .line 513
    .local v41, "minISO":I
    const/high16 v36, -0x80000000

    .line 514
    .local v36, "maxISO":I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v55, v0

    add-int/lit8 v18, v55, -0x1

    .restart local v18    # "i":I
    :goto_c
    if-ltz v18, :cond_11

    .line 516
    aget-object v23, v26, v18

    .line 517
    .local v23, "isoRawValue":Ljava/lang/String;
    const-string/jumbo v55, "^ISO[\\d]+$"

    move-object/from16 v0, v23

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_10

    .line 519
    const/16 v55, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 520
    .local v25, "isoValueStr":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    move-result v24

    .line 521
    .local v24, "isoValue":I
    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_f

    .line 522
    move/from16 v41, v24

    .line 523
    :cond_f
    move/from16 v0, v24

    move/from16 v1, v36

    if-le v0, v1, :cond_10

    .line 524
    move/from16 v36, v24

    .line 514
    .end local v24    # "isoValue":I
    .end local v25    # "isoValueStr":Ljava/lang/String;
    :cond_10
    add-int/lit8 v18, v18, -0x1

    goto :goto_c

    .line 465
    .end local v18    # "i":I
    .end local v23    # "isoRawValue":Ljava/lang/String;
    .end local v26    # "isoValuesArr":[Ljava/lang/String;
    .end local v27    # "isoValuesStr":Ljava/lang/String;
    .end local v36    # "maxISO":I
    .end local v41    # "minISO":I
    :catch_2
    move-exception v9

    .line 466
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get face beauty values"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    sget-object v56, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 468
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 469
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 486
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v9

    .line 487
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get manual focus range, use [0,499]"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v56, Landroid/util/Range;

    const/16 v57, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v57

    const v58, 0x43f98000    # 499.0f

    invoke-static/range {v58 .. v58}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v58

    invoke-direct/range {v56 .. v58}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 502
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v9

    .line 503
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get manual exposure range, use [125000,1000000000]"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v56, Landroid/util/Range;

    const-wide/32 v58, 0x1e848

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    const-wide/32 v58, 0x3b9aca00

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    invoke-direct/range {v56 .. v58}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 527
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v18    # "i":I
    .restart local v26    # "isoValuesArr":[Ljava/lang/String;
    .restart local v27    # "isoValuesStr":Ljava/lang/String;
    .restart local v36    # "maxISO":I
    .restart local v41    # "minISO":I
    :cond_11
    :try_start_7
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v56, Landroid/util/Range;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    invoke-direct/range {v56 .. v58}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 538
    .end local v18    # "i":I
    .end local v26    # "isoValuesArr":[Ljava/lang/String;
    .end local v27    # "isoValuesStr":Ljava/lang/String;
    .end local v36    # "maxISO":I
    .end local v41    # "minISO":I
    :goto_d
    :try_start_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v4, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v42 .. v42}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v48

    .line 540
    .local v48, "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v55

    add-int/lit8 v18, v55, -0x1

    .restart local v18    # "i":I
    :goto_e
    if-ltz v18, :cond_1a

    .line 542
    move-object/from16 v0, v48

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 543
    .local v5, "awbStr":Ljava/lang/String;
    const-string/jumbo v55, "auto"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_13

    .line 544
    const/16 v55, 0x1

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 540
    :cond_12
    :goto_f
    add-int/lit8 v18, v18, -0x1

    goto :goto_e

    .line 530
    .end local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "awbStr":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v48    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5
    move-exception v9

    .line 531
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get manual ISO range, use [100,1600]"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v56, Landroid/util/Range;

    const/16 v57, 0x64

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    const/16 v58, 0x640

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    invoke-direct/range {v56 .. v58}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_d

    .line 545
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "awbStr":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v48    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    :try_start_9
    const-string/jumbo v55, "cloudy-daylight"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_17

    .line 546
    const/16 v55, 0x6

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_f

    .line 557
    .end local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "awbStr":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v48    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_6
    move-exception v9

    .line 558
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get awb modes"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    .end local v9    # "e":Ljava/lang/Throwable;
    :goto_10
    :try_start_a
    const-string/jumbo v55, "flip-mode-values"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 565
    .local v14, "flipModeValueStr":Ljava/lang/String;
    const-string/jumbo v55, ","

    move-object/from16 v0, v55

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 566
    .local v15, "flipModeValues":[Ljava/lang/String;
    const/16 v21, 0x0

    .line 567
    .local v21, "isMirrorSupported":Z
    const-string/jumbo v55, "flip-h"

    move-object/from16 v0, v55

    invoke-static {v15, v0}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_14

    .line 568
    const-string/jumbo v55, "flip-v"

    move-object/from16 v0, v55

    invoke-static {v15, v0}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v55

    .line 567
    if-eqz v55, :cond_14

    .line 569
    const/16 v21, 0x1

    .line 570
    :cond_14
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    .line 580
    .end local v14    # "flipModeValueStr":Ljava/lang/String;
    .end local v15    # "flipModeValues":[Ljava/lang/String;
    .end local v21    # "isMirrorSupported":Z
    :goto_11
    :try_start_b
    const-string/jumbo v55, "scene-mode-values"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 581
    .local v44, "sceneModeValueStr":Ljava/lang/String;
    const-string/jumbo v55, ","

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    .line 582
    .local v45, "sceneModeValues":[Ljava/lang/String;
    const-string/jumbo v55, "hdr-auto"

    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_15

    .line 584
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - auto hdr is supported"

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    const/16 v56, 0x2711

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    invoke-interface/range {v55 .. v56}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_15

    .line 586
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    const/16 v56, 0x2711

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    invoke-interface/range {v55 .. v56}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    .line 597
    .end local v44    # "sceneModeValueStr":Ljava/lang/String;
    .end local v45    # "sceneModeValues":[Ljava/lang/String;
    :cond_15
    :goto_12
    :try_start_c
    const-string/jumbo v55, "is-burst-supported"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, "burstSupportStr":Ljava/lang/String;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - burstSupportStr: "

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    const-string/jumbo v55, "false"

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_1b

    const/16 v19, 0x0

    .line 601
    .local v19, "isBurstSupported":Z
    :goto_13
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9

    .line 611
    .end local v6    # "burstSupportStr":Ljava/lang/String;
    .end local v19    # "isBurstSupported":Z
    :goto_14
    :try_start_d
    const-string/jumbo v55, "1"

    const-string/jumbo v56, "is-watermark-supported"

    move-object/from16 v0, v42

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 612
    .local v22, "isWatermarkSupported":Z
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 613
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v57, "getCameraCharacteristics() - Watermark is"

    if-nez v22, :cond_1c

    const-string/jumbo v55, " not "

    :goto_15
    const-string/jumbo v58, "supported"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v55

    move-object/from16 v3, v58

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_a

    .line 622
    .end local v22    # "isWatermarkSupported":Z
    .end local v28    # "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v30    # "legacyVideoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v43    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v46    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v53    # "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_16
    :goto_16
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 623
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 624
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 625
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 626
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 627
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 628
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 629
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 630
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 631
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    invoke-static/range {v55 .. v55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 633
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - End"

    invoke-static/range {v55 .. v56}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/16 v55, 0x1

    return v55

    .line 547
    .restart local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "awbStr":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v28    # "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v30    # "legacyVideoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v43    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v46    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v48    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v53    # "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_17
    :try_start_e
    const-string/jumbo v55, "daylight"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_18

    .line 548
    const/16 v55, 0x5

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 549
    :cond_18
    const-string/jumbo v55, "fluorescent"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_19

    .line 550
    const/16 v55, 0x3

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 551
    :cond_19
    const-string/jumbo v55, "incandescent"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_12

    .line 552
    const/16 v55, 0x2

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 554
    .end local v5    # "awbStr":Ljava/lang/String;
    :cond_1a
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_10

    .line 573
    .end local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "i":I
    .end local v48    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7
    move-exception v9

    .line 574
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get mirror supported"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 590
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v9

    .line 591
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get scene modes"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 599
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v6    # "burstSupportStr":Ljava/lang/String;
    :cond_1b
    const/16 v19, 0x1

    .restart local v19    # "isBurstSupported":Z
    goto/16 :goto_13

    .line 604
    .end local v6    # "burstSupportStr":Ljava/lang/String;
    .end local v19    # "isBurstSupported":Z
    :catch_9
    move-exception v9

    .line 605
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Error when get burst capture supported"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 613
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v22    # "isWatermarkSupported":Z
    :cond_1c
    :try_start_f
    const-string/jumbo v55, " "
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_15

    .line 616
    .end local v22    # "isWatermarkSupported":Z
    :catch_a
    move-exception v9

    .line 617
    .restart local v9    # "e":Ljava/lang/Throwable;
    sget-object v55, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v56, "getCameraCharacteristics() - Fail to check watermark supported state"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16
.end method

.method private getCameraParameters(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 295
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 296
    .local v0, "cameraDevice":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 297
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    return-object v2

    .line 301
    .end local v0    # "cameraDevice":Landroid/hardware/Camera;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCameraParameters() - Error when get camera parameters"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    const/4 v3, 0x0

    return-object v3
.end method

.method private getFocusRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .locals 3
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 642
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 643
    .local v0, "minFocusDistance":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 644
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 645
    :cond_0
    new-instance v1, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v1
.end method

.method private getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;
    .locals 4
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[I>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    .local p2, "charKey":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<[I>;"
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 653
    .local v2, "values":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 655
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_0
    return-object v1

    .line 658
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 659
    aget v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 668
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 669
    .local v2, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v4, 0x100

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 670
    .local v3, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v3, :cond_1

    .line 672
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_0
    return-object v1

    .line 675
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 676
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSurfaceSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 685
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 686
    .local v2, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v4, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    .line 687
    .local v3, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v3, :cond_1

    .line 689
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_0
    return-object v1

    .line 692
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 693
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTargetFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 702
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 703
    .local v0, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_1

    .line 705
    new-instance v3, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_0
    return-object v2

    .line 708
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 709
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 5
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 718
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Size;

    .line 719
    .local v2, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v2, :cond_1

    .line 721
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_0
    return-object v1

    .line 724
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 725
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 734
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 735
    .local v2, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v4, Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    .line 736
    .local v3, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v3, :cond_1

    .line 738
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_0
    return-object v1

    .line 741
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 742
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadCharacteristics()J
    .locals 52

    .prologue
    .line 767
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v48, "loadCharacteristics() - Start"

    invoke-static/range {v47 .. v48}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 772
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-static/range {v47 .. v47}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    .line 768
    const-wide/16 v50, 0x0

    .line 772
    add-long v24, v50, v48

    .line 775
    .local v24, "hashCode":J
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 776
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-static/range {v47 .. v47}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 779
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 780
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-static/range {v47 .. v47}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 784
    .local v4, "defaultFaceBeautyValue":I
    int-to-long v0, v4

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 785
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 789
    .local v40, "rationalStr":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v39

    .line 790
    .local v39, "rational":Landroid/util/Rational;
    invoke-virtual/range {v39 .. v39}, Landroid/util/Rational;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 791
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 795
    .local v7, "exCompRangeStr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 796
    const-string/jumbo v47, ","

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, "exCompLowerUpperStr":[Ljava/lang/String;
    new-instance v6, Landroid/util/Range;

    const/16 v47, 0x0

    aget-object v47, v5, v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    const/16 v48, 0x1

    aget-object v48, v5, v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-direct {v6, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 798
    .local v6, "exCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v6}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 802
    .local v10, "exTimeRangeStr":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 803
    const-string/jumbo v47, ","

    move-object/from16 v0, v47

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 804
    .local v8, "exTimeLowerUpperStr":[Ljava/lang/String;
    new-instance v9, Landroid/util/Range;

    const/16 v47, 0x0

    aget-object v47, v8, v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v47

    const/16 v48, 0x1

    aget-object v48, v8, v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v48

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-direct {v9, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 805
    .local v9, "exTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 808
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 809
    .local v12, "faceBeautyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 810
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v12}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 811
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-static/range {v47 .. v47}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 815
    .local v11, "faceBeautyValue":I
    int-to-long v0, v11

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 816
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, -0x1

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 820
    .local v13, "faceCount":I
    int-to-long v0, v13

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 821
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    sget-object v49, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 825
    .local v14, "flashAvailable":Ljava/lang/Boolean;
    invoke-virtual {v14}, Ljava/lang/Boolean;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 826
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v14}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 830
    .local v16, "focusRangeStr":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 831
    const-string/jumbo v47, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 832
    .local v17, "focusRangeStrs":[Ljava/lang/String;
    new-instance v15, Landroid/util/Range;

    const/16 v47, 0x0

    aget-object v47, v17, v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v47

    const/16 v48, 0x1

    aget-object v48, v17, v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v48

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-direct {v15, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 833
    .local v15, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v15}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, -0x1

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 837
    .local v22, "hardwareLevel":I
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 838
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    sget-object v49, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 842
    .local v23, "isBurstSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 843
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    sget-object v49, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 847
    .local v26, "isMirrorSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 848
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    .line 852
    .local v27, "isWatermarkSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 853
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 857
    .local v29, "isoRangeStr":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 858
    const-string/jumbo v47, ","

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 859
    .local v30, "isoRangeStrs":[Ljava/lang/String;
    new-instance v28, Landroid/util/Range;

    const/16 v47, 0x0

    aget-object v47, v30, v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    const/16 v48, 0x1

    aget-object v48, v30, v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 860
    .local v28, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 864
    .local v31, "lensFacing":I
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 865
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, -0x1

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v32

    .line 869
    .local v32, "maxAE":I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 870
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, -0x1

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v33

    .line 874
    .local v33, "maxAF":I
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 875
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/high16 v49, -0x40800000    # -1.0f

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v34

    .line 879
    .local v34, "maxDigitalZoom":F
    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v47, v0

    add-float v47, v47, v34

    move/from16 v0, v47

    float-to-long v0, v0

    move-wide/from16 v24, v0

    .line 880
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 883
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 884
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, "size$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_0

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/util/Size;

    .line 885
    .local v44, "size":Landroid/util/Size;
    invoke-virtual/range {v44 .. v44}, Landroid/util/Size;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    goto :goto_0

    .line 888
    .end local v44    # "size":Landroid/util/Size;
    :cond_0
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 889
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-static/range {v47 .. v47}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, -0x1

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v41

    .line 893
    .local v41, "sensorOrientation":I
    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 894
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 898
    .local v36, "physicalSizeStr":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/util/SizeF;->parseSizeF(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object v35

    .line 899
    .local v35, "physicalSize":Landroid/util/SizeF;
    invoke-virtual/range {v35 .. v35}, Landroid/util/SizeF;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 900
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 904
    .local v38, "pixelSizeStrg":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v37

    .line 905
    .local v37, "pixelSize":Landroid/util/Size;
    invoke-virtual/range {v37 .. v37}, Landroid/util/Size;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 906
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 910
    .local v43, "sensorRectStr":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v42

    .line 911
    .local v42, "sensorRect":Landroid/graphics/Rect;
    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    .line 912
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 915
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 916
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :goto_1
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_1

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/util/Size;

    .line 917
    .restart local v44    # "size":Landroid/util/Size;
    invoke-virtual/range {v44 .. v44}, Landroid/util/Size;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    goto :goto_1

    .line 920
    .end local v44    # "size":Landroid/util/Size;
    :cond_1
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v46, "targetFPSRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v47, v0

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v47 .. v49}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v21

    .line 922
    .local v21, "fpsRangesStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v47

    if-eqz v47, :cond_3

    .line 931
    :cond_2
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 934
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 935
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :goto_2
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_4

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/util/Size;

    .line 936
    .restart local v44    # "size":Landroid/util/Size;
    invoke-virtual/range {v44 .. v44}, Landroid/util/Size;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    goto :goto_2

    .line 924
    .end local v44    # "size":Landroid/util/Size;
    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "fpsRangeStr$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 926
    .local v18, "fpsRangeStr":Ljava/lang/String;
    const-string/jumbo v47, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 927
    .local v20, "fpsRangeStrs":[Ljava/lang/String;
    new-instance v47, Landroid/util/Range;

    const/16 v48, 0x0

    aget-object v48, v20, v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x1

    aget-object v49, v20, v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v49

    invoke-direct/range {v47 .. v49}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface/range {v46 .. v47}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    goto :goto_3

    .line 939
    .end local v18    # "fpsRangeStr":Ljava/lang/String;
    .end local v19    # "fpsRangeStr$iterator":Ljava/util/Iterator;
    .end local v20    # "fpsRangeStrs":[Ljava/lang/String;
    :cond_4
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 940
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :goto_4
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_5

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/util/Size;

    .line 941
    .restart local v44    # "size":Landroid/util/Size;
    invoke-virtual/range {v44 .. v44}, Landroid/util/Size;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    goto :goto_4

    .line 944
    .end local v44    # "size":Landroid/util/Size;
    :cond_5
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v48, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 945
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :goto_5
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_6

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/util/Size;

    .line 946
    .restart local v44    # "size":Landroid/util/Size;
    invoke-virtual/range {v44 .. v44}, Landroid/util/Size;->hashCode()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v24, v24, v48

    goto :goto_5

    .line 948
    .end local v44    # "size":Landroid/util/Size;
    :cond_6
    sget-object v47, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v48, "loadCharacteristics() - End, hash code: "

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v47 .. v49}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 950
    return-wide v24
.end method

.method private loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 751
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 753
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 754
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_0
    return-object v2

    .line 757
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 758
    .local v0, "element":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 957
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 958
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget-object v4, p0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 959
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 960
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_0
    return-object v2

    .line 963
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 964
    .local v0, "element":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 68
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 973
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v64, "saveCharacteristics() - Start"

    invoke-static/range {v63 .. v64}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-wide/16 v22, 0x0

    .line 976
    .local v22, "hashCode":J
    const-string/jumbo v63, "ro.build.date.YmdHM"

    invoke-static/range {v63 .. v63}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 977
    .local v36, "romVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v63, v0

    invoke-interface/range {v63 .. v63}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 978
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 981
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 982
    .local v4, "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_0

    .line 984
    invoke-static {v4}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    .line 975
    const-wide/16 v66, 0x0

    .line 984
    add-long v22, v66, v64

    .line 985
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static {v4}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 989
    :cond_0
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 990
    .local v5, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_1

    .line 992
    invoke-static {v5}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 993
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static {v5}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 997
    :cond_1
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 998
    .local v6, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_2

    .line 1000
    invoke-static {v6}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1001
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static {v6}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1005
    :cond_2
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1006
    .local v7, "defaultFaceBeautyValue":Ljava/lang/Integer;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1007
    invoke-virtual {v7}, Ljava/lang/Integer;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1010
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Rational;

    .line 1011
    .local v9, "evStep":Landroid/util/Rational;
    if-eqz v9, :cond_3

    .line 1013
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual {v9}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1014
    invoke-virtual {v9}, Landroid/util/Rational;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1018
    :cond_3
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    .line 1019
    .local v12, "exposureCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string/jumbo v64, ","

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1020
    .local v10, "expCompRangeStr":Ljava/lang/String;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1021
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1024
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    .line 1025
    .local v13, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string/jumbo v64, ","

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1026
    .local v11, "expTimeRangeStr":Ljava/lang/String;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-interface {v8, v0, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1027
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1030
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 1031
    .local v15, "faceBeautyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_4

    .line 1033
    invoke-static {v15}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1034
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static {v15}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1038
    :cond_4
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 1039
    .local v14, "faceBeautyValue":Ljava/lang/Integer;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1040
    invoke-virtual {v14}, Ljava/lang/Integer;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1043
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 1044
    .local v16, "faceCount":Ljava/lang/Integer;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1045
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1048
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    .line 1049
    .local v17, "flashAvailable":Ljava/lang/Boolean;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1050
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1053
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/Range;

    .line 1054
    .local v18, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string/jumbo v64, ","

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1055
    .local v19, "focusStr":Ljava/lang/String;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1056
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1059
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 1060
    .local v20, "hardwareLevel":Ljava/lang/Integer;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1061
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1064
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    .line 1065
    .local v21, "isBurstSupported":Ljava/lang/Boolean;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1066
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1069
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    .line 1070
    .local v24, "isMirrorSupported":Ljava/lang/Boolean;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1071
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1074
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    .line 1075
    .local v25, "isWatermarkSupported":Ljava/lang/Boolean;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1076
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1079
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Range;

    .line 1080
    .local v26, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string/jumbo v64, ","

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v26 .. v26}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1081
    .local v27, "isoStr":Ljava/lang/String;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v27

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1082
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1085
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 1086
    .local v28, "lensFacing":Ljava/lang/Integer;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1087
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1090
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 1091
    .local v29, "maxAE":Ljava/lang/Integer;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1092
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1095
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 1096
    .local v30, "maxAF":Ljava/lang/Integer;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1097
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1100
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Float;

    .line 1101
    .local v31, "maxDigitalZoom":Ljava/lang/Float;
    if-eqz v31, :cond_5

    .line 1103
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1104
    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v63, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v64

    add-float v63, v63, v64

    move/from16 v0, v63

    float-to-long v0, v0

    move-wide/from16 v22, v0

    .line 1108
    :cond_5
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/List;

    .line 1109
    .local v34, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_7

    .line 1111
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1112
    .local v35, "pictureSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "pictureSize$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_6

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/Size;

    .line 1114
    .local v32, "pictureSize":Landroid/util/Size;
    invoke-virtual/range {v32 .. v32}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v35

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-virtual/range {v32 .. v32}, Landroid/util/Size;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    goto :goto_0

    .line 1117
    .end local v32    # "pictureSize":Landroid/util/Size;
    :cond_6
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1121
    .end local v33    # "pictureSize$iterator":Ljava/util/Iterator;
    .end local v35    # "pictureSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    .line 1122
    .local v37, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_8

    .line 1124
    invoke-static/range {v37 .. v37}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1125
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v37 .. v37}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1129
    :cond_8
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 1130
    .local v38, "sensorOrientation":Ljava/lang/Integer;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1131
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1134
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/util/SizeF;

    .line 1135
    .local v39, "sensorPhysicalSize":Landroid/util/SizeF;
    invoke-virtual/range {v39 .. v39}, Landroid/util/SizeF;->toString()Ljava/lang/String;

    move-result-object v40

    .line 1136
    .local v40, "sensorPhysicalSizeStr":Ljava/lang/String;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v40

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1137
    invoke-virtual/range {v39 .. v39}, Landroid/util/SizeF;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1140
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/util/Size;

    .line 1141
    .local v41, "sensorPixelSizeFull":Landroid/util/Size;
    invoke-virtual/range {v41 .. v41}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1142
    .local v42, "sensorPixelSizeFullStr":Ljava/lang/String;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v42

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1143
    invoke-virtual/range {v41 .. v41}, Landroid/util/Size;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1146
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/graphics/Rect;

    .line 1147
    .local v43, "sensorRect":Landroid/graphics/Rect;
    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v44

    .line 1148
    .local v44, "sensorRectStr":Ljava/lang/String;
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v44

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1149
    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    .line 1152
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    .line 1153
    .local v47, "surfaceSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_a

    .line 1155
    new-instance v48, Ljava/util/HashSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashSet;-><init>()V

    .line 1156
    .local v48, "surfaceSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .local v46, "surfaceSize$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_9

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/util/Size;

    .line 1158
    .local v45, "surfaceSize":Landroid/util/Size;
    invoke-virtual/range {v45 .. v45}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v48

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1159
    invoke-virtual/range {v45 .. v45}, Landroid/util/Size;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    goto :goto_1

    .line 1161
    .end local v45    # "surfaceSize":Landroid/util/Size;
    :cond_9
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1165
    .end local v46    # "surfaceSize$iterator":Ljava/util/Iterator;
    .end local v48    # "surfaceSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/List;

    .line 1166
    .local v52, "targetFPSRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v52, :cond_d

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_d

    .line 1168
    new-instance v53, Ljava/util/HashSet;

    invoke-direct/range {v53 .. v53}, Ljava/util/HashSet;-><init>()V

    .line 1169
    .local v53, "targetFPSRangesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v52 .. v52}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .local v50, "targetFPSRange$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_c

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/util/Range;

    .line 1171
    .local v49, "targetFPSRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v49 .. v49}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string/jumbo v64, ","

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v49 .. v49}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1172
    .local v51, "targetFPSRangeStr":Ljava/lang/String;
    move-object/from16 v0, v53

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_b

    .line 1173
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    goto :goto_2

    .line 1175
    .end local v49    # "targetFPSRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v51    # "targetFPSRangeStr":Ljava/lang/String;
    :cond_c
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v53

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1179
    .end local v50    # "targetFPSRange$iterator":Ljava/util/Iterator;
    .end local v53    # "targetFPSRangesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    .line 1180
    .local v56, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_f

    .line 1182
    new-instance v57, Ljava/util/HashSet;

    invoke-direct/range {v57 .. v57}, Ljava/util/HashSet;-><init>()V

    .line 1183
    .local v57, "thumbnailSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .local v55, "thumanailSize$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_e

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/util/Size;

    .line 1185
    .local v54, "thumanailSize":Landroid/util/Size;
    invoke-virtual/range {v54 .. v54}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v57

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1186
    invoke-virtual/range {v54 .. v54}, Landroid/util/Size;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    goto :goto_3

    .line 1188
    .end local v54    # "thumanailSize":Landroid/util/Size;
    :cond_e
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v57

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1192
    .end local v55    # "thumanailSize$iterator":Ljava/util/Iterator;
    .end local v57    # "thumbnailSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/util/List;

    .line 1193
    .local v61, "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_11

    .line 1195
    new-instance v62, Ljava/util/HashSet;

    invoke-direct/range {v62 .. v62}, Ljava/util/HashSet;-><init>()V

    .line 1196
    .local v62, "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v61 .. v61}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .local v60, "videoSize$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_10

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/util/Size;

    .line 1198
    .local v59, "videoSize":Landroid/util/Size;
    invoke-virtual/range {v59 .. v59}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-interface/range {v62 .. v63}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-virtual/range {v59 .. v59}, Landroid/util/Size;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    goto :goto_4

    .line 1201
    .end local v59    # "videoSize":Landroid/util/Size;
    :cond_10
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v62

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1205
    .end local v60    # "videoSize$iterator":Ljava/util/Iterator;
    .end local v62    # "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/util/List;

    .line 1206
    .local v58, "video60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_13

    .line 1208
    new-instance v62, Ljava/util/HashSet;

    invoke-direct/range {v62 .. v62}, Ljava/util/HashSet;-><init>()V

    .line 1209
    .restart local v62    # "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v58 .. v58}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "videoSize$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_12

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/util/Size;

    .line 1211
    .restart local v59    # "videoSize":Landroid/util/Size;
    invoke-virtual/range {v59 .. v59}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-interface/range {v62 .. v63}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-virtual/range {v59 .. v59}, Landroid/util/Size;->hashCode()I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v64, v0

    add-long v22, v22, v64

    goto :goto_5

    .line 1214
    .end local v59    # "videoSize":Landroid/util/Size;
    :cond_12
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v62

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1218
    .end local v60    # "videoSize$iterator":Ljava/util/Iterator;
    .end local v62    # "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const-string/jumbo v63, "HashCode"

    move-object/from16 v0, v63

    move-wide/from16 v1, v22

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1219
    const-string/jumbo v63, "RomBuildVersion"

    move-object/from16 v0, v63

    move-object/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1220
    const-string/jumbo v63, "Version"

    const/16 v64, 0xf

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1221
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1223
    sget-object v63, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v64, "saveCharacteristics() - End, hash code: "

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v63 .. v65}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 971
    return-void
.end method
