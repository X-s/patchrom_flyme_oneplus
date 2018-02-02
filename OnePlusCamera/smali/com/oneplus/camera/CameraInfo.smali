.class public Lcom/oneplus/camera/CameraInfo;
.super Lcom/oneplus/base/BasicBaseObject;
.source "CameraInfo.java"


# static fields
.field private static final ENABLE_LOG:Z = false

.field private static final INVALID_PREVIEW_HEIGHT:I = 0x4b0

.field private static final INVALID_PREVIEW_SIZE:Ljava/lang/String; = "1600x1200"

.field private static final INVALID_PREVIEW_WIDTH:I = 0x640

.field public static final LENS_FACING_BACK:I = 0x1

.field public static final LENS_FACING_BACK_TELE:I = -0x2

.field public static final LENS_FACING_BACK_WIDE:I = -0x1

.field public static final LENS_FACING_EXTERNAL:I = 0x2

.field public static final LENS_FACING_FRONT:I = 0x0

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

.field public static final PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
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

.field public static final PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/FlashMode;",
            ">;>;"
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

.field public static final PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
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

.field public static final PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;
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

.field private static final VERSION:I = 0x11


# instance fields
.field private m_CharsPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 42
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AWBModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    .line 47
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AFModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    .line 52
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Capabilities"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    .line 56
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "EVStep"

    const-class v2, Landroid/util/Rational;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v5, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    .line 61
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureCompRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v5, Landroid/util/Range;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 66
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureTimeRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v5, Landroid/util/Range;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 70
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyDefaultValue"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 74
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyValue"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 79
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyValueList"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    .line 83
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FlashAvailable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    .line 88
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FlashModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-array v5, v4, [Lcom/oneplus/camera/FlashMode;

    sget-object v6, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    aput-object v6, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    .line 93
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FocusRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v5, Landroid/util/Range;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 97
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HardwareLevel"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 101
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBokehOriginalPictureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 105
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBokehSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 109
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsBurstCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 113
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsHighVideoFrameRateSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 117
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsMirrorSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 121
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsStandaloneFaceBeautySupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 125
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsWatermarkSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 130
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ISORange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 134
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 138
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxAECount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 142
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxAFCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 146
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxDigitalZoom"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    .line 151
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PictureSizes"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 156
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SceneModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    .line 160
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorRect"

    const-class v2, Landroid/graphics/Rect;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    .line 164
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorPixelSizeFull"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v8, v8}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    .line 168
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SensorPhysicalSize"

    const-class v2, Landroid/util/SizeF;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    new-instance v4, Landroid/util/SizeF;

    invoke-direct {v4, v9, v9}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 173
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "SurfaceSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 178
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "TargetFPSRanges"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    .line 183
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 188
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Video60FpsSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 192
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxFaceCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 196
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "LensFacing"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    .line 201
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ThumbnailSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 231
    const-class v0, Lcom/oneplus/camera/CameraInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    .line 232
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

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;I)V
    .locals 15
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
    .line 244
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 281
    const/4 v13, 0x0

    .line 282
    .local v13, "saveCameraInfo":Z
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PREFERENCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    .line 286
    iget-object v2, p0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "HashCode"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 287
    .local v10, "hashcodeFromPrefs":Ljava/lang/Long;
    iget-object v2, p0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "RomBuildVersion"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 288
    .local v12, "romVersionFromPrefes":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "Version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 289
    .local v14, "versionFromPrefs":I
    const-string/jumbo v2, "ro.build.date.YmdHM"

    invoke-static {v2}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 292
    .local v11, "romVersion":Ljava/lang/String;
    const/16 v2, 0x11

    if-eq v14, v2, :cond_2

    .line 294
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cameraInfo() - Version incompatible: "

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " -> "

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, ", re-write data"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    const/4 v13, 0x1

    .line 322
    .end local v10    # "hashcodeFromPrefs":Ljava/lang/Long;
    .end local v11    # "romVersion":Ljava/lang/String;
    .end local v12    # "romVersionFromPrefes":Ljava/lang/String;
    .end local v14    # "versionFromPrefs":I
    :cond_0
    :goto_0
    if-eqz v13, :cond_6

    .line 324
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraInfo;->saveCameraInfo(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    .line 244
    :cond_1
    :goto_1
    return-void

    .line 297
    .restart local v10    # "hashcodeFromPrefs":Ljava/lang/Long;
    .restart local v11    # "romVersion":Ljava/lang/String;
    .restart local v12    # "romVersionFromPrefes":Ljava/lang/String;
    .restart local v14    # "versionFromPrefs":I
    :cond_2
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 299
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cameraInfo() - Rom version incompatible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", re-write data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v13, 0x1

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 307
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/oneplus/camera/CameraInfo;->loadCharacteristics(Ljava/lang/String;)J

    move-result-wide v8

    .line 308
    .local v8, "hashCode":J
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-nez v2, :cond_4

    .line 309
    return-void

    .line 312
    :cond_4
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cameraInfo() - Data is inconsistent, re-write data"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v13, 0x1

    goto :goto_0

    .line 317
    .end local v8    # "hashCode":J
    :cond_5
    const/4 v13, 0x1

    goto :goto_0

    .line 326
    .end local v10    # "hashcodeFromPrefs":Ljava/lang/Long;
    .end local v11    # "romVersion":Ljava/lang/String;
    .end local v12    # "romVersionFromPrefes":Ljava/lang/String;
    .end local v14    # "versionFromPrefs":I
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p4

    if-gt v0, v2, :cond_1

    .line 327
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cameraInfo() - Camera counts incorrect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", dont save prefs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getCameraCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z
    .locals 74
    .param p1, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 353
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Start ["

    const-string/jumbo v5, "]"

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    const/4 v13, 0x0

    .line 359
    .local v13, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 365
    .end local v13    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_0
    if-nez v13, :cond_0

    .line 366
    const/4 v2, 0x0

    return v2

    .line 362
    .restart local v13    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v16

    .line 363
    .local v16, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get camera characteristics"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 367
    .end local v13    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v16    # "e":Ljava/lang/Throwable;
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 368
    .local v24, "hardwareLevel":I
    const/4 v2, 0x2

    move/from16 v0, v24

    if-ne v0, v2, :cond_1

    const/16 v33, 0x1

    .line 371
    .local v33, "isLegacyCamera":Z
    :goto_1
    if-eqz v33, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->getCameraParameters(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    move-result-object v57

    .line 374
    :goto_2
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/oneplus/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 375
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/oneplus/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 376
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/oneplus/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 377
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 378
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 379
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 380
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 381
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 382
    if-nez v57, :cond_4

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 384
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v20, "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    sget-object v2, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    array-length v5, v2

    :goto_3
    if-ge v3, v5, :cond_3

    aget v9, v2, v3

    .line 388
    .local v9, "aeMode":I
    packed-switch v9, :pswitch_data_0

    .line 386
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 368
    .end local v9    # "aeMode":I
    .end local v20    # "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .end local v33    # "isLegacyCamera":Z
    :cond_1
    const/16 v33, 0x0

    .restart local v33    # "isLegacyCamera":Z
    goto/16 :goto_1

    .line 371
    :cond_2
    const/16 v57, 0x0

    .local v57, "parameters":Landroid/hardware/Camera$Parameters;
    goto/16 :goto_2

    .line 391
    .end local v57    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v9    # "aeMode":I
    .restart local v20    # "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    :pswitch_0
    sget-object v7, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 394
    :pswitch_1
    sget-object v7, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 397
    :pswitch_2
    sget-object v7, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 401
    .end local v9    # "aeMode":I
    :cond_3
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 403
    .end local v20    # "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    :cond_4
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/camera/CameraInfo;->getFocusRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 404
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 405
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 406
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 407
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 408
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 409
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 410
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/camera/CameraInfo;->getPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 411
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/oneplus/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 412
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 413
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SizeF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 414
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 415
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 416
    if-nez v57, :cond_5

    .line 417
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/camera/CameraInfo;->getSurfaceSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 418
    :cond_5
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/camera/CameraInfo;->getTargetFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 419
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/camera/CameraInfo;->getThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 420
    if-nez v57, :cond_6

    .line 421
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/camera/CameraInfo;->getVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 424
    :cond_6
    if-eqz v57, :cond_27

    .line 427
    const-string/jumbo v2, "dual-camera-lens"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 428
    .local v15, "dualCameraLens":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 430
    const-string/jumbo v2, "wide"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 433
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 434
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 441
    :cond_7
    :goto_5
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCameraCharacteristics() - dualCameraLens: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_8
    invoke-virtual/range {v57 .. v57}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v41

    .line 445
    .local v41, "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v58, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/16 v28, 0x0

    .line 447
    .local v28, "invalidPreviewSizeFound":Z
    if-eqz v41, :cond_b

    .line 449
    const/16 v27, 0x0

    .local v27, "i":I
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "count":I
    :goto_6
    move/from16 v0, v27

    if-ge v0, v14, :cond_b

    .line 451
    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/hardware/Camera$Size;

    .line 452
    .local v42, "legacySize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v42

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0x640

    if-ne v2, v3, :cond_9

    move-object/from16 v0, v42

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x4b0

    if-ne v2, v3, :cond_9

    .line 453
    const/16 v28, 0x1

    .line 454
    :cond_9
    new-instance v2, Landroid/util/Size;

    move-object/from16 v0, v42

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v42

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v5}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v58

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    .line 430
    .end local v14    # "count":I
    .end local v27    # "i":I
    .end local v28    # "invalidPreviewSizeFound":Z
    .end local v41    # "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v42    # "legacySize":Landroid/hardware/Camera$Size;
    .end local v58    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_a
    const-string/jumbo v2, "tele"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 437
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 438
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 458
    .restart local v28    # "invalidPreviewSizeFound":Z
    .restart local v41    # "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v58    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_b
    if-eqz v28, :cond_c

    .line 460
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - invalidPreviewSizeFound[1600x1200], list all previewSize."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/16 v27, 0x0

    .restart local v27    # "i":I
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v14

    .restart local v14    # "count":I
    :goto_7
    move/from16 v0, v27

    if-ge v0, v14, :cond_c

    .line 463
    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/hardware/Camera$Size;

    .line 464
    .restart local v42    # "legacySize":Landroid/hardware/Camera$Size;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCameraCharacteristics() - Camera1 PROP_SURFACE_SIZES W: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "_H: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 468
    .end local v14    # "count":I
    .end local v27    # "i":I
    .end local v42    # "legacySize":Landroid/hardware/Camera$Size;
    :cond_c
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 471
    invoke-virtual/range {v57 .. v57}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v43

    .line 472
    .local v43, "legacyVideoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v68, Ljava/util/ArrayList;

    invoke-direct/range {v68 .. v68}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v68, "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v43, :cond_d

    .line 475
    const/16 v27, 0x0

    .restart local v27    # "i":I
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v14

    .restart local v14    # "count":I
    :goto_8
    move/from16 v0, v27

    if-ge v0, v14, :cond_d

    .line 477
    move-object/from16 v0, v43

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/hardware/Camera$Size;

    .line 478
    .restart local v42    # "legacySize":Landroid/hardware/Camera$Size;
    new-instance v2, Landroid/util/Size;

    move-object/from16 v0, v42

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v42

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v5}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v68

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 481
    .end local v14    # "count":I
    .end local v27    # "i":I
    .end local v42    # "legacySize":Landroid/hardware/Camera$Size;
    :cond_d
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 486
    :try_start_1
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v65, "video60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const-string/jumbo v2, "support-60fps-video-sizes"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 488
    .local v67, "video60FpsSizesStr":Ljava/lang/String;
    const/16 v66, 0x0

    .line 490
    .local v66, "video60FpsSizesArr":[Ljava/lang/String;
    if-eqz v67, :cond_10

    .line 492
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCameraCharacteristics() - video60FpsSizesStr : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v2, ","

    move-object/from16 v0, v67

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v66

    .line 495
    .local v66, "video60FpsSizesArr":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v66

    array-length v3, v0

    :goto_9
    if-ge v2, v3, :cond_10

    aget-object v62, v66, v2

    .line 497
    .local v62, "size":Ljava/lang/String;
    const-string/jumbo v5, "x"

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v70

    .line 498
    .local v70, "xIndex":I
    if-gez v70, :cond_e

    .line 495
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 500
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 501
    .local v69, "widthStr":Ljava/lang/String;
    add-int/lit8 v5, v70, 0x1

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 502
    .local v26, "heightStr":Ljava/lang/String;
    new-instance v5, Landroid/util/Size;

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v71

    move/from16 v0, v71

    invoke-direct {v5, v7, v0}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v65

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 508
    .end local v26    # "heightStr":Ljava/lang/String;
    .end local v62    # "size":Ljava/lang/String;
    .end local v65    # "video60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v66    # "video60FpsSizesArr":[Ljava/lang/String;
    .end local v67    # "video60FpsSizesStr":Ljava/lang/String;
    .end local v69    # "widthStr":Ljava/lang/String;
    .end local v70    # "xIndex":I
    :catch_1
    move-exception v16

    .line 509
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when video 60fps list"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 514
    .end local v16    # "e":Ljava/lang/Throwable;
    :goto_b
    invoke-virtual/range {v57 .. v57}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v21

    .line 515
    .local v21, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .restart local v20    # "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    sget-object v2, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    if-eqz v21, :cond_13

    .line 519
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .local v56, "mode$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_c
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    .line 521
    .local v55, "mode":Ljava/lang/String;
    const-string/jumbo v2, "on"

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 524
    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 505
    .end local v20    # "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .end local v21    # "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v55    # "mode":Ljava/lang/String;
    .end local v56    # "mode$iterator":Ljava/util/Iterator;
    .restart local v65    # "video60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v67    # "video60FpsSizesStr":Ljava/lang/String;
    :cond_10
    :try_start_2
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    .line 521
    .end local v65    # "video60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v67    # "video60FpsSizesStr":Ljava/lang/String;
    .restart local v20    # "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .restart local v21    # "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v55    # "mode":Ljava/lang/String;
    .restart local v56    # "mode$iterator":Ljava/util/Iterator;
    :cond_11
    const-string/jumbo v2, "auto"

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 527
    sget-object v2, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 521
    :cond_12
    const-string/jumbo v2, "torch"

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 530
    sget-object v2, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 535
    .end local v55    # "mode":Ljava/lang/String;
    .end local v56    # "mode$iterator":Ljava/util/Iterator;
    :cond_13
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 536
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_1b

    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 539
    invoke-virtual/range {v57 .. v57}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v61

    .line 540
    .local v61, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "manual"

    move-object/from16 v0, v61

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 542
    const/16 v44, 0x1

    .line 543
    .local v44, "manualCaps":I
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 544
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    .end local v44    # "manualCaps":I
    :cond_14
    const/16 v32, 0x0

    .line 551
    .local v32, "isFaceBeautySupported":Z
    :try_start_3
    const-string/jumbo v2, "is-face-beauty-enabled"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 552
    .local v8, "isFaceBeautyEnbaled":Ljava/lang/String;
    const-string/jumbo v2, "face-beauty-current-value"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "faceBeautyValue":Ljava/lang/String;
    const-string/jumbo v2, "face-beauty-values"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, "faceBeautyValueListStr":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Face beauty value : "

    const-string/jumbo v5, ", value list : "

    const-string/jumbo v7, ", stand alone face beauty : "

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v19, "faceBeautyValuseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 585
    :cond_15
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Face beauty value list is empty"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 594
    :goto_e
    if-nez v32, :cond_16

    .line 596
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 597
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 598
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 599
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 606
    .end local v4    # "faceBeautyValue":Ljava/lang/String;
    .end local v6    # "faceBeautyValueListStr":Ljava/lang/String;
    .end local v8    # "isFaceBeautyEnbaled":Ljava/lang/String;
    .end local v19    # "faceBeautyValuseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_16
    :goto_f
    :try_start_4
    const-string/jumbo v2, "min-focus-pos-index"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 607
    .local v53, "minFocus":Ljava/lang/String;
    const-string/jumbo v2, "max-focus-pos-index"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 608
    .local v48, "maxFocus":Ljava/lang/String;
    if-eqz v53, :cond_17

    if-nez v48, :cond_18

    .line 610
    :cond_17
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Cannot get focus position min and max, use [0,499]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string/jumbo v53, "0"

    .line 612
    const-string/jumbo v48, "499"

    .line 614
    :cond_18
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Landroid/util/Range;

    invoke-static/range {v53 .. v53}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static/range {v48 .. v48}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 625
    .end local v48    # "maxFocus":Ljava/lang/String;
    .end local v53    # "minFocus":Ljava/lang/String;
    :goto_10
    :try_start_5
    const-string/jumbo v2, "min-exposure-time"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 626
    .local v52, "minExpStr":Ljava/lang/String;
    const-string/jumbo v2, "max-exposure-time"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 627
    .local v45, "maxExpStr":Ljava/lang/String;
    invoke-static/range {v52 .. v52}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v72, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, v72

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v50

    .line 628
    .local v50, "minExp":J
    invoke-static/range {v45 .. v45}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v72, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, v72

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v46

    .line 629
    .local v46, "maxExp":J
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Landroid/util/Range;

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 630
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Exposure string range: "

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v52, v5, v7

    const-string/jumbo v7, ", "

    const/16 v71, 0x1

    aput-object v7, v5, v71

    const/4 v7, 0x2

    aput-object v45, v5, v7

    const-string/jumbo v7, ", long range: "

    const/16 v71, 0x3

    aput-object v7, v5, v71

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v71, 0x4

    aput-object v7, v5, v71

    const-string/jumbo v7, ", "

    const/16 v71, 0x5

    aput-object v7, v5, v71

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v71, 0x6

    aput-object v7, v5, v71

    invoke-static {v2, v3, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 641
    .end local v45    # "maxExpStr":Ljava/lang/String;
    .end local v46    # "maxExp":J
    .end local v50    # "minExp":J
    .end local v52    # "minExpStr":Ljava/lang/String;
    :goto_11
    :try_start_6
    const-string/jumbo v2, "iso-values"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 642
    .local v40, "isoValuesStr":Ljava/lang/String;
    const-string/jumbo v2, ","

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .line 643
    .local v39, "isoValuesArr":[Ljava/lang/String;
    const v54, 0x7fffffff

    .line 644
    .local v54, "minISO":I
    const/high16 v49, -0x80000000

    .line 645
    .local v49, "maxISO":I
    move-object/from16 v0, v39

    array-length v2, v0

    add-int/lit8 v27, v2, -0x1

    .restart local v27    # "i":I
    :goto_12
    if-ltz v27, :cond_21

    .line 647
    aget-object v36, v39, v27

    .line 648
    .local v36, "isoRawValue":Ljava/lang/String;
    const-string/jumbo v2, "^ISO[\\d]+$"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 650
    const/4 v2, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    .line 651
    .local v38, "isoValueStr":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    move-result v37

    .line 652
    .local v37, "isoValue":I
    move/from16 v0, v37

    move/from16 v1, v54

    if-ge v0, v1, :cond_19

    .line 653
    move/from16 v54, v37

    .line 654
    :cond_19
    move/from16 v0, v37

    move/from16 v1, v49

    if-le v0, v1, :cond_1a

    .line 655
    move/from16 v49, v37

    .line 645
    .end local v37    # "isoValue":I
    .end local v38    # "isoValueStr":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v27, v27, -0x1

    goto :goto_12

    .line 536
    .end local v27    # "i":I
    .end local v32    # "isFaceBeautySupported":Z
    .end local v36    # "isoRawValue":Ljava/lang/String;
    .end local v39    # "isoValuesArr":[Ljava/lang/String;
    .end local v40    # "isoValuesStr":Ljava/lang/String;
    .end local v49    # "maxISO":I
    .end local v54    # "minISO":I
    .end local v61    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 561
    .restart local v4    # "faceBeautyValue":Ljava/lang/String;
    .restart local v6    # "faceBeautyValueListStr":Ljava/lang/String;
    .restart local v8    # "isFaceBeautyEnbaled":Ljava/lang/String;
    .restart local v19    # "faceBeautyValuseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v32    # "isFaceBeautySupported":Z
    .restart local v61    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1c
    :try_start_7
    const-string/jumbo v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 562
    .local v18, "faceBeautyValueArr":[Ljava/lang/String;
    if-eqz v18, :cond_1e

    .line 564
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_13
    move-object/from16 v0, v18

    array-length v2, v0

    move/from16 v0, v27

    if-ge v0, v2, :cond_1e

    .line 566
    if-nez v4, :cond_1d

    .line 568
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Set default face beauty value : "

    aget-object v5, v18, v27

    invoke-static {v2, v3, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    aget-object v4, v18, v27

    .line 572
    :cond_1d
    aget-object v2, v18, v27

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    .line 573
    .local v64, "value":I
    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v27, v27, 0x1

    goto :goto_13

    .line 578
    .end local v27    # "i":I
    .end local v64    # "value":I
    :cond_1e
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    if-eqz v8, :cond_1f

    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 579
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 580
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 581
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 582
    const/16 v32, 0x1

    goto/16 :goto_e

    .line 578
    :cond_1f
    const/4 v2, 0x0

    goto :goto_14

    .line 588
    .end local v4    # "faceBeautyValue":Ljava/lang/String;
    .end local v6    # "faceBeautyValueListStr":Ljava/lang/String;
    .end local v8    # "isFaceBeautyEnbaled":Ljava/lang/String;
    .end local v18    # "faceBeautyValueArr":[Ljava/lang/String;
    .end local v19    # "faceBeautyValuseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_2
    move-exception v16

    .line 589
    .restart local v16    # "e":Ljava/lang/Throwable;
    :try_start_8
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get face beauty values"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 590
    const/16 v32, 0x0

    .line 594
    if-nez v32, :cond_16

    .line 596
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 597
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 598
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 599
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 593
    .end local v16    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 594
    if-nez v32, :cond_20

    .line 596
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 597
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 598
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 599
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 593
    :cond_20
    throw v2

    .line 617
    :catch_3
    move-exception v16

    .line 618
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get manual focus range, use [0,499]"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Landroid/util/Range;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v7, 0x43f98000    # 499.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 633
    .end local v16    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v16

    .line 634
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get manual exposure range, use [125000,1000000000]"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 635
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Landroid/util/Range;

    const-wide/32 v72, 0x1e848

    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v72, 0x3b9aca00

    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 658
    .end local v16    # "e":Ljava/lang/Throwable;
    .restart local v27    # "i":I
    .restart local v39    # "isoValuesArr":[Ljava/lang/String;
    .restart local v40    # "isoValuesStr":Ljava/lang/String;
    .restart local v49    # "maxISO":I
    .restart local v54    # "minISO":I
    :cond_21
    :try_start_9
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Landroid/util/Range;

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 669
    .end local v27    # "i":I
    .end local v39    # "isoValuesArr":[Ljava/lang/String;
    .end local v40    # "isoValuesStr":Ljava/lang/String;
    .end local v49    # "maxISO":I
    .end local v54    # "minISO":I
    :goto_15
    :try_start_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v10, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v57 .. v57}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v63

    .line 671
    .local v63, "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v27, v2, -0x1

    .restart local v27    # "i":I
    :goto_16
    if-ltz v27, :cond_2c

    .line 673
    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 674
    .local v11, "awbStr":Ljava/lang/String;
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 675
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 671
    :cond_22
    :goto_17
    add-int/lit8 v27, v27, -0x1

    goto :goto_16

    .line 661
    .end local v10    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "awbStr":Ljava/lang/String;
    .end local v27    # "i":I
    .end local v63    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5
    move-exception v16

    .line 662
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get manual ISO range, use [100,1600]"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Landroid/util/Range;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x640

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_15

    .line 676
    .end local v16    # "e":Ljava/lang/Throwable;
    .restart local v10    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "awbStr":Ljava/lang/String;
    .restart local v27    # "i":I
    .restart local v63    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_23
    :try_start_b
    const-string/jumbo v2, "cloudy-daylight"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 677
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_17

    .line 690
    .end local v10    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "awbStr":Ljava/lang/String;
    .end local v27    # "i":I
    .end local v63    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_6
    move-exception v16

    .line 691
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get awb modes"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 697
    .end local v16    # "e":Ljava/lang/Throwable;
    :goto_18
    :try_start_c
    const-string/jumbo v2, "flip-mode-values"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 698
    .local v22, "flipModeValueStr":Ljava/lang/String;
    const-string/jumbo v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 699
    .local v23, "flipModeValues":[Ljava/lang/String;
    const/16 v34, 0x0

    .line 700
    .local v34, "isMirrorSupported":Z
    const-string/jumbo v2, "flip-h"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 701
    const-string/jumbo v2, "flip-v"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 700
    if-eqz v2, :cond_24

    .line 702
    const/16 v34, 0x1

    .line 703
    :cond_24
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 713
    .end local v22    # "flipModeValueStr":Ljava/lang/String;
    .end local v23    # "flipModeValues":[Ljava/lang/String;
    .end local v34    # "isMirrorSupported":Z
    :goto_19
    :try_start_d
    const-string/jumbo v2, "scene-mode-values"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 714
    .local v59, "sceneModeValueStr":Ljava/lang/String;
    const-string/jumbo v2, ","

    move-object/from16 v0, v59

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v60

    .line 715
    .local v60, "sceneModeValues":[Ljava/lang/String;
    const-string/jumbo v2, "hdr-auto"

    move-object/from16 v0, v60

    invoke-static {v0, v2}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 717
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - auto hdr is supported"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v3, 0x2711

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 719
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v3, 0x2711

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 730
    .end local v59    # "sceneModeValueStr":Ljava/lang/String;
    .end local v60    # "sceneModeValues":[Ljava/lang/String;
    :cond_25
    :goto_1a
    :try_start_e
    const-string/jumbo v2, "scene-mode-values"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 731
    .restart local v59    # "sceneModeValueStr":Ljava/lang/String;
    const/16 v25, 0x0

    .line 732
    .local v25, "hasVideoHighFrameRate":Z
    const-string/jumbo v2, ","

    move-object/from16 v0, v59

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v60

    .line 733
    .restart local v60    # "sceneModeValues":[Ljava/lang/String;
    const-string/jumbo v2, "high-fps-recording"

    move-object/from16 v0, v60

    invoke-static {v0, v2}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 735
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - video high frame rate is supported"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/16 v25, 0x1

    .line 738
    :cond_26
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 748
    .end local v25    # "hasVideoHighFrameRate":Z
    .end local v59    # "sceneModeValueStr":Ljava/lang/String;
    .end local v60    # "sceneModeValues":[Ljava/lang/String;
    :goto_1b
    :try_start_f
    const-string/jumbo v2, "is-burst-supported"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 749
    .local v12, "burstSupportStr":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - burstSupportStr: "

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/16 v31, 0x0

    .line 752
    .local v31, "isBurstSupported":Z
    :goto_1c
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 762
    .end local v12    # "burstSupportStr":Ljava/lang/String;
    .end local v31    # "isBurstSupported":Z
    :goto_1d
    :try_start_10
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "is-bokeh-supported"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 763
    .local v30, "isBokehSupported":Z
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 765
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "is-bokeh-original-supported"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 766
    .local v29, "isBokehOriginalSupported":Z
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 767
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Bokeh support state : "

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v7, ", bokeh original support state : "

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-static {v2, v3, v5, v7, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    .line 777
    .end local v29    # "isBokehOriginalSupported":Z
    .end local v30    # "isBokehSupported":Z
    :goto_1e
    :try_start_11
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "is-watermark-supported"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 778
    .local v35, "isWatermarkSupported":Z
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 779
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getCameraCharacteristics() - Watermark is"

    if-nez v35, :cond_2e

    const-string/jumbo v2, " not "

    :goto_1f
    const-string/jumbo v7, "supported"

    invoke-static {v3, v5, v2, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    .line 788
    .end local v15    # "dualCameraLens":Ljava/lang/String;
    .end local v20    # "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .end local v21    # "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "invalidPreviewSizeFound":Z
    .end local v32    # "isFaceBeautySupported":Z
    .end local v35    # "isWatermarkSupported":Z
    .end local v41    # "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v43    # "legacyVideoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v58    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v61    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v68    # "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_27
    :goto_20
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 789
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 790
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 791
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 792
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 793
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 794
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 795
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 796
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 797
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 799
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const/4 v2, 0x1

    return v2

    .line 678
    .restart local v10    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "awbStr":Ljava/lang/String;
    .restart local v15    # "dualCameraLens":Ljava/lang/String;
    .restart local v20    # "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .restart local v21    # "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "i":I
    .restart local v28    # "invalidPreviewSizeFound":Z
    .restart local v32    # "isFaceBeautySupported":Z
    .restart local v41    # "legacyPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v43    # "legacyVideoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v58    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v61    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v63    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v68    # "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_28
    :try_start_12
    const-string/jumbo v2, "daylight"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 679
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 680
    :cond_29
    const-string/jumbo v2, "fluorescent"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 681
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 682
    :cond_2a
    const-string/jumbo v2, "incandescent"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 683
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 684
    :cond_2b
    const-string/jumbo v2, "manual"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 685
    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 687
    .end local v11    # "awbStr":Ljava/lang/String;
    :cond_2c
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_18

    .line 706
    .end local v10    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v27    # "i":I
    .end local v63    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7
    move-exception v16

    .line 707
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get mirror supported"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 723
    .end local v16    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v16

    .line 724
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get scene modes"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 741
    .end local v16    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v16

    .line 742
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get video high frame rate supported"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 750
    .end local v16    # "e":Ljava/lang/Throwable;
    .restart local v12    # "burstSupportStr":Ljava/lang/String;
    :cond_2d
    const/16 v31, 0x1

    .restart local v31    # "isBurstSupported":Z
    goto/16 :goto_1c

    .line 755
    .end local v12    # "burstSupportStr":Ljava/lang/String;
    .end local v31    # "isBurstSupported":Z
    :catch_a
    move-exception v16

    .line 756
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Error when get burst capture supported"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 770
    .end local v16    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v17

    .line 771
    .local v17, "ex":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Fail to check Bokeh support state"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 779
    .end local v17    # "ex":Ljava/lang/Throwable;
    .restart local v35    # "isWatermarkSupported":Z
    :cond_2e
    :try_start_13
    const-string/jumbo v2, " "
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    goto/16 :goto_1f

    .line 782
    .end local v35    # "isWatermarkSupported":Z
    :catch_c
    move-exception v16

    .line 783
    .restart local v16    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCameraCharacteristics() - Fail to check watermark supported state"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCameraParameters(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 336
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 337
    .local v0, "cameraDevice":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 338
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    return-object v2

    .line 342
    .end local v0    # "cameraDevice":Landroid/hardware/Camera;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCameraParameters() - Error when get camera parameters"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
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

    .line 808
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 809
    .local v0, "minFocusDistance":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 810
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 811
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
    .line 818
    .local p2, "charKey":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<[I>;"
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 819
    .local v2, "values":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 821
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_0
    return-object v1

    .line 824
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 825
    aget v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
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

    .line 834
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 835
    .local v2, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v4, 0x100

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 836
    .local v3, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v3, :cond_1

    .line 838
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_0
    return-object v1

    .line 841
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 842
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSurfaceSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 8
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
    const/4 v6, 0x0

    .line 851
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 852
    .local v3, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v5, Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    .line 853
    .local v4, "values":[Landroid/util/Size;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/4 v1, 0x0

    .line 855
    .local v1, "invalidPreviewSizeFound":Z
    if-nez v4, :cond_1

    .line 856
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_0
    if-eqz v1, :cond_3

    .line 869
    sget-object v5, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getSurfaceSizes() - invalidPreviewSizeFound[1600x1200], list all previewSize."

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 872
    sget-object v5, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSurfaceSizes() - Camera2 PROP_SURFACE_SIZES values["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 861
    const-string/jumbo v5, "1600x1200"

    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 862
    const/4 v1, 0x1

    .line 863
    :cond_2
    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 876
    .end local v0    # "i":I
    :cond_3
    return-object v2
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

    .line 883
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 884
    .local v0, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_1

    .line 886
    new-instance v3, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_0
    return-object v2

    .line 889
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 890
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
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

    .line 899
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Size;

    .line 900
    .local v2, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v2, :cond_1

    .line 902
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_0
    return-object v1

    .line 905
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 906
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
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

    .line 915
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 916
    .local v2, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v4, Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    .line 917
    .local v3, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v3, :cond_1

    .line 919
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_0
    return-object v1

    .line 922
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 923
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadCharacteristics(Ljava/lang/String;)J
    .locals 60
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 948
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "loadCharacteristics() - Start ["

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, "]"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 953
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-static/range {v56 .. v56}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    .line 949
    const-wide/16 v58, 0x0

    .line 953
    add-long v26, v58, v56

    .line 956
    .local v26, "hashCode":J
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 957
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-static/range {v56 .. v56}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 960
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 961
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-static/range {v56 .. v56}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 965
    .local v4, "defaultFaceBeautyValue":I
    int-to-long v0, v4

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 966
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 970
    .local v47, "rationalStr":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v46

    .line 971
    .local v46, "rational":Landroid/util/Rational;
    invoke-virtual/range {v46 .. v46}, Landroid/util/Rational;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 972
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 976
    .local v8, "exCompRangeStr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 977
    const-string/jumbo v56, ","

    move-object/from16 v0, v56

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 978
    .local v6, "exCompLowerUpperStr":[Ljava/lang/String;
    new-instance v7, Landroid/util/Range;

    const/16 v56, 0x0

    aget-object v56, v6, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x1

    aget-object v57, v6, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    invoke-direct {v7, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 979
    .local v7, "exCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v7}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 983
    .local v11, "exTimeRangeStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 984
    const-string/jumbo v56, ","

    move-object/from16 v0, v56

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 985
    .local v9, "exTimeLowerUpperStr":[Ljava/lang/String;
    new-instance v10, Landroid/util/Range;

    const/16 v56, 0x0

    aget-object v56, v9, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v56

    const/16 v57, 0x1

    aget-object v57, v9, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v57

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    invoke-direct {v10, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 986
    .local v10, "exTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v10}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 989
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 990
    .local v13, "faceBeautyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 991
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v13}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 992
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-static/range {v56 .. v56}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 996
    .local v12, "faceBeautyValue":I
    int-to-long v0, v12

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 997
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, -0x1

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1001
    .local v14, "faceCount":I
    int-to-long v0, v14

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1002
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    sget-object v58, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 1006
    .local v15, "flashAvailable":Ljava/lang/Boolean;
    invoke-virtual {v15}, Ljava/lang/Boolean;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1007
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v15}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    sget-object v58, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v17

    .line 1012
    .local v17, "flashModeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1013
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v16, "flashModeList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .local v54, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_0

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1018
    .local v53, "str":Ljava/lang/String;
    :try_start_0
    const-class v56, Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v56

    check-cast v56, Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v5

    .line 1022
    .local v5, "ex":Ljava/lang/Throwable;
    const-wide/16 v26, 0x0

    .line 1026
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v53    # "str":Ljava/lang/String;
    :cond_0
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1030
    .local v19, "focusRangeStr":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1031
    const-string/jumbo v56, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1032
    .local v20, "focusRangeStrs":[Ljava/lang/String;
    new-instance v18, Landroid/util/Range;

    const/16 v56, 0x0

    aget-object v56, v20, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v56

    const/16 v57, 0x1

    aget-object v57, v20, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v57

    move-object/from16 v0, v18

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1033
    .local v18, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, -0x1

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 1037
    .local v25, "hardwareLevel":I
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1038
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 1042
    .local v29, "isBokehSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1043
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 1047
    .local v28, "isBokehOriginalSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1048
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    sget-object v58, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    .line 1052
    .local v30, "isBurstSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1053
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    sget-object v58, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 1057
    .local v32, "isMirrorSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1058
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    sget-object v58, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 1062
    .local v31, "isHighVideoFrameRateSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1063
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    sget-object v58, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 1067
    .local v33, "isStandaloneFaceBeautySupported":Ljava/lang/Boolean;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1068
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    .line 1072
    .local v34, "isWatermarkSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1073
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1077
    .local v36, "isoRangeStr":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1078
    const-string/jumbo v56, ","

    move-object/from16 v0, v36

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 1079
    .local v37, "isoRangeStrs":[Ljava/lang/String;
    new-instance v35, Landroid/util/Range;

    const/16 v56, 0x0

    aget-object v56, v37, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x1

    aget-object v57, v37, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, v35

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1080
    .local v35, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x1

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 1084
    .local v38, "lensFacing":I
    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1085
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, -0x1

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v39

    .line 1089
    .local v39, "maxAE":I
    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1090
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, -0x1

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 1094
    .local v40, "maxAF":I
    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1095
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/high16 v58, -0x40800000    # -1.0f

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v41

    .line 1099
    .local v41, "maxDigitalZoom":F
    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v56, v0

    add-float v56, v56, v41

    move/from16 v0, v56

    float-to-long v0, v0

    move-wide/from16 v26, v0

    .line 1100
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1103
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1104
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .local v52, "size$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_1

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/util/Size;

    .line 1105
    .local v51, "size":Landroid/util/Size;
    invoke-virtual/range {v51 .. v51}, Landroid/util/Size;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    goto :goto_1

    .line 1108
    .end local v51    # "size":Landroid/util/Size;
    :cond_1
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1109
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-static/range {v56 .. v56}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, -0x1

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v48

    .line 1113
    .local v48, "sensorOrientation":I
    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1114
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1118
    .local v43, "physicalSizeStr":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/util/SizeF;->parseSizeF(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object v42

    .line 1119
    .local v42, "physicalSize":Landroid/util/SizeF;
    invoke-virtual/range {v42 .. v42}, Landroid/util/SizeF;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1120
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1124
    .local v45, "pixelSizeStrg":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v44

    .line 1125
    .local v44, "pixelSize":Landroid/util/Size;
    invoke-virtual/range {v44 .. v44}, Landroid/util/Size;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1126
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1130
    .local v50, "sensorRectStr":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v49

    .line 1131
    .local v49, "sensorRect":Landroid/graphics/Rect;
    invoke-virtual/range {v49 .. v49}, Landroid/graphics/Rect;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    .line 1132
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1135
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1136
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :goto_2
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/util/Size;

    .line 1137
    .restart local v51    # "size":Landroid/util/Size;
    invoke-virtual/range {v51 .. v51}, Landroid/util/Size;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    goto :goto_2

    .line 1140
    .end local v51    # "size":Landroid/util/Size;
    :cond_2
    new-instance v55, Ljava/util/ArrayList;

    invoke-direct/range {v55 .. v55}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v55, "targetFPSRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v24

    .line 1142
    .local v24, "fpsRangesStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v24, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v56

    if-eqz v56, :cond_4

    .line 1151
    :cond_3
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1154
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1155
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :goto_3
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_5

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/util/Size;

    .line 1156
    .restart local v51    # "size":Landroid/util/Size;
    invoke-virtual/range {v51 .. v51}, Landroid/util/Size;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    goto :goto_3

    .line 1144
    .end local v51    # "size":Landroid/util/Size;
    :cond_4
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "fpsRangeStr$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1146
    .local v21, "fpsRangeStr":Ljava/lang/String;
    const-string/jumbo v56, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1147
    .local v23, "fpsRangeStrs":[Ljava/lang/String;
    new-instance v56, Landroid/util/Range;

    const/16 v57, 0x0

    aget-object v57, v23, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    const/16 v58, 0x1

    aget-object v58, v23, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v58

    invoke-direct/range {v56 .. v58}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface/range {v55 .. v56}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    goto :goto_4

    .line 1159
    .end local v21    # "fpsRangeStr":Ljava/lang/String;
    .end local v22    # "fpsRangeStr$iterator":Ljava/util/Iterator;
    .end local v23    # "fpsRangeStrs":[Ljava/lang/String;
    :cond_5
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1160
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :goto_5
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_6

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/util/Size;

    .line 1161
    .restart local v51    # "size":Landroid/util/Size;
    invoke-virtual/range {v51 .. v51}, Landroid/util/Size;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    goto :goto_5

    .line 1164
    .end local v51    # "size":Landroid/util/Size;
    :cond_6
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v57, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/oneplus/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1165
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/List;

    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :goto_6
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_7

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/util/Size;

    .line 1166
    .restart local v51    # "size":Landroid/util/Size;
    invoke-virtual/range {v51 .. v51}, Landroid/util/Size;->hashCode()I

    move-result v56

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v26, v26, v56

    goto :goto_6

    .line 1168
    .end local v51    # "size":Landroid/util/Size;
    :cond_7
    sget-object v56, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v57, "loadCharacteristics() - End, hash code: "

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v56 .. v58}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1170
    return-wide v26
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

    .line 932
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 934
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 935
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_0
    return-object v2

    .line 938
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

    .line 939
    .local v0, "element":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;
    .locals 8
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
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget-object v5, p0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 1179
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1180
    .local v2, "invalidPreviewSizeFound":Z
    if-nez v4, :cond_1

    .line 1181
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    :cond_0
    if-eqz v2, :cond_3

    .line 1201
    sget-object v5, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "loadSizeListFromPrefs() - invalidPreviewSizeFound[1600x1200], list all previewSize."

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1204
    .local v0, "element":Ljava/lang/String;
    sget-object v5, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadSizeListFromPrefs key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v7, v7, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "element$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "element$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1186
    .restart local v0    # "element":Ljava/lang/String;
    sget-object v5, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v5, v5, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1188
    const-string/jumbo v5, "1600x1200"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1190
    const/4 v2, 0x1

    .line 1192
    goto :goto_1

    .line 1195
    :cond_2
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1208
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "element$iterator":Ljava/util/Iterator;
    :cond_3
    return-object v3
.end method

.method private saveCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 76
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 1232
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v72, "saveCharacteristics() - Start"

    invoke-static/range {v71 .. v72}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-wide/16 v24, 0x0

    .line 1235
    .local v24, "hashCode":J
    const-string/jumbo v71, "ro.build.date.YmdHM"

    invoke-static/range {v71 .. v71}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1236
    .local v44, "romVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v71, v0

    invoke-interface/range {v71 .. v71}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1237
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1240
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1241
    .local v4, "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_0

    .line 1243
    invoke-static {v4}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    .line 1234
    const-wide/16 v74, 0x0

    .line 1243
    add-long v24, v74, v72

    .line 1244
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static {v4}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v72

    move-object/from16 v0, v71

    move-object/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1248
    :cond_0
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1249
    .local v5, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_1

    .line 1251
    invoke-static {v5}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1252
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static {v5}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v72

    move-object/from16 v0, v71

    move-object/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1256
    :cond_1
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1257
    .local v6, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_2

    .line 1259
    invoke-static {v6}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1260
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static {v6}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v72

    move-object/from16 v0, v71

    move-object/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1264
    :cond_2
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1265
    .local v7, "defaultFaceBeautyValue":Ljava/lang/Integer;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1266
    invoke-virtual {v7}, Ljava/lang/Integer;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1269
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Rational;

    .line 1270
    .local v9, "evStep":Landroid/util/Rational;
    if-eqz v9, :cond_3

    .line 1272
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual {v9}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v71

    move-object/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1273
    invoke-virtual {v9}, Landroid/util/Rational;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1277
    :cond_3
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    .line 1278
    .local v12, "exposureCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string/jumbo v72, ","

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1279
    .local v10, "expCompRangeStr":Ljava/lang/String;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1280
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1283
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    .line 1284
    .local v13, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string/jumbo v72, ","

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1285
    .local v11, "expTimeRangeStr":Ljava/lang/String;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    invoke-interface {v8, v0, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1286
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1289
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 1290
    .local v15, "faceBeautyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_4

    .line 1292
    invoke-static {v15}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1293
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static {v15}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v72

    move-object/from16 v0, v71

    move-object/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1297
    :cond_4
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 1298
    .local v14, "faceBeautyValue":Ljava/lang/Integer;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1299
    invoke-virtual {v14}, Ljava/lang/Integer;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1302
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 1303
    .local v16, "faceCount":Ljava/lang/Integer;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1304
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1307
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    .line 1308
    .local v17, "flashAvailable":Ljava/lang/Boolean;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1309
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1312
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 1313
    .local v20, "flashModeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/util/List;

    invoke-interface/range {v71 .. v71}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "flashMode$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v71

    if-eqz v71, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/camera/FlashMode;

    .line 1314
    .local v18, "flashMode":Lcom/oneplus/camera/FlashMode;
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/camera/FlashMode;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v20

    move-object/from16 v1, v71

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1315
    .end local v18    # "flashMode":Lcom/oneplus/camera/FlashMode;
    :cond_5
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1316
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1319
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Range;

    .line 1320
    .local v21, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string/jumbo v72, ","

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v21 .. v21}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1321
    .local v22, "focusStr":Ljava/lang/String;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v22

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1322
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1325
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 1326
    .local v23, "hardwareLevel":Ljava/lang/Integer;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1327
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1330
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    .line 1331
    .local v28, "isBokehSupported":Ljava/lang/Boolean;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1332
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1335
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Boolean;

    .line 1336
    .local v27, "isBokehOriginalPicSupported":Ljava/lang/Boolean;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1337
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1340
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Boolean;

    .line 1341
    .local v29, "isBurstSupported":Ljava/lang/Boolean;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1342
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1345
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Boolean;

    .line 1346
    .local v31, "isMirrorSupported":Ljava/lang/Boolean;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1347
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1350
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Boolean;

    .line 1351
    .local v30, "isHighVIdeoFrameSupported":Ljava/lang/Boolean;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1352
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1355
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    .line 1356
    .local v32, "isStandaloneFaceBeautySupported":Ljava/lang/Boolean;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1357
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1360
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Boolean;

    .line 1361
    .local v33, "isWatermarkSupported":Ljava/lang/Boolean;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1362
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1365
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/Range;

    .line 1366
    .local v34, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v34 .. v34}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string/jumbo v72, ","

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v34 .. v34}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1367
    .local v35, "isoStr":Ljava/lang/String;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1368
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1371
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    .line 1372
    .local v36, "lensFacing":Ljava/lang/Integer;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1373
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1376
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    .line 1377
    .local v37, "maxAE":Ljava/lang/Integer;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1378
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1381
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 1382
    .local v38, "maxAF":Ljava/lang/Integer;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1383
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1386
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    .line 1387
    .local v39, "maxDigitalZoom":Ljava/lang/Float;
    if-eqz v39, :cond_6

    .line 1389
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1390
    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v71, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v72

    add-float v71, v71, v72

    move/from16 v0, v71

    float-to-long v0, v0

    move-wide/from16 v24, v0

    .line 1394
    :cond_6
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/List;

    .line 1395
    .local v42, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_8

    .line 1397
    new-instance v43, Ljava/util/HashSet;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashSet;-><init>()V

    .line 1398
    .local v43, "pictureSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v42 .. v42}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "pictureSize$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v71

    if-eqz v71, :cond_7

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/util/Size;

    .line 1400
    .local v40, "pictureSize":Landroid/util/Size;
    invoke-virtual/range {v40 .. v40}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v43

    move-object/from16 v1, v71

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1401
    invoke-virtual/range {v40 .. v40}, Landroid/util/Size;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    goto :goto_1

    .line 1403
    .end local v40    # "pictureSize":Landroid/util/Size;
    :cond_7
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v43

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1407
    .end local v41    # "pictureSize$iterator":Ljava/util/Iterator;
    .end local v43    # "pictureSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/util/List;

    .line 1408
    .local v45, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_9

    .line 1410
    invoke-static/range {v45 .. v45}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1411
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-static/range {v45 .. v45}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v72

    move-object/from16 v0, v71

    move-object/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1415
    :cond_9
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Integer;

    .line 1416
    .local v46, "sensorOrientation":Ljava/lang/Integer;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v72

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1417
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1420
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/util/SizeF;

    .line 1421
    .local v47, "sensorPhysicalSize":Landroid/util/SizeF;
    invoke-virtual/range {v47 .. v47}, Landroid/util/SizeF;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1422
    .local v48, "sensorPhysicalSizeStr":Ljava/lang/String;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v48

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1423
    invoke-virtual/range {v47 .. v47}, Landroid/util/SizeF;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1426
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/util/Size;

    .line 1427
    .local v49, "sensorPixelSizeFull":Landroid/util/Size;
    invoke-virtual/range {v49 .. v49}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v50

    .line 1428
    .local v50, "sensorPixelSizeFullStr":Ljava/lang/String;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v50

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1429
    invoke-virtual/range {v49 .. v49}, Landroid/util/Size;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1432
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/graphics/Rect;

    .line 1433
    .local v51, "sensorRect":Landroid/graphics/Rect;
    invoke-virtual/range {v51 .. v51}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v52

    .line 1434
    .local v52, "sensorRectStr":Ljava/lang/String;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v52

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1435
    invoke-virtual/range {v51 .. v51}, Landroid/graphics/Rect;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    .line 1438
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/List;

    .line 1439
    .local v55, "surfaceSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_d

    .line 1441
    const/16 v26, 0x0

    .line 1442
    .local v26, "invalidPreviewSizeFound":Z
    new-instance v56, Ljava/util/HashSet;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashSet;-><init>()V

    .line 1443
    .local v56, "surfaceSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v55 .. v55}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .local v54, "surfaceSize$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v71

    if-eqz v71, :cond_b

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/util/Size;

    .line 1445
    .local v53, "surfaceSize":Landroid/util/Size;
    const-string/jumbo v71, "1600x1200"

    invoke-virtual/range {v53 .. v53}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v71

    if-eqz v71, :cond_a

    .line 1446
    const/16 v26, 0x1

    .line 1447
    :cond_a
    invoke-virtual/range {v53 .. v53}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v56

    move-object/from16 v1, v71

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1448
    invoke-virtual/range {v53 .. v53}, Landroid/util/Size;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    goto :goto_2

    .line 1451
    .end local v53    # "surfaceSize":Landroid/util/Size;
    :cond_b
    if-eqz v26, :cond_c

    .line 1453
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v72, "saveCameraCharacteristics() - invalidPreviewSizeFound[1600x1200], list all previewSize."

    invoke-static/range {v71 .. v72}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    invoke-interface/range {v55 .. v55}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_3
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v71

    if-eqz v71, :cond_c

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/util/Size;

    .line 1456
    .restart local v53    # "surfaceSize":Landroid/util/Size;
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v73, "saveCameraCharacteristics() - PROP_SURFACE_SIZES WxH: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v53 .. v53}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v71 .. v72}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1459
    .end local v53    # "surfaceSize":Landroid/util/Size;
    :cond_c
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v56

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1463
    .end local v26    # "invalidPreviewSizeFound":Z
    .end local v54    # "surfaceSize$iterator":Ljava/util/Iterator;
    .end local v56    # "surfaceSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/util/List;

    .line 1464
    .local v60, "targetFPSRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v60, :cond_10

    invoke-interface/range {v60 .. v60}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_10

    .line 1466
    new-instance v61, Ljava/util/HashSet;

    invoke-direct/range {v61 .. v61}, Ljava/util/HashSet;-><init>()V

    .line 1467
    .local v61, "targetFPSRangesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v60 .. v60}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v58

    .local v58, "targetFPSRange$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->hasNext()Z

    move-result v71

    if-eqz v71, :cond_f

    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/util/Range;

    .line 1469
    .local v57, "targetFPSRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v57 .. v57}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string/jumbo v72, ","

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v57 .. v57}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    .line 1470
    .local v59, "targetFPSRangeStr":Ljava/lang/String;
    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v71

    if-eqz v71, :cond_e

    .line 1471
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    goto :goto_4

    .line 1473
    .end local v57    # "targetFPSRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v59    # "targetFPSRangeStr":Ljava/lang/String;
    :cond_f
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v61

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1477
    .end local v58    # "targetFPSRange$iterator":Ljava/util/Iterator;
    .end local v61    # "targetFPSRangesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/util/List;

    .line 1478
    .local v64, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v64 .. v64}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_12

    .line 1480
    new-instance v65, Ljava/util/HashSet;

    invoke-direct/range {v65 .. v65}, Ljava/util/HashSet;-><init>()V

    .line 1481
    .local v65, "thumbnailSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v64 .. v64}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v63

    .local v63, "thumanailSize$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v71

    if-eqz v71, :cond_11

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/util/Size;

    .line 1483
    .local v62, "thumanailSize":Landroid/util/Size;
    invoke-virtual/range {v62 .. v62}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-virtual/range {v62 .. v62}, Landroid/util/Size;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    goto :goto_5

    .line 1486
    .end local v62    # "thumanailSize":Landroid/util/Size;
    :cond_11
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v65

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1490
    .end local v63    # "thumanailSize$iterator":Ljava/util/Iterator;
    .end local v65    # "thumbnailSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Ljava/util/List;

    .line 1491
    .local v69, "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v69 .. v69}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_14

    .line 1493
    new-instance v70, Ljava/util/HashSet;

    invoke-direct/range {v70 .. v70}, Ljava/util/HashSet;-><init>()V

    .line 1494
    .local v70, "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v69 .. v69}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v68

    .local v68, "videoSize$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v71

    if-eqz v71, :cond_13

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/util/Size;

    .line 1496
    .local v67, "videoSize":Landroid/util/Size;
    invoke-virtual/range {v67 .. v67}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-interface/range {v70 .. v71}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1497
    invoke-virtual/range {v67 .. v67}, Landroid/util/Size;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    goto :goto_6

    .line 1499
    .end local v67    # "videoSize":Landroid/util/Size;
    :cond_13
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1503
    .end local v68    # "videoSize$iterator":Ljava/util/Iterator;
    .end local v70    # "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/util/List;

    .line 1504
    .local v66, "video60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->size()I

    move-result v71

    if-lez v71, :cond_16

    .line 1506
    new-instance v70, Ljava/util/HashSet;

    invoke-direct/range {v70 .. v70}, Ljava/util/HashSet;-><init>()V

    .line 1507
    .restart local v70    # "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v66 .. v66}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v68

    .restart local v68    # "videoSize$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v71

    if-eqz v71, :cond_15

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/util/Size;

    .line 1509
    .restart local v67    # "videoSize":Landroid/util/Size;
    invoke-virtual/range {v67 .. v67}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-interface/range {v70 .. v71}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1510
    invoke-virtual/range {v67 .. v67}, Landroid/util/Size;->hashCode()I

    move-result v71

    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v72, v0

    add-long v24, v24, v72

    goto :goto_7

    .line 1512
    .end local v67    # "videoSize":Landroid/util/Size;
    :cond_15
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1516
    .end local v68    # "videoSize$iterator":Ljava/util/Iterator;
    .end local v70    # "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    const-string/jumbo v71, "HashCode"

    move-object/from16 v0, v71

    move-wide/from16 v1, v24

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1517
    const-string/jumbo v71, "RomBuildVersion"

    move-object/from16 v0, v71

    move-object/from16 v1, v44

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1518
    const-string/jumbo v71, "Version"

    const/16 v72, 0x11

    move-object/from16 v0, v71

    move/from16 v1, v72

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1519
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1521
    sget-object v71, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v72, "saveCharacteristics() - End, hash code: "

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v71 .. v73}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1230
    return-void
.end method


# virtual methods
.method public saveCameraInfo(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraInfo;->getCameraCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z

    move-result v0

    .line 1219
    .local v0, "getCharacteristicsSuccessful":Z
    if-eqz v0, :cond_0

    .line 1221
    sget-object v1, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCameraInfo() - saveCharacteristics, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraInfo;->saveCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 1213
    :goto_0
    return-void

    .line 1225
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveCameraInfo() - getCameraCharacteristics failed, dont save prefs"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
