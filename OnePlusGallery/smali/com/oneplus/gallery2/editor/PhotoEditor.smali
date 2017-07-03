.class public Lcom/oneplus/gallery2/editor/PhotoEditor;
.super Lcom/oneplus/gallery2/editor/BaseMediaEditor;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/oneplus/gallery2/editor/MediaEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/editor/PhotoEditor$8;,
        Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;,
        Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;,
        Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;,
        Lcom/oneplus/gallery2/editor/PhotoEditor$ColorFilterType;
    }
.end annotation


# static fields
.field private static final COPIED_EXIF_ATTRS:[Ljava/lang/String;

.field public static final FLAG_DO_NOT_CALCULATE_CLIP:I = 0x1

.field public static final FLAG_FILTERS_ONLY:I = 0x1

.field public static final FLAG_LOW_QUALITY:I = 0x4

.field public static final FLAG_OVERLAYS_ONLY:I = 0x2

.field public static final MAX_PHOTO_PIXEL_COUNT:J = 0x1000000L

.field private static final MSG_START_DECODING_ORIGINAL_BMP:I = 0x2711

.field public static final PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_COLOR_MATRIX:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/ColorMatrix;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_RESERVED_SPACE:J = 0x6400000L


# instance fields
.field private final m_BoundObjectIsModifiedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_BoundObjectStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;",
            ">;"
        }
    .end annotation
.end field

.field private final m_BoundObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorObject;",
            ">;"
        }
    .end annotation
.end field

.field private m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

.field private m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

.field private m_ClippedPreviewImage:Landroid/graphics/Bitmap;

.field private m_ColorMatrix:Landroid/graphics/ColorMatrix;

.field private m_Filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorFilter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

.field private volatile m_IsDecodingOriginalBitmap:Z

.field private m_IsPreparing:Z

.field private m_IsPreparingBoundObjects:Z

.field private m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private volatile m_OriginalBitmap:Landroid/graphics/Bitmap;

.field private final m_OriginalBitmapLock:Ljava/lang/Object;

.field private m_OriginalPreviewImage:Landroid/graphics/Bitmap;

.field private m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

.field private m_OverlayPreviewImage:Landroid/graphics/Bitmap;

.field private final m_Overlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private m_PeddingRefreshPreview:Ljava/lang/Integer;

.field private m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

.field private volatile m_PreviewImage:Landroid/graphics/Bitmap;

.field private m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

.field private m_RemainingMediaCountStateFs:Landroid/os/StatFs;

.field private m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

.field private m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

.field private m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 82
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AutoSelectOutputPath"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;

    .line 86
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ClipRect"

    const-class v2, Landroid/graphics/RectF;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    .line 90
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ColorFilterContrast"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    .line 94
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ColorFilterExposure"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    .line 98
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ColorFilterSaturation"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    .line 102
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ColorMatrix"

    const-class v2, Landroid/graphics/ColorMatrix;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_MATRIX:Lcom/oneplus/base/PropertyKey;

    .line 106
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FlipX"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    .line 110
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FlipY"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    .line 114
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Orientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 118
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputFormat"

    const-class v2, Landroid/graphics/Bitmap$CompressFormat;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    .line 122
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 126
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputUri"

    const-class v2, Landroid/net/Uri;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    .line 130
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ShowClippedPreview"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    .line 134
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "UseLessMemory"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    .line 163
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->COPIED_EXIF_ATTRS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    .line 216
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditor$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/editor/PhotoEditor$1;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjectIsModifiedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 224
    new-instance v0, Lcom/oneplus/gallery2/editor/PhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/editor/PhotoEditor$2;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjectStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 370
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 371
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditorObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    .param p2, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onBoundObjectIsModifiedChanged(Lcom/oneplus/gallery2/editor/PhotoEditorObject;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditorObject;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    .param p2, "x2"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;
    .param p3, "x3"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onBoundObjectStateChanged(Lcom/oneplus/gallery2/editor/PhotoEditorObject;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onSmallOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/editor/PhotoEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/gallery2/editor/PhotoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oneplus/gallery2/editor/PhotoEditor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/PhotoMedia;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/PhotoMedia;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->decodeOriginalBitmap(Lcom/oneplus/gallery2/media/PhotoMedia;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->processFinalResult(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onMediaProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->processPreviewImages(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/editor/PhotoEditor;)Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onFinalMediaObtained(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private applyFilter(Landroid/graphics/Bitmap;IIZZ[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isPreview"    # Z
    .param p5, "lowQuality"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIZZ[",
            "Lcom/oneplus/gallery2/editor/PhotoEditorFilter",
            "<*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 433
    .local p6, "filters":[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;, "[Lcom/oneplus/gallery2/editor/PhotoEditorFilter<*>;"
    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    array-length v7, p6

    if-nez v7, :cond_1

    :cond_0
    move-object v0, p1

    .line 466
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 435
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p4, :cond_4

    const/4 v2, 0x1

    .line 436
    .local v2, "flags":I
    :goto_1
    if-eqz p5, :cond_2

    .line 437
    or-int/lit8 v2, v2, 0x2

    .line 438
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v4, "hslBitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/editor/PhotoEditorFilter<Lcom/oneplus/media/HslBitmapBuffer;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v1, "bitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/editor/PhotoEditorFilter<Landroid/graphics/Bitmap;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v7, p6

    if-ge v5, v7, :cond_6

    .line 442
    aget-object v7, p6, v5

    invoke-virtual {v7}, Lcom/oneplus/gallery2/editor/PhotoEditorFilter;->getImageType()Ljava/lang/Class;

    move-result-object v6

    .line 443
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 444
    aget-object v7, p6, v5

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 435
    .end local v1    # "bitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/editor/PhotoEditorFilter<Landroid/graphics/Bitmap;>;>;"
    .end local v2    # "flags":I
    .end local v4    # "hslBitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/editor/PhotoEditorFilter<Lcom/oneplus/media/HslBitmapBuffer;>;>;"
    .end local v5    # "i":I
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 445
    .restart local v1    # "bitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/editor/PhotoEditorFilter<Landroid/graphics/Bitmap;>;>;"
    .restart local v2    # "flags":I
    .restart local v4    # "hslBitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/editor/PhotoEditorFilter<Lcom/oneplus/media/HslBitmapBuffer;>;>;"
    .restart local v5    # "i":I
    .restart local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const-class v7, Lcom/oneplus/media/HslBitmapBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 446
    aget-object v7, p6, v5

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 450
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 452
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 453
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    invoke-virtual {v7, p1, p2, p3, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorFilter;->applyFilter(Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    check-cast p1, Landroid/graphics/Bitmap;

    .line 452
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 457
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 459
    new-instance v3, Lcom/oneplus/media/HslBitmapBuffer;

    invoke-direct {v3, p1}, Lcom/oneplus/media/HslBitmapBuffer;-><init>(Landroid/graphics/Bitmap;)V

    .line 460
    .local v3, "hslBitmapBuffer":Lcom/oneplus/media/HslBitmapBuffer;
    const/4 v5, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 461
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    invoke-virtual {v7, v3, p2, p3, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorFilter;->applyFilter(Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "hslBitmapBuffer":Lcom/oneplus/media/HslBitmapBuffer;
    check-cast v3, Lcom/oneplus/media/HslBitmapBuffer;

    .line 460
    .restart local v3    # "hslBitmapBuffer":Lcom/oneplus/media/HslBitmapBuffer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 462
    :cond_8
    invoke-virtual {v3, p1}, Lcom/oneplus/media/HslBitmapBuffer;->copyToBitmap(Landroid/graphics/Bitmap;)V

    .end local v3    # "hslBitmapBuffer":Lcom/oneplus/media/HslBitmapBuffer;
    :cond_9
    move-object v0, p1

    .line 466
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private applyOverlays(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I
    .param p4, "clipRect"    # Landroid/graphics/Rect;
    .param p5, "isPreview"    # Z
    .param p6, "overlays"    # [Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    .prologue
    .line 473
    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    array-length v0, p6

    if-nez v0, :cond_1

    .line 481
    :cond_0
    return-void

    .line 475
    :cond_1
    if-eqz p5, :cond_3

    const/4 v5, 0x1

    .line 476
    .local v5, "flags":I
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 477
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 478
    iget v0, p4, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p4, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 479
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, p6

    if-ge v6, v0, :cond_0

    .line 480
    aget-object v0, p6, v6

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;->drawOverlay(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V

    .line 479
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 475
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "flags":I
    .end local v6    # "i":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private bind(Lcom/oneplus/gallery2/editor/PhotoEditorObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {p1, p0}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->bind(Lcom/oneplus/gallery2/editor/PhotoEditor;)V

    .line 493
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjectIsModifiedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 494
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjectStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 497
    iget-boolean v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparing:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-ne v0, v1, :cond_2

    .line 499
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/PhotoMedia;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->prepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)V

    .line 500
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind() - Start preparing bound object : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 504
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->prepare()Z

    .line 511
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    .line 513
    :cond_1
    return-void

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "bind() - Pending preparing bound object"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private canChangeParameters()Z
    .locals 2

    .prologue
    .line 519
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor$8;->$SwitchMap$com$oneplus$gallery2$editor$MediaEditor$State:[I

    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 525
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 523
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "clipRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x0

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 535
    .local v4, "originalWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 536
    .local v3, "originalHeight":I
    invoke-direct {p0, p3, v4, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v5

    .line 537
    .local v5, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 539
    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "clip() - Empty clip rectangle"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_0
    return-object v6

    .line 546
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 547
    move-object p2, p1

    :goto_1
    move-object v6, p2

    .line 570
    goto :goto_0

    .line 551
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 553
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 554
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 561
    :goto_2
    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 562
    .local v1, "destRect":Landroid/graphics/Rect;
    const/4 v7, 0x0

    invoke-virtual {v0, p1, v5, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 565
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "destRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    .line 567
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "clip() - Fail to clip bitmap"

    invoke-static {v7, v8, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 558
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 559
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    goto :goto_2
.end method

.method private clipAndRotate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "orientation"    # I
    .param p4, "flipX"    # Z
    .param p5, "flipY"    # Z

    .prologue
    .line 577
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clipAndRotate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private clipAndRotate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "clipRect"    # Landroid/graphics/RectF;
    .param p4, "orientation"    # I
    .param p5, "flipX"    # Z
    .param p6, "flipY"    # Z

    .prologue
    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 583
    .local v15, "originalWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 584
    .local v14, "originalHeight":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15, v14}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v18

    .line 585
    .local v18, "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "clipAndRotate() - Empty clip rectangle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v2, 0x0

    .line 667
    :goto_0
    return-object v2

    .line 590
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "clipAndRotate() - Source rect : "

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    sparse-switch p4, :sswitch_data_0

    .line 602
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 603
    .local v17, "outputWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 606
    .local v16, "outputHeight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "clipAndRotate() - Output size : "

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " x "

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_9

    .line 613
    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-eqz p6, :cond_2

    :cond_1
    const/16 v2, 0xb4

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    .line 614
    :cond_2
    move-object/from16 p2, p1

    :goto_2
    move-object/from16 v2, p2

    .line 667
    goto :goto_0

    .line 598
    .end local v16    # "outputHeight":I
    .end local v17    # "outputWidth":I
    :sswitch_0
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 599
    .restart local v17    # "outputWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 600
    .restart local v16    # "outputHeight":I
    goto :goto_1

    .line 617
    :cond_3
    :try_start_1
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 618
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v17

    if-ne v2, v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_6

    .line 620
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 621
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 622
    .local v12, "destRect":Landroid/graphics/RectF;
    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    .line 623
    .local v10, "centerX":F
    move/from16 v0, v16

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .line 624
    .local v11, "centerY":F
    if-eqz p5, :cond_4

    const/4 v2, -0x1

    :goto_3
    int-to-float v3, v2

    if-eqz p6, :cond_5

    const/4 v2, -0x1

    :goto_4
    int-to-float v2, v2

    invoke-virtual {v7, v3, v2, v10, v11}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 625
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual {v7, v2, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 626
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 627
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v17, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v16, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v12, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 628
    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 629
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v2, p2

    .line 630
    goto/16 :goto_0

    .line 624
    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    .line 632
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "centerX":F
    .end local v11    # "centerY":F
    .end local v12    # "destRect":Landroid/graphics/RectF;
    :cond_6
    if-eqz p5, :cond_7

    const/4 v2, -0x1

    :goto_5
    int-to-float v3, v2

    if-eqz p6, :cond_8

    const/4 v2, -0x1

    :goto_6
    int-to-float v2, v2

    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 633
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 634
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    .line 632
    :cond_7
    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    goto :goto_6

    .line 640
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v17

    if-ne v2, v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_a

    .line 642
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 643
    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 650
    :goto_7
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 651
    .restart local v12    # "destRect":Landroid/graphics/RectF;
    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    .line 652
    .restart local v10    # "centerX":F
    move/from16 v0, v16

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .line 653
    .restart local v11    # "centerY":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 654
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    if-eqz p5, :cond_b

    const/4 v2, -0x1

    :goto_8
    int-to-float v3, v2

    if-eqz p6, :cond_c

    const/4 v2, -0x1

    :goto_9
    int-to-float v2, v2

    invoke-virtual {v7, v3, v2, v10, v11}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 655
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual {v7, v2, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 656
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 657
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v17, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v16, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v12, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 658
    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 659
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 662
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "centerX":F
    .end local v11    # "centerY":F
    .end local v12    # "destRect":Landroid/graphics/RectF;
    :catch_0
    move-exception v13

    .line 664
    .local v13, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "clipAndRotate() - Fail to create bitmap"

    invoke-static {v2, v3, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 665
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 647
    .end local v13    # "ex":Ljava/lang/Throwable;
    :cond_a
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 648
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    goto :goto_7

    .line 654
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "centerX":F
    .restart local v11    # "centerY":F
    .restart local v12    # "destRect":Landroid/graphics/RectF;
    :cond_b
    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v2, 0x1

    goto :goto_9

    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private decodeOriginalBitmap(Lcom/oneplus/gallery2/media/PhotoMedia;II)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "media"    # Lcom/oneplus/gallery2/media/PhotoMedia;
    .param p2, "maxOutputWidth"    # I
    .param p3, "maxOutputHeight"    # I

    .prologue
    .line 677
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMedia;->openInputStream(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .local v14, "stream":Ljava/io/InputStream;
    const/16 v19, 0x0

    .line 679
    :try_start_1
    invoke-static {v14}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;)Landroid/util/Size;

    move-result-object v11

    .line 680
    .local v11, "size":Landroid/util/Size;
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 681
    .local v7, "originalWidth":I
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v6

    .line 682
    .local v6, "originalHeight":I
    if-eqz v14, :cond_0

    if-eqz v19, :cond_2

    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 688
    :cond_0
    :goto_0
    move v3, v7

    .line 689
    .local v3, "decodeWidth":I
    move v2, v6

    .line 690
    .local v2, "decodeHeight":I
    if-lez v7, :cond_1

    if-gtz v6, :cond_5

    .line 692
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "decodeOriginalBitmap() - No photo size"

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v5, 0x0

    .line 733
    .end local v2    # "decodeHeight":I
    .end local v3    # "decodeWidth":I
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .end local v11    # "size":Landroid/util/Size;
    .end local v14    # "stream":Ljava/io/InputStream;
    :goto_1
    return-object v5

    .line 682
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    .restart local v11    # "size":Landroid/util/Size;
    .restart local v14    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v15

    .local v15, "x2":Ljava/lang/Throwable;
    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 683
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .end local v11    # "size":Landroid/util/Size;
    .end local v14    # "stream":Ljava/io/InputStream;
    .end local v15    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 685
    .local v4, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "decodeOriginalBitmap() - Fail to decode size"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    const/4 v5, 0x0

    goto :goto_1

    .line 682
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    .restart local v11    # "size":Landroid/util/Size;
    .restart local v14    # "stream":Ljava/io/InputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 677
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .end local v11    # "size":Landroid/util/Size;
    :catch_2
    move-exception v18

    :try_start_5
    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 682
    :catchall_0
    move-exception v19

    move-object/from16 v23, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v23

    :goto_2
    if-eqz v14, :cond_3

    if-eqz v19, :cond_4

    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_3
    :try_start_7
    throw v18

    :catch_3
    move-exception v15

    .restart local v15    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v15    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 695
    .restart local v2    # "decodeHeight":I
    .restart local v3    # "decodeWidth":I
    .restart local v6    # "originalHeight":I
    .restart local v7    # "originalWidth":I
    .restart local v11    # "size":Landroid/util/Size;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "decodeOriginalBitmap() - Original size : "

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, " x "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v18 .. v22}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 696
    const-wide/high16 v18, 0x4170000000000000L    # 1.6777216E7

    mul-int v20, v7, v6

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v12, v18, v20

    .line 697
    .local v12, "sizeRatio":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v12, v18

    if-gez v18, :cond_6

    .line 699
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 700
    int-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-int v3, v0

    .line 701
    int-to-double v0, v6

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-int v2, v0

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "decodeOriginalBitmap() - Original size is too large, use smaller size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " x "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_6
    if-gtz p2, :cond_9

    const/high16 v9, 0x3f800000    # 1.0f

    .line 705
    .local v9, "scaleX":F
    :goto_4
    if-gtz p3, :cond_a

    const/high16 v10, 0x3f800000    # 1.0f

    .line 706
    .local v10, "scaleY":F
    :goto_5
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 707
    .local v8, "scale":F
    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v18, v8, v18

    if-gez v18, :cond_7

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v8, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3a83126f    # 0.001f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    .line 709
    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v3, v0

    .line 710
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v2, v0

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "decodeOriginalBitmap() - Max output size is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " x "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", use smaller size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " x "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 717
    .local v16, "time":J
    const/16 v18, 0x0

    :try_start_8
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMedia;->openInputStream(I)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v14

    const/16 v19, 0x0

    .line 719
    const/16 v18, 0x9

    :try_start_9
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v14, v3, v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v5

    .line 720
    .local v5, "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_8

    if-eqz v19, :cond_b

    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 726
    :cond_8
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v16, v18, v16

    .line 727
    if-nez v5, :cond_e

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "decodeOriginalBitmap() - Fail to decode "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 704
    .end local v5    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "scale":F
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    .end local v16    # "time":J
    :cond_9
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v3

    move/from16 v19, v0

    div-float v9, v18, v19

    goto/16 :goto_4

    .line 705
    .restart local v9    # "scaleX":F
    :cond_a
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v10, v18, v19

    goto/16 :goto_5

    .line 720
    .restart local v5    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "scale":F
    .restart local v10    # "scaleY":F
    .restart local v16    # "time":J
    :catch_4
    move-exception v15

    .restart local v15    # "x2":Ljava/lang/Throwable;
    :try_start_b
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6

    .line 721
    .end local v5    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "x2":Ljava/lang/Throwable;
    :catch_5
    move-exception v4

    .line 723
    .restart local v4    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "decodeOriginalBitmap() - Fail to decode "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 724
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 720
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_c
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_6

    .line 717
    .end local v5    # "originalBitmap":Landroid/graphics/Bitmap;
    :catch_6
    move-exception v18

    :try_start_d
    throw v18
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 720
    :catchall_1
    move-exception v19

    move-object/from16 v23, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v23

    :goto_7
    if-eqz v14, :cond_c

    if-eqz v19, :cond_d

    :try_start_e
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    :cond_c
    :goto_8
    :try_start_f
    throw v18

    :catch_7
    move-exception v15

    .restart local v15    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v15    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_8

    .line 732
    .restart local v5    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "decodeOriginalBitmap() - Take "

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v21, " ms to decode original bitmap"

    invoke-static/range {v18 .. v21}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 720
    .end local v5    # "originalBitmap":Landroid/graphics/Bitmap;
    :catchall_2
    move-exception v18

    goto :goto_7

    .line 682
    .end local v2    # "decodeHeight":I
    .end local v3    # "decodeWidth":I
    .end local v6    # "originalHeight":I
    .end local v7    # "originalWidth":I
    .end local v8    # "scale":F
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    .end local v11    # "size":Landroid/util/Size;
    .end local v12    # "sizeRatio":D
    .end local v16    # "time":J
    :catchall_3
    move-exception v18

    goto/16 :goto_2
.end method

.method private getCanidateFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "baseFileName"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;

    .prologue
    .line 739
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "candFile":Ljava/io/File;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x63

    if-gt v1, v2, :cond_1

    .line 742
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    .end local v0    # "candFile":Ljava/io/File;
    :goto_1
    return-object v0

    .line 746
    .restart local v0    # "candFile":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "candFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    .restart local v0    # "candFile":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;
    .locals 4
    .param p1, "clipRect"    # Landroid/graphics/RectF;
    .param p2, "originalWidth"    # I
    .param p3, "originalHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 767
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 768
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 780
    :goto_0
    return-object v0

    .line 771
    :cond_1
    if-eqz p1, :cond_2

    .line 773
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 774
    .local v0, "clipRectPixels":Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 775
    iget v1, p1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 776
    iget v1, p1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 777
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 780
    .end local v0    # "clipRectPixels":Landroid/graphics/Rect;
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private getFreeSpace(Ljava/lang/String;)J
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 787
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "getFreeSpace() - invalid path"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :goto_0
    return-wide v2

    .line 795
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    if-eqz v1, :cond_2

    .line 796
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v1, p1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 800
    :goto_1
    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v6

    const-wide/32 v8, 0x6400000

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 798
    :cond_2
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 802
    :catch_0
    move-exception v0

    .line 804
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "getFreeSpace() - Fail to get free storage space"

    invoke-static {v1, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onBoundObjectIsModifiedChanged(Lcom/oneplus/gallery2/editor/PhotoEditorObject;Z)V
    .locals 1
    .param p1, "obj"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    .param p2, "isModified"    # Z

    .prologue
    .line 1156
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    .line 1157
    return-void

    .line 1156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBoundObjectStateChanged(Lcom/oneplus/gallery2/editor/PhotoEditorObject;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;)V
    .locals 4
    .param p1, "obj"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    .param p2, "prevState"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;
    .param p3, "state"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    .prologue
    .line 1163
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-ne p2, v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-eqz v2, :cond_2

    .line 1165
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 1166
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    .line 1168
    .local v0, "checkingObj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-ne v2, v3, :cond_0

    .line 1170
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 1174
    .end local v0    # "checkingObj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparing:Z

    if-nez v2, :cond_2

    .line 1176
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "onBoundObjectStateChanged() - All bound objects prepared"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->completePreparation()Z

    .line 1178
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview()V

    .line 1181
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private onFinalMediaObtained(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "onFinalMediaObtained() - Media : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1212
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->completeProcessing(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "onFinalMediaObtained() - Fail to complete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_0
    return-void
.end method

.method private onMediaProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 5
    .param p1, "task"    # Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    .prologue
    const/4 v4, 0x0

    .line 1221
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    if-eq v2, p1, :cond_1

    .line 1223
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "onMediaProcessed() - Task cancelled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->contentUri:Landroid/net/Uri;

    .line 1229
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v1, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->mimeType:Ljava/lang/String;

    .line 1230
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "onMediaProcessed() - Content URI : "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1233
    if-eqz v0, :cond_2

    .line 1235
    iget-boolean v2, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->autoSelectOutputPath:Z

    if-eqz v2, :cond_4

    .line 1237
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1243
    :goto_1
    new-instance v2, Lcom/oneplus/gallery2/editor/PhotoEditor$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/editor/PhotoEditor$3;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;)V

    invoke-static {v0, v1, v2, v4}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1255
    :cond_2
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->SAVING:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    if-ne v2, v3, :cond_3

    .line 1256
    sget-object v2, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->UNKNOWN_ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->changeMediaSavingState(Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;)V

    .line 1257
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onFinalMediaObtained(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 1241
    :cond_4
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private onOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1265
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-eq v3, v6, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    if-nez p2, :cond_2

    .line 1271
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "onOriginalPreviewBitmapDecoded() - Cannot decode preview bitmap"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    sget-object v3, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->changeState(Lcom/oneplus/gallery2/editor/MediaEditor$State;)V

    goto :goto_0

    .line 1277
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1278
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1281
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    move v0, v4

    .line 1282
    .local v0, "hasPreviewImage":Z
    :goto_1
    iput-object p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1283
    iput-object p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1286
    if-eqz p2, :cond_4

    .line 1288
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-direct {p0, p2, v6, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1289
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    .line 1293
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 1295
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1296
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1302
    :cond_5
    :goto_2
    iput-boolean v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparing:Z

    .line 1305
    iget-boolean v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v3, :cond_9

    .line 1307
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    .local v2, "obj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    move-object v3, p1

    .line 1309
    check-cast v3, Lcom/oneplus/gallery2/media/PhotoMedia;

    invoke-virtual {v2, v3, p2}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->prepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)V

    .line 1310
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-ne v3, v5, :cond_6

    .line 1311
    iput-boolean v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    goto :goto_3

    .end local v0    # "hasPreviewImage":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    :cond_7
    move v0, v5

    .line 1281
    goto :goto_1

    .line 1298
    .restart local v0    # "hasPreviewImage":Z
    :cond_8
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v3, p2}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1314
    :cond_9
    iget-boolean v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-eqz v3, :cond_a

    .line 1316
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "onOriginalPreviewBitmapDecoded() - Waiting for bound objects preparation"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1321
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->completePreparation()Z

    .line 1324
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview()V

    goto/16 :goto_0
.end method

.method private onPreviewImagesProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "task"    # Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;
    .param p2, "preview"    # Landroid/graphics/Bitmap;
    .param p3, "overlay"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 1414
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-eq v3, v4, :cond_1

    .line 1416
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewImagesProcessed() - Current state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    if-eq v3, p1, :cond_2

    .line 1421
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "onPreviewImagesProcessed() - Task has been cancelled"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1426
    :cond_2
    iput-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    .line 1429
    if-eqz p1, :cond_4

    .line 1431
    iget v3, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 1432
    iget-object p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1433
    :cond_3
    iget v3, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 1434
    iget-object p3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1438
    :cond_4
    iput-object p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1439
    iput-object p3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1440
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1441
    .local v0, "clipRect":Landroid/graphics/RectF;
    if-eqz p2, :cond_5

    .line 1442
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2, v3, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    .line 1445
    :goto_1
    if-eqz p3, :cond_6

    .line 1446
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3, v3, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1451
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->showPreview()V

    .line 1454
    if-eqz p2, :cond_7

    sget-object v3, Lcom/oneplus/gallery2/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    :goto_3
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->changeState(Lcom/oneplus/gallery2/editor/MediaEditor$State;)V

    .line 1457
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 1458
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview(I)V

    goto :goto_0

    .line 1444
    :cond_5
    iput-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1448
    :cond_6
    iput-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1454
    :cond_7
    sget-object v3, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    goto :goto_3

    .line 1462
    :cond_8
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-ne v3, v4, :cond_0

    .line 1464
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    .line 1466
    .local v2, "obj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->NEW:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-ne v3, v4, :cond_9

    .line 1468
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/PhotoMedia;

    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->prepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)V

    .line 1469
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-ne v3, v4, :cond_9

    .line 1471
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewImagesProcessed() - Start preparing bound object : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-boolean v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v3, :cond_9

    .line 1474
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 1475
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->prepare()Z

    goto :goto_4
.end method

.method private onSmallOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1570
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    if-eq v0, v1, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    if-nez p2, :cond_2

    .line 1576
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "onSmallOriginalPreviewBitmapDecoded() - Cannot decode preview bitmap"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    sget-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->changeState(Lcom/oneplus/gallery2/editor/MediaEditor$State;)V

    goto :goto_0

    .line 1582
    :cond_2
    iput-object p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1585
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 1586
    const/4 v1, 0x0

    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1589
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-eqz v0, :cond_0

    .line 1591
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1592
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1594
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private processFinalResult(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;Landroid/graphics/Bitmap;FLcom/oneplus/base/Ref;)Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;
    .locals 28
    .param p1, "task"    # Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;
    .param p2, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;",
            "Landroid/graphics/Bitmap;",
            "F",
            "Lcom/oneplus/base/Ref",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;"
        }
    .end annotation

    .prologue
    .line 1704
    .local p4, "resultBitmapRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/graphics/Bitmap;>;"
    const/16 v21, 0x0

    .line 1705
    .local v21, "isPreviewSize":Z
    if-eqz p2, :cond_4

    .line 1709
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    .line 1710
    .local v24, "previewImage":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1711
    .local v27, "scaledWidth":I
    const/4 v3, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 1712
    .local v26, "scaledHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Scale : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, ", scaled original image size : "

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, " x "

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, v27

    if-ne v0, v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move/from16 v0, v26

    if-eq v0, v3, :cond_10

    .line 1715
    :cond_0
    if-nez v24, :cond_1

    .line 1717
    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x438

    if-ge v3, v4, :cond_f

    .line 1719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Scaled original image is too small"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    move/from16 v7, v21

    .line 1899
    .end local v21    # "isPreviewSize":Z
    .end local v24    # "previewImage":Landroid/graphics/Bitmap;
    .end local v26    # "scaledHeight":I
    .end local v27    # "scaledWidth":I
    .local v7, "isPreviewSize":Z
    :goto_0
    return-object v3

    .line 1723
    .end local v7    # "isPreviewSize":Z
    .restart local v21    # "isPreviewSize":Z
    .restart local v24    # "previewImage":Landroid/graphics/Bitmap;
    .restart local v26    # "scaledHeight":I
    .restart local v27    # "scaledWidth":I
    :cond_1
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, v27

    if-lt v0, v3, :cond_2

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_f

    .line 1725
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Scaled original image is too small, use preview size"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    .line 1727
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v26

    .line 1728
    const/4 v7, 0x1

    .line 1730
    .end local v21    # "isPreviewSize":Z
    .restart local v7    # "isPreviewSize":Z
    :goto_1
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c

    move-result-object p2

    .line 1752
    .end local v24    # "previewImage":Landroid/graphics/Bitmap;
    .end local v26    # "scaledHeight":I
    .end local v27    # "scaledWidth":I
    :goto_2
    if-nez p2, :cond_5

    .line 1753
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto :goto_0

    .line 1733
    .end local v7    # "isPreviewSize":Z
    .restart local v21    # "isPreviewSize":Z
    :catch_0
    move-exception v20

    move/from16 v7, v21

    .line 1735
    .end local v21    # "isPreviewSize":Z
    .restart local v7    # "isPreviewSize":Z
    .local v20, "ex":Ljava/lang/OutOfMemoryError;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to create scaled original image"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1736
    if-eqz v7, :cond_3

    .line 1737
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto :goto_0

    .line 1738
    :cond_3
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto :goto_0

    .line 1740
    .end local v7    # "isPreviewSize":Z
    .end local v20    # "ex":Ljava/lang/OutOfMemoryError;
    .restart local v21    # "isPreviewSize":Z
    :catch_1
    move-exception v20

    move/from16 v7, v21

    .line 1742
    .end local v21    # "isPreviewSize":Z
    .restart local v7    # "isPreviewSize":Z
    .local v20, "ex":Ljava/lang/Throwable;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to create scaled original image"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1743
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto :goto_0

    .line 1748
    .end local v7    # "isPreviewSize":Z
    .end local v20    # "ex":Ljava/lang/Throwable;
    .restart local v21    # "isPreviewSize":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Original bitmap is null, use preview bitmap"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 p2, v0

    .line 1750
    const/4 v7, 0x1

    .end local v21    # "isPreviewSize":Z
    .restart local v7    # "isPreviewSize":Z
    goto :goto_2

    .line 1754
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1755
    .local v5, "originalWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1758
    .local v6, "originalHeight":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->filters:[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    if-eqz v3, :cond_7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->filters:[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 1762
    const/4 v8, 0x0

    :try_start_2
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->filters:[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->applyFilter(Landroid/graphics/Bitmap;IIZZ[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1763
    if-nez p2, :cond_6

    .line 1765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to apply filter, OOM"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1768
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1769
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v6

    .line 1787
    :cond_7
    const/4 v10, 0x0

    :try_start_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->clipRect:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->orientation:I

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->flipX:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->flipY:Z

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v14}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clipAndRotate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1788
    .local v15, "targetBitmap":Landroid/graphics/Bitmap;
    if-nez v15, :cond_8

    .line 1790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to clip and rotate, OOM"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    .line 1771
    .end local v15    # "targetBitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v20

    .line 1773
    .local v20, "ex":Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to apply filter"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1774
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1776
    .end local v20    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v20

    .line 1778
    .local v20, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to apply filter"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1779
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1794
    .end local v20    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v20

    .line 1796
    .local v20, "ex":Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to clip and rotate"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1797
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1799
    .end local v20    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v20

    .line 1801
    .local v20, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to clip and rotate"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1802
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1804
    .end local v20    # "ex":Ljava/lang/Throwable;
    .restart local v15    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Cancelled"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->CANCELLED:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1809
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Cropped and rotated"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->outputSize:Landroid/util/Size;

    move-object/from16 v22, v0

    .line 1813
    .local v22, "outputSize":Landroid/util/Size;
    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_a

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 1817
    :cond_a
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v8, 0x1

    invoke-static {v15, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Scaled to "

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    .line 1833
    :cond_b
    const/16 p2, 0x0

    .line 1836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v3, :cond_c

    .line 1840
    :try_start_5
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 1841
    .local v23, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1842
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 1843
    .local v25, "result":Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1844
    .local v19, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    .line 1845
    move-object/from16 v15, v25

    .line 1860
    .end local v19    # "canvas":Landroid/graphics/Canvas;
    .end local v23    # "paint":Landroid/graphics/Paint;
    .end local v25    # "result":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->overlays:[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    if-eqz v3, :cond_e

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->overlays:[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    array-length v3, v3

    if-lez v3, :cond_e

    .line 1865
    :try_start_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->clipRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v12

    .line 1866
    .local v12, "clipRectPixels":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1867
    .local v9, "overlayBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->overlays:[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    move-object/from16 v8, p0

    move v10, v5

    move v11, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/oneplus/gallery2/editor/PhotoEditor;->applyOverlays(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;)V

    .line 1870
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->orientation:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->flipX:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->flipY:Z

    move/from16 v18, v0

    move-object/from16 v13, p0

    move-object v14, v9

    invoke-direct/range {v13 .. v18}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clipAndRotate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1871
    if-nez v9, :cond_d

    .line 1873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to apply overlays, OOM"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b

    goto/16 :goto_0

    .line 1820
    .end local v9    # "overlayBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "clipRectPixels":Landroid/graphics/Rect;
    :catch_6
    move-exception v20

    .line 1822
    .local v20, "ex":Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to scale image"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1823
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1825
    .end local v20    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_7
    move-exception v20

    .line 1827
    .local v20, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to scale image"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1828
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1847
    .end local v20    # "ex":Ljava/lang/Throwable;
    :catch_8
    move-exception v20

    .line 1849
    .local v20, "ex":Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to apply color matrix"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1850
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1852
    .end local v20    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_9
    move-exception v20

    .line 1854
    .local v20, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to apply color matrix"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1855
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1878
    .end local v20    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "overlayBitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "clipRectPixels":Landroid/graphics/Rect;
    :cond_d
    if-eq v15, v9, :cond_e

    .line 1880
    :try_start_7
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1881
    .restart local v19    # "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    .line 1897
    .end local v9    # "overlayBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "clipRectPixels":Landroid/graphics/Rect;
    .end local v19    # "canvas":Landroid/graphics/Canvas;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Result bitmap generated"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1899
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->SUCCEEDED:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1884
    :catch_a
    move-exception v20

    .line 1886
    .local v20, "ex":Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to apply overlays"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1887
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_OOM:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1889
    .end local v20    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_b
    move-exception v20

    .line 1891
    .local v20, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "processFinalResult() - Fail to apply overlays"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1892
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->FAILED_UNKNOWN:Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    goto/16 :goto_0

    .line 1740
    .end local v5    # "originalWidth":I
    .end local v6    # "originalHeight":I
    .end local v15    # "targetBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "ex":Ljava/lang/Throwable;
    .end local v22    # "outputSize":Landroid/util/Size;
    .restart local v24    # "previewImage":Landroid/graphics/Bitmap;
    .restart local v26    # "scaledHeight":I
    .restart local v27    # "scaledWidth":I
    :catch_c
    move-exception v20

    goto/16 :goto_4

    .line 1733
    :catch_d
    move-exception v20

    goto/16 :goto_3

    .end local v7    # "isPreviewSize":Z
    .restart local v21    # "isPreviewSize":Z
    :cond_f
    move/from16 v7, v21

    .end local v21    # "isPreviewSize":Z
    .restart local v7    # "isPreviewSize":Z
    goto/16 :goto_1

    .end local v7    # "isPreviewSize":Z
    .restart local v21    # "isPreviewSize":Z
    :cond_10
    move/from16 v7, v21

    .end local v21    # "isPreviewSize":Z
    .restart local v7    # "isPreviewSize":Z
    goto/16 :goto_2
.end method

.method private processFinalResult(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 11
    .param p1, "task"    # Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    .prologue
    .line 1611
    invoke-virtual {p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1613
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Cancelled"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :goto_0
    return-void

    .line 1619
    :cond_0
    iget-object v9, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1621
    :try_start_0
    iget-boolean v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 1625
    :try_start_1
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v10, "processFinalResult() - Waiting for original bitmap decoding"

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    :cond_1
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v10, "processFinalResult() - Original bitmap decoded"

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;

    .line 1635
    .local v4, "originalBitmap":Landroid/graphics/Bitmap;
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1636
    invoke-virtual {p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1638
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Cancelled"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1628
    .end local v4    # "originalBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 1630
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_3
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v10, "processFinalResult() - Interrupted"

    invoke-static {v8, v10, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1635
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 1643
    .restart local v4    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v6, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v6}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 1644
    .local v6, "resultBitmapRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 1645
    .local v0, "completed":Z
    const/16 v3, 0xa

    .local v3, "i":I
    :goto_2
    if-lez v3, :cond_4

    if-nez v0, :cond_4

    .line 1647
    int-to-float v8, v3

    const/high16 v9, 0x41200000    # 10.0f

    div-float v7, v8, v9

    .line 1648
    .local v7, "scale":F
    sget-object v8, Lcom/oneplus/gallery2/editor/PhotoEditor$8;->$SwitchMap$com$oneplus$gallery2$editor$PhotoEditor$ImageProcessingResult:[I

    invoke-direct {p0, p1, v4, v7, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->processFinalResult(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;Landroid/graphics/Bitmap;FLcom/oneplus/base/Ref;)Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery2/editor/PhotoEditor$ImageProcessingResult;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1664
    :goto_3
    invoke-virtual {p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1666
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Cancelled"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1651
    :pswitch_0
    const/4 v0, 0x1

    .line 1652
    goto :goto_3

    .line 1654
    :pswitch_1
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - OOM"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1657
    :pswitch_2
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Unknown error"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const/4 v0, 0x1

    .line 1659
    goto :goto_3

    .line 1661
    :pswitch_3
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Cancelled"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1645
    :cond_3
    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    .line 1670
    .end local v7    # "scale":F
    :cond_4
    invoke-interface {v6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 1671
    .local v5, "resultBitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_5

    .line 1673
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Failed"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1678
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor;->saveFinalResult(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v1

    .line 1679
    .local v1, "contentUri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1681
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Cancelled"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1684
    :cond_6
    if-eqz v1, :cond_7

    .line 1686
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Content URI : "

    invoke-static {v8, v9, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1687
    iput-object v1, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->contentUri:Landroid/net/Uri;

    .line 1696
    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->success:Z

    goto/16 :goto_0

    .line 1691
    :cond_7
    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v9, "processFinalResult() - Fail to save result"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processPreviewImages(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;)V
    .locals 13
    .param p1, "task"    # Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1907
    invoke-virtual {p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - Cancelled"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    :goto_0
    return-void

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    iget-object v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1917
    .local v2, "width":I
    iget-object v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1919
    .local v3, "height":I
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - Apply filters"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 1928
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    .line 1935
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    move v5, v4

    :goto_2
    iget-object v6, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->filters:[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->applyFilter(Landroid/graphics/Bitmap;IIZZ[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->previewImage:Landroid/graphics/Bitmap;

    .line 1938
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - Apply overlays"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    iget v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->overlays:[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1943
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getClipRectPixels(II)Landroid/graphics/Rect;

    move-result-object v9

    .line 1944
    .local v9, "clipRect":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1945
    .local v6, "overlayImage":Landroid/graphics/Bitmap;
    iget-object v11, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->overlays:[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    move-object v5, p0

    move v7, v2

    move v8, v3

    move v10, v4

    invoke-direct/range {v5 .. v11}, Lcom/oneplus/gallery2/editor/PhotoEditor;->applyOverlays(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;)V

    .line 1946
    iput-object v6, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->overlayImage:Landroid/graphics/Bitmap;

    .line 1949
    .end local v6    # "overlayImage":Landroid/graphics/Bitmap;
    .end local v9    # "clipRect":Landroid/graphics/Rect;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - End"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1932
    :cond_4
    new-instance v12, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    invoke-direct {v12, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1933
    .local v12, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p1, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1935
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private saveFinalResult(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 29
    .param p1, "task"    # Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;
    .param p2, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult()"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->media:Lcom/oneplus/gallery2/media/PhotoMedia;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/oneplus/gallery2/media/PhotoMedia;->getMimeType()Ljava/lang/String;

    move-result-object v15

    .line 2065
    .local v15, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->outputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 2066
    .local v5, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    const/4 v14, 0x0

    .line 2067
    .local v14, "isJpegSource":Z
    if-nez v5, :cond_3

    .line 2069
    if-nez v15, :cond_1

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - No MIME type to check format"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    const/16 v16, 0x0

    .line 2293
    :cond_0
    :goto_0
    return-object v16

    .line 2074
    :cond_1
    const/16 v24, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v24, :pswitch_data_0

    .line 2083
    :goto_2
    const-string v15, "image/jpeg"

    .line 2084
    const-string v10, ".jpg"

    .line 2085
    .local v10, "extension":Ljava/lang/String;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2104
    :goto_3
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->mimeType:Ljava/lang/String;

    .line 2107
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->outputUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 2108
    .local v16, "outputUri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->media:Lcom/oneplus/gallery2/media/PhotoMedia;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/oneplus/gallery2/media/PhotoMedia;->getFilePath()Ljava/lang/String;

    move-result-object v18

    .line 2109
    .local v18, "srcFilePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2110
    .local v8, "directory":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2111
    .local v4, "baseFileName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2112
    .local v11, "file":Ljava/io/File;
    if-nez v16, :cond_6

    .line 2114
    if-eqz v18, :cond_4

    .line 2116
    invoke-static/range {v18 .. v18}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2117
    invoke-static/range {v18 .. v18}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2128
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v10}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getCanidateFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 2129
    if-nez v11, :cond_5

    .line 2131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Cannot find available file path"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2132
    const/16 v16, 0x0

    goto :goto_0

    .line 2074
    .end local v4    # "baseFileName":Ljava/lang/String;
    .end local v8    # "directory":Ljava/lang/String;
    .end local v10    # "extension":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v16    # "outputUri":Landroid/net/Uri;
    .end local v18    # "srcFilePath":Ljava/lang/String;
    :sswitch_0
    const-string v25, "image/png"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v24, 0x0

    goto :goto_1

    :sswitch_1
    const-string v25, "image/jpeg"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v24, 0x1

    goto :goto_1

    .line 2077
    :pswitch_0
    const-string v10, ".png"

    .line 2078
    .restart local v10    # "extension":Ljava/lang/String;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2079
    goto :goto_3

    .line 2081
    .end local v10    # "extension":Ljava/lang/String;
    :pswitch_1
    const/4 v14, 0x1

    goto :goto_2

    .line 2090
    :cond_3
    sget-object v24, Lcom/oneplus/gallery2/editor/PhotoEditor$8;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_1

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "saveFinalResult() - Unsupported output format : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2093
    :pswitch_2
    const-string v10, ".png"

    .line 2102
    .restart local v10    # "extension":Ljava/lang/String;
    :goto_5
    const-string v24, "image/jpeg"

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    goto/16 :goto_3

    .line 2096
    .end local v10    # "extension":Ljava/lang/String;
    :pswitch_3
    const-string v10, ".jpg"

    .line 2097
    .restart local v10    # "extension":Ljava/lang/String;
    goto :goto_5

    .line 2121
    .restart local v4    # "baseFileName":Ljava/lang/String;
    .restart local v8    # "directory":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "outputUri":Landroid/net/Uri;
    .restart local v18    # "srcFilePath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - No source file path"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyyMMdd_HHmmss"

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2123
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v24, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 2124
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IMG_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    new-instance v25, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-direct/range {v25 .. v27}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 2135
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v9

    .line 2137
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Fail to generate file path"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2138
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2140
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "saveFinalResult() - File path : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 2147
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2143
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "saveFinalResult() - Output URI : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2150
    :cond_7
    if-eqz v8, :cond_8

    .line 2152
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_a

    .line 2154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - not enough space"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    sget-object v24, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->ERROR_LOW_STORAGE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->changeMediaSavingState(Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;)V

    .line 2156
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2161
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    .line 2163
    .local v22, "uriDirectory":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "file://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 2164
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2166
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_a

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - not enough space"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    sget-object v24, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->ERROR_LOW_STORAGE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->changeMediaSavingState(Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;)V

    .line 2170
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2175
    .end local v22    # "uriDirectory":Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    .line 2176
    .local v13, "isFileNotFound":Z
    if-nez v16, :cond_c

    :try_start_1
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .local v19, "stream":Ljava/io/OutputStream;
    :goto_7
    const/16 v25, 0x0

    .line 2178
    const/16 v24, 0x5f

    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2179
    if-eqz v19, :cond_b

    if-eqz v25, :cond_d

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2191
    .end local v19    # "stream":Ljava/io/OutputStream;
    :cond_b
    :goto_8
    if-eqz v13, :cond_17

    .line 2194
    sget-object v24, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 2195
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v10}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getCanidateFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 2196
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_10

    .line 2198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "saveFinalResult() - not enough space:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    sget-object v24, Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;->ERROR_LOW_STORAGE:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->changeMediaSavingState(Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;)V

    .line 2200
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2176
    :cond_c
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v19

    goto :goto_7

    .line 2179
    .restart local v19    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v23

    .local v23, "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 2180
    .end local v19    # "stream":Ljava/io/OutputStream;
    .end local v23    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v12

    .line 2182
    .local v12, "fileNotFoundException":Ljava/io/FileNotFoundException;
    const/4 v13, 0x1

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - FileNotFoundException:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 2179
    .end local v12    # "fileNotFoundException":Ljava/io/FileNotFoundException;
    .restart local v19    # "stream":Ljava/io/OutputStream;
    :cond_d
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    .line 2185
    .end local v19    # "stream":Ljava/io/OutputStream;
    :catch_3
    move-exception v9

    .line 2187
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Fail to encode bitmap"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2188
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2176
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v19    # "stream":Ljava/io/OutputStream;
    :catch_4
    move-exception v25

    :try_start_6
    throw v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2179
    :catchall_0
    move-exception v24

    if-eqz v19, :cond_e

    if-eqz v25, :cond_f

    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_e
    :goto_9
    :try_start_8
    throw v24

    :catch_5
    move-exception v23

    .restart local v23    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v23    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_9

    .line 2202
    .end local v19    # "stream":Ljava/io/OutputStream;
    :cond_10
    :try_start_9
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .restart local v19    # "stream":Ljava/io/OutputStream;
    const/16 v25, 0x0

    .line 2204
    const/16 v24, 0x5f

    :try_start_a
    move-object/from16 v0, p2

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2205
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->autoSelectOutputPath:Z

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "saveFinalResult() - cannot save to OTG folder, save to picture folder, file: :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2207
    if-eqz v19, :cond_11

    if-eqz v25, :cond_14

    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 2218
    .end local v19    # "stream":Ljava/io/OutputStream;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Bitmap encoded"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    if-eqz v18, :cond_12

    if-eqz v14, :cond_12

    if-eqz v11, :cond_12

    .line 2223
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/oneplus/gallery2/editor/PhotoEditor;->COPIED_EXIF_ATTRS:[Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/oneplus/media/ImageUtils;->copyExif(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - EXIF copied"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    :cond_12
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Task cancelled, delete file"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_13

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "saveFinalResult() - Fail to delete "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2207
    .restart local v19    # "stream":Ljava/io/OutputStream;
    :catch_6
    move-exception v23

    .restart local v23    # "x2":Ljava/lang/Throwable;
    :try_start_c
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_a

    .line 2208
    .end local v19    # "stream":Ljava/io/OutputStream;
    .end local v23    # "x2":Ljava/lang/Throwable;
    :catch_7
    move-exception v9

    .line 2210
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Fail to encode bitmap"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2211
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2207
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v19    # "stream":Ljava/io/OutputStream;
    :cond_14
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_a

    .line 2202
    :catch_8
    move-exception v24

    :try_start_e
    throw v24
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2207
    :catchall_1
    move-exception v25

    move-object/from16 v28, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v28

    :goto_c
    if-eqz v19, :cond_15

    if-eqz v25, :cond_16

    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :cond_15
    :goto_d
    :try_start_10
    throw v24

    :catch_9
    move-exception v23

    .restart local v23    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    .end local v23    # "x2":Ljava/lang/Throwable;
    :cond_16
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_d

    .line 2216
    .end local v19    # "stream":Ljava/io/OutputStream;
    :cond_17
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->autoSelectOutputPath:Z

    goto/16 :goto_a

    .line 2226
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Fail to copy EXIF"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2240
    :cond_19
    if-nez v16, :cond_0

    .line 2244
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2245
    .local v6, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->media:Lcom/oneplus/gallery2/media/PhotoMedia;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/oneplus/gallery2/media/PhotoMedia;->getTakenTime()J

    move-result-wide v20

    .line 2246
    .local v20, "takenTime":J
    const-string v24, "_data"

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    const-string v24, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2248
    const-string v24, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2249
    const-string v24, "orientation"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2250
    const-string v24, "mime_type"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    const-wide/16 v24, 0x0

    cmp-long v24, v20, v24

    if-lez v24, :cond_1a

    .line 2252
    const-string v24, "datetaken"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2255
    :cond_1a
    :try_start_11
    const-string v24, "_size"

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a

    .line 2263
    :goto_e
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 2264
    .local v17, "resultUri":[Landroid/net/Uri;
    monitor-enter v17

    .line 2266
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_MediaStoreMediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    move-object/from16 v24, v0

    sget-object v25, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    new-instance v26, Lcom/oneplus/gallery2/editor/PhotoEditor$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor$6;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;[Landroid/net/Uri;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v6, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->insertIntoMediaStore(Lcom/oneplus/gallery2/media/MediaType;Landroid/content/ContentValues;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-result v24

    if-eqz v24, :cond_1b

    .line 2281
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Waiting for media store insertion"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 2288
    :goto_f
    const/16 v24, 0x0

    :try_start_14
    aget-object v16, v17, v24

    .end local v16    # "outputUri":Landroid/net/Uri;
    monitor-exit v17

    goto/16 :goto_0

    .line 2295
    :catchall_2
    move-exception v24

    monitor-exit v17
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    throw v24

    .line 2257
    .end local v17    # "resultUri":[Landroid/net/Uri;
    .restart local v16    # "outputUri":Landroid/net/Uri;
    :catch_a
    move-exception v9

    .line 2259
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Fail to get file size for "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 2284
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v17    # "resultUri":[Landroid/net/Uri;
    :catch_b
    move-exception v9

    .line 2286
    .local v9, "ex":Ljava/lang/InterruptedException;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Interrupted"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 2292
    .end local v9    # "ex":Ljava/lang/InterruptedException;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "saveFinalResult() - Fail to insert into media store"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    const/16 v16, 0x0

    monitor-exit v17
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_0

    .line 2207
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v17    # "resultUri":[Landroid/net/Uri;
    .end local v20    # "takenTime":J
    .restart local v19    # "stream":Ljava/io/OutputStream;
    :catchall_3
    move-exception v24

    goto/16 :goto_c

    .line 2074
    :sswitch_data_0
    .sparse-switch
        -0x58a7d764 -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2090
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setClipRectProp(Landroid/graphics/RectF;)Z
    .locals 5
    .param p1, "clipRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2365
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->verifyAccess()V

    .line 2366
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 2398
    :goto_0
    return v1

    .line 2368
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->canChangeParameters()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 2369
    goto :goto_0

    .line 2372
    :cond_1
    if-eqz p1, :cond_3

    .line 2374
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2375
    .end local p1    # "clipRect":Landroid/graphics/RectF;
    .local v0, "clipRect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2376
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2377
    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2378
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2379
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    .end local v0    # "clipRect":Landroid/graphics/RectF;
    .restart local p1    # "clipRect":Landroid/graphics/RectF;
    move v1, v2

    .line 2380
    goto :goto_0

    .end local p1    # "clipRect":Landroid/graphics/RectF;
    .restart local v0    # "clipRect":Landroid/graphics/RectF;
    :cond_2
    move-object p1, v0

    .line 2384
    .end local v0    # "clipRect":Landroid/graphics/RectF;
    .restart local p1    # "clipRect":Landroid/graphics/RectF;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 2385
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v3, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 2386
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 2387
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v3, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    .line 2388
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 2389
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v3, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 2392
    :cond_6
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2394
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->showPreview()V

    .line 2395
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    .line 2396
    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    move v1, v2

    .line 2398
    goto :goto_0
.end method

.method private setClippedPreviewProp(Z)Z
    .locals 2
    .param p1, "clipPreview"    # Z

    .prologue
    .line 2347
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->verifyAccess()V

    .line 2350
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2351
    const/4 v0, 0x0

    .line 2357
    :goto_0
    return v0

    .line 2354
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->showPreview()V

    .line 2357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setColorFilterProp(Lcom/oneplus/base/PropertyKey;F)Z
    .locals 1
    .param p2, "level"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;F)Z"
        }
    .end annotation

    .prologue
    .line 2407
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 2408
    const/high16 p2, 0x3f800000    # 1.0f

    .line 2413
    :cond_0
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2414
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateColorFilters()V

    .line 2417
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2409
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 2410
    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method private setFlipXProp(Z)Z
    .locals 5
    .param p1, "flip"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2425
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->verifyAccess()V

    .line 2426
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 2441
    :goto_0
    return v0

    .line 2428
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->canChangeParameters()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 2429
    goto :goto_0

    .line 2432
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-eqz v0, :cond_2

    .line 2433
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, p1, v3, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->flipX(ZZLjava/lang/Runnable;)V

    .line 2436
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-super {p0, v0, v4}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2438
    if-eqz p1, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    move v0, v3

    .line 2439
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 2438
    goto :goto_1

    :cond_4
    move v0, v2

    .line 2441
    goto :goto_0
.end method

.method private setFlipYProp(Z)Z
    .locals 5
    .param p1, "flip"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2449
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->verifyAccess()V

    .line 2450
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 2465
    :goto_0
    return v0

    .line 2452
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->canChangeParameters()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 2453
    goto :goto_0

    .line 2456
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-eqz v0, :cond_2

    .line 2457
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, p1, v3, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->flipY(ZZLjava/lang/Runnable;)V

    .line 2460
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-super {p0, v0, v4}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2462
    if-eqz p1, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    move v0, v3

    .line 2463
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 2462
    goto :goto_1

    :cond_4
    move v0, v2

    .line 2465
    goto :goto_0
.end method

.method private setOrientationProp(I)Z
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2473
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->verifyAccess()V

    .line 2474
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2496
    :goto_0
    return v0

    .line 2476
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->canChangeParameters()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2477
    goto :goto_0

    .line 2480
    :cond_1
    rem-int/lit16 p1, p1, 0x168

    .line 2481
    if-gez p1, :cond_2

    .line 2482
    add-int/lit16 p1, p1, 0x168

    .line 2483
    :cond_2
    rem-int/lit8 v0, p1, 0x5a

    if-eqz v0, :cond_3

    .line 2484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2487
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-eqz v0, :cond_4

    .line 2488
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, p1, v2}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->rotateTo(IZ)V

    .line 2491
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-super {p0, v0, v3}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2493
    if-eqz p1, :cond_5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    move v0, v2

    .line 2494
    goto :goto_0

    .line 2493
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 2496
    goto :goto_0
.end method

.method private setUseLessMemoryProp(Z)Z
    .locals 3
    .param p1, "useLessMemory"    # Z

    .prologue
    .line 2504
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    .line 2505
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 2506
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateLargeMemoryAllocation()V

    .line 2509
    :cond_0
    return v0
.end method

.method private showPreview()V
    .locals 2

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-eqz v0, :cond_0

    .line 2518
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2520
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2521
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setOverlay(Landroid/graphics/Bitmap;)V

    .line 2528
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->invalidateSelf()V

    .line 2530
    :cond_0
    return-void

    .line 2525
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2526
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setOverlay(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private startDecodingOriginalBitmap()Z
    .locals 9

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 2537
    sget-object v6, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/PhotoMedia;

    .line 2538
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v2, :cond_0

    .line 2540
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v7, "startDecodingOriginalBitmap() - No media to decode"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    :goto_0
    return v5

    .line 2543
    :cond_0
    instance-of v6, v2, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-nez v6, :cond_1

    .line 2545
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startDecodingOriginalBitmap() - Invalid media : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2550
    :cond_1
    sget-object v6, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 2551
    .local v3, "outputSize":Landroid/util/Size;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-gtz v6, :cond_3

    .line 2553
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startDecodingOriginalBitmap() - Invalid output size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, v2

    .line 2558
    check-cast v4, Lcom/oneplus/gallery2/media/PhotoMedia;

    .line 2559
    .local v4, "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    if-nez v3, :cond_4

    move v1, v0

    .line 2560
    .local v1, "maxOutputWidth":I
    :goto_1
    if-nez v3, :cond_5

    .line 2561
    .local v0, "maxOutputHeight":I
    :goto_2
    iget-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v6, "startDecodingOriginalBitmap()"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    new-instance v5, Lcom/oneplus/gallery2/editor/PhotoEditor$7;

    invoke-direct {v5, p0, v4, v1, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor$7;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/PhotoMedia;II)V

    invoke-virtual {v5}, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->start()V

    .line 2614
    const/4 v5, 0x1

    goto :goto_0

    .line 2559
    .end local v0    # "maxOutputHeight":I
    .end local v1    # "maxOutputWidth":I
    :cond_4
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    goto :goto_1

    .line 2560
    .restart local v1    # "maxOutputWidth":I
    :cond_5
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_2
.end method

.method private unbind(Lcom/oneplus/gallery2/editor/PhotoEditorObject;Z)V
    .locals 4
    .param p1, "obj"    # Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    .param p2, "checkPreparationState"    # Z

    .prologue
    .line 2621
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2624
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjectIsModifiedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2625
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjectStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2628
    if-eqz p2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-eqz v2, :cond_2

    .line 2630
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 2631
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    .line 2633
    .local v0, "checkingObj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery2/editor/PhotoEditorObject$State;

    if-ne v2, v3, :cond_0

    .line 2635
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 2639
    .end local v0    # "checkingObj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparing:Z

    if-nez v2, :cond_2

    .line 2641
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "unbind() - All bound objects prepared"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->completePreparation()Z

    .line 2646
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private updateColorFilters()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x43800000    # 256.0f

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 2653
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-nez v6, :cond_0

    .line 2720
    :goto_0
    return-void

    .line 2657
    :cond_0
    sget-object v6, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_MATRIX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/ColorMatrix;

    .line 2665
    .local v5, "userColorMatrix":Landroid/graphics/ColorMatrix;
    sget-object v6, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, -0x3d380000    # -100.0f

    mul-float v3, v6, v7

    .line 2666
    .local v3, "shift":F
    const/high16 v6, 0x40000000    # 2.0f

    neg-float v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v6, v11

    div-float v4, v6, v11

    .line 2667
    .local v4, "slope":F
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2668
    .local v0, "contrastMatrix":Landroid/graphics/ColorMatrix;
    const/16 v6, 0x14

    new-array v6, v6, [F

    aput v4, v6, v12

    aput v8, v6, v10

    const/4 v7, 0x2

    aput v8, v6, v7

    const/4 v7, 0x3

    aput v8, v6, v7

    const/4 v7, 0x4

    aput v3, v6, v7

    const/4 v7, 0x5

    aput v8, v6, v7

    const/4 v7, 0x6

    aput v4, v6, v7

    const/4 v7, 0x7

    aput v8, v6, v7

    const/16 v7, 0x8

    aput v8, v6, v7

    const/16 v7, 0x9

    aput v3, v6, v7

    const/16 v7, 0xa

    aput v8, v6, v7

    const/16 v7, 0xb

    aput v8, v6, v7

    const/16 v7, 0xc

    aput v4, v6, v7

    const/16 v7, 0xd

    aput v8, v6, v7

    const/16 v7, 0xe

    aput v3, v6, v7

    const/16 v7, 0xf

    aput v8, v6, v7

    const/16 v7, 0x10

    aput v8, v6, v7

    const/16 v7, 0x11

    aput v8, v6, v7

    const/16 v7, 0x12

    aput v9, v6, v7

    const/16 v7, 0x13

    aput v8, v6, v7

    invoke-virtual {v0, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 2681
    sget-object v6, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    mul-float v3, v6, v7

    .line 2682
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2683
    .local v1, "exposureMatrix":Landroid/graphics/ColorMatrix;
    const/16 v6, 0x14

    new-array v6, v6, [F

    aput v9, v6, v12

    aput v8, v6, v10

    const/4 v7, 0x2

    aput v8, v6, v7

    const/4 v7, 0x3

    aput v8, v6, v7

    const/4 v7, 0x4

    aput v3, v6, v7

    const/4 v7, 0x5

    aput v8, v6, v7

    const/4 v7, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    aput v8, v6, v7

    const/16 v7, 0x8

    aput v8, v6, v7

    const/16 v7, 0x9

    aput v3, v6, v7

    const/16 v7, 0xa

    aput v8, v6, v7

    const/16 v7, 0xb

    aput v8, v6, v7

    const/16 v7, 0xc

    aput v9, v6, v7

    const/16 v7, 0xd

    aput v8, v6, v7

    const/16 v7, 0xe

    aput v3, v6, v7

    const/16 v7, 0xf

    aput v8, v6, v7

    const/16 v7, 0x10

    aput v8, v6, v7

    const/16 v7, 0x11

    aput v8, v6, v7

    const/16 v7, 0x12

    aput v9, v6, v7

    const/16 v7, 0x13

    aput v8, v6, v7

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 2696
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2697
    .local v2, "saturationMatrix":Landroid/graphics/ColorMatrix;
    sget-object v6, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v9

    invoke-virtual {v2, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 2700
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-nez v6, :cond_1

    .line 2701
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    .line 2702
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 2703
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v2, v7}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 2704
    if-eqz v5, :cond_2

    .line 2705
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 2708
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-static {v6}, Lcom/oneplus/filter/FilterUtils;->isIdentityColorMatrix(Landroid/graphics/ColorMatrix;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2709
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->resetColorFilter()V

    .line 2712
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v6, :cond_4

    .line 2713
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v7, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2716
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->showPreview()V

    .line 2719
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v6, :cond_5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_2
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 2715
    :cond_4
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 2719
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private updateLargeMemoryAllocation()V
    .locals 2

    .prologue
    .line 2726
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "updateLargeMemoryAllocation() - Use less memory"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;

    .line 2736
    :goto_0
    return-void

    .line 2733
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "updateLargeMemoryAllocation() - Use normal memory"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->startDecodingOriginalBitmap()Z

    goto :goto_0
.end method

.method private updateModificationState(Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "isModified"    # Ljava/lang/Boolean;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    const/4 v6, 0x1

    .line 2742
    if-nez p1, :cond_9

    .line 2745
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 2746
    .local v0, "clipRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, v4, v8

    if-gtz v3, :cond_0

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, v4, v8

    if-gtz v3, :cond_0

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v3, v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, v4, v8

    if-gtz v3, :cond_0

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, v4, v8

    if-lez v3, :cond_1

    .line 2747
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2750
    :cond_1
    if-nez p1, :cond_2

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2751
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2754
    :cond_4
    if-nez p1, :cond_5

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2755
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2758
    :cond_5
    if-nez p1, :cond_7

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2760
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    .line 2762
    .local v2, "obj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2764
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2771
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    :cond_7
    if-nez p1, :cond_8

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v3, :cond_8

    .line 2772
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2775
    :cond_8
    if-nez p1, :cond_9

    .line 2776
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2778
    .end local v0    # "clipRect":Landroid/graphics/RectF;
    :cond_9
    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2779
    return-void
.end method


# virtual methods
.method public addFilter(ILcom/oneplus/gallery2/editor/PhotoEditorFilter;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oneplus/gallery2/editor/PhotoEditorFilter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p2, "filter":Lcom/oneplus/gallery2/editor/PhotoEditorFilter;, "Lcom/oneplus/gallery2/editor/PhotoEditorFilter<*>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->verifyAccess()V

    .line 392
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "setFilter() - Editor has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 398
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->bind(Lcom/oneplus/gallery2/editor/PhotoEditorObject;)V

    goto :goto_0
.end method

.method public addFilter(Lcom/oneplus/gallery2/editor/PhotoEditorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/editor/PhotoEditorFilter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "filter":Lcom/oneplus/gallery2/editor/PhotoEditorFilter;, "Lcom/oneplus/gallery2/editor/PhotoEditorFilter<*>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->addFilter(ILcom/oneplus/gallery2/editor/PhotoEditorFilter;)V

    .line 381
    return-void
.end method

.method public addOverlay(ILcom/oneplus/gallery2/editor/PhotoEditorOverlay;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "overlay"    # Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->verifyAccess()V

    .line 420
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "addOverlay() - Editor has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 426
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->bind(Lcom/oneplus/gallery2/editor/PhotoEditorObject;)V

    goto :goto_0
.end method

.method public addOverlay(Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;)V
    .locals 1
    .param p1, "overlay"    # Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->addOverlay(ILcom/oneplus/gallery2/editor/PhotoEditorOverlay;)V

    .line 409
    return-void
.end method

.method public final getClipRectPixels(II)Landroid/graphics/Rect;
    .locals 1
    .param p1, "originalWidth"    # I
    .param p2, "originalHeight"    # I

    .prologue
    .line 759
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPreviewImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 820
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 827
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->handleMessage(Landroid/os/Message;)V

    .line 830
    :goto_0
    return-void

    .line 823
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->startDecodingOriginalBitmap()Z

    goto :goto_0

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public final mapFromOriginal(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "result"    # Landroid/graphics/PointF;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 844
    if-eqz p1, :cond_0

    .line 845
    new-array v0, v1, [Landroid/graphics/PointF;

    aput-object p1, v0, v2

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1, p3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapFromOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V

    .line 846
    :cond_0
    return-void
.end method

.method public final mapFromOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V
    .locals 13
    .param p1, "points"    # [Landroid/graphics/PointF;
    .param p2, "result"    # [Landroid/graphics/PointF;
    .param p3, "flags"    # I

    .prologue
    .line 861
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 902
    :cond_0
    return-void

    .line 865
    :cond_1
    sget-object v9, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 866
    .local v0, "clipRect":Landroid/graphics/RectF;
    sget-object v9, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 867
    .local v2, "flipX":Z
    sget-object v9, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 868
    .local v3, "flipY":Z
    sget-object v9, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 871
    .local v6, "orientation":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 872
    .local v5, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_4

    const/4 v9, -0x1

    :goto_0
    int-to-float v10, v9

    if-eqz v3, :cond_5

    const/4 v9, -0x1

    :goto_1
    int-to-float v9, v9

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v5, v10, v9, v11, v12}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 873
    int-to-float v9, v6

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v5, v9, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 874
    const/4 v9, 0x2

    new-array v8, v9, [F

    .line 875
    .local v8, "srcCoords":[F
    const/4 v9, 0x2

    new-array v1, v9, [F

    .line 876
    .local v1, "destCoords":[F
    array-length v9, p1

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_0

    .line 878
    aget-object v7, p1, v4

    .line 879
    .local v7, "point":Landroid/graphics/PointF;
    if-eqz v7, :cond_3

    .line 882
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/PointF;->x:F

    aput v10, v8, v9

    .line 883
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/PointF;->y:F

    aput v10, v8, v9

    .line 884
    and-int/lit8 v9, p3, 0x1

    if-nez v9, :cond_2

    if-eqz v0, :cond_2

    .line 886
    const/4 v9, 0x0

    aget v10, v8, v9

    iget v11, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    aput v10, v8, v9

    .line 887
    const/4 v9, 0x1

    aget v10, v8, v9

    iget v11, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    aput v10, v8, v9

    .line 888
    const/4 v9, 0x0

    aget v10, v8, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 889
    const/4 v9, 0x1

    aget v10, v8, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 893
    :cond_2
    invoke-virtual {v5, v1, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 896
    aget-object v9, p2, v4

    if-eqz v9, :cond_6

    .line 897
    aget-object v9, p2, v4

    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 876
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 872
    .end local v1    # "destCoords":[F
    .end local v4    # "i":I
    .end local v7    # "point":Landroid/graphics/PointF;
    .end local v8    # "srcCoords":[F
    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 899
    .restart local v1    # "destCoords":[F
    .restart local v4    # "i":I
    .restart local v7    # "point":Landroid/graphics/PointF;
    .restart local v8    # "srcCoords":[F
    :cond_6
    new-instance v9, Landroid/graphics/PointF;

    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, p2, v4

    goto :goto_3
.end method

.method public final mapFromOriginalPixels(Landroid/graphics/Point;IILandroid/graphics/PointF;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "originalWidth"    # I
    .param p3, "originalHeight"    # I
    .param p4, "result"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 914
    if-eqz p1, :cond_0

    .line 915
    new-array v0, v1, [Landroid/graphics/Point;

    aput-object p1, v0, v2

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapFromOriginalPixels([Landroid/graphics/Point;II[Landroid/graphics/PointF;)V

    .line 916
    :cond_0
    return-void
.end method

.method public final mapFromOriginalPixels([Landroid/graphics/Point;II[Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "originalWidth"    # I
    .param p3, "originalHeight"    # I
    .param p4, "result"    # [Landroid/graphics/PointF;

    .prologue
    .line 929
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    array-length v1, p1

    new-array v0, v1, [Landroid/graphics/PointF;

    .line 934
    .local v0, "mappedPoints":[Landroid/graphics/PointF;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapFromPixels([Landroid/graphics/Point;II[Landroid/graphics/PointF;)V

    .line 937
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapFromOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V

    goto :goto_0
.end method

.method public final mapFromPixels(Landroid/graphics/Point;IILandroid/graphics/PointF;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "pixelWidth"    # I
    .param p3, "pixelHeight"    # I
    .param p4, "result"    # Landroid/graphics/PointF;

    .prologue
    const/4 v0, 0x0

    .line 951
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 954
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 957
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method public final mapFromPixels([Landroid/graphics/Point;II[Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "pixelWidth"    # I
    .param p3, "pixelHeight"    # I
    .param p4, "result"    # [Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x0

    .line 971
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 990
    :cond_0
    return-void

    .line 973
    :cond_1
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 974
    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 977
    array-length v4, p1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 979
    aget-object v1, p1, v0

    .line 980
    .local v1, "point":Landroid/graphics/Point;
    if-eqz v1, :cond_2

    .line 982
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float v2, v4, v5

    .line 983
    .local v2, "x":F
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, p3

    div-float v3, v4, v5

    .line 984
    .local v3, "y":F
    aget-object v4, p4, v0

    if-eqz v4, :cond_3

    .line 985
    aget-object v4, p4, v0

    invoke-virtual {v4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 977
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 987
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_3
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, p4, v0

    goto :goto_1
.end method

.method public final mapToOriginal(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "result"    # Landroid/graphics/PointF;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    new-array v0, v1, [Landroid/graphics/PointF;

    aput-object p1, v0, v2

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1, p3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapToOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V

    .line 1006
    :cond_0
    return-void
.end method

.method public final mapToOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V
    .locals 13
    .param p1, "points"    # [Landroid/graphics/PointF;
    .param p2, "result"    # [Landroid/graphics/PointF;
    .param p3, "flags"    # I

    .prologue
    .line 1021
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 1062
    :cond_0
    return-void

    .line 1025
    :cond_1
    sget-object v9, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1026
    .local v0, "clipRect":Landroid/graphics/RectF;
    sget-object v9, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1027
    .local v2, "flipX":Z
    sget-object v9, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1028
    .local v3, "flipY":Z
    sget-object v9, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1031
    .local v6, "orientation":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1032
    .local v5, "matrix":Landroid/graphics/Matrix;
    neg-int v9, v6

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v5, v9, v10, v11}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1033
    if-eqz v2, :cond_4

    const/4 v9, -0x1

    :goto_0
    int-to-float v10, v9

    if-eqz v3, :cond_5

    const/4 v9, -0x1

    :goto_1
    int-to-float v9, v9

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v5, v10, v9, v11, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1034
    const/4 v9, 0x2

    new-array v8, v9, [F

    .line 1035
    .local v8, "srcCoords":[F
    const/4 v9, 0x2

    new-array v1, v9, [F

    .line 1036
    .local v1, "destCoords":[F
    array-length v9, p1

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_0

    .line 1038
    aget-object v7, p1, v4

    .line 1039
    .local v7, "point":Landroid/graphics/PointF;
    if-eqz v7, :cond_3

    .line 1042
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/PointF;->x:F

    aput v10, v8, v9

    .line 1043
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/PointF;->y:F

    aput v10, v8, v9

    .line 1044
    invoke-virtual {v5, v1, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1047
    and-int/lit8 v9, p3, 0x1

    if-nez v9, :cond_2

    if-eqz v0, :cond_2

    .line 1049
    const/4 v9, 0x0

    aget v10, v1, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v10, v11

    aput v10, v1, v9

    .line 1050
    const/4 v9, 0x1

    aget v10, v1, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    aput v10, v1, v9

    .line 1051
    const/4 v9, 0x0

    aget v10, v1, v9

    iget v11, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 1052
    const/4 v9, 0x1

    aget v10, v1, v9

    iget v11, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 1056
    :cond_2
    aget-object v9, p2, v4

    if-eqz v9, :cond_6

    .line 1057
    aget-object v9, p2, v4

    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 1036
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1033
    .end local v1    # "destCoords":[F
    .end local v4    # "i":I
    .end local v7    # "point":Landroid/graphics/PointF;
    .end local v8    # "srcCoords":[F
    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 1059
    .restart local v1    # "destCoords":[F
    .restart local v4    # "i":I
    .restart local v7    # "point":Landroid/graphics/PointF;
    .restart local v8    # "srcCoords":[F
    :cond_6
    new-instance v9, Landroid/graphics/PointF;

    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, p2, v4

    goto :goto_3
.end method

.method public final mapToOriginalPixels(Landroid/graphics/PointF;IILandroid/graphics/Point;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "originalWidth"    # I
    .param p3, "originalHeight"    # I
    .param p4, "result"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1074
    if-eqz p1, :cond_0

    .line 1075
    new-array v0, v1, [Landroid/graphics/PointF;

    aput-object p1, v0, v2

    new-array v1, v1, [Landroid/graphics/Point;

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapToOriginalPixels([Landroid/graphics/PointF;II[Landroid/graphics/Point;)V

    .line 1076
    :cond_0
    return-void
.end method

.method public final mapToOriginalPixels([Landroid/graphics/PointF;II[Landroid/graphics/Point;)V
    .locals 2
    .param p1, "points"    # [Landroid/graphics/PointF;
    .param p2, "originalWidth"    # I
    .param p3, "originalHeight"    # I
    .param p4, "result"    # [Landroid/graphics/Point;

    .prologue
    .line 1089
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    array-length v1, p1

    new-array v0, v1, [Landroid/graphics/PointF;

    .line 1094
    .local v0, "mappedPoints":[Landroid/graphics/PointF;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapToOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V

    .line 1097
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapToPixels([Landroid/graphics/PointF;II[Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public final mapToPixels(Landroid/graphics/PointF;IILandroid/graphics/Point;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "pixelWidth"    # I
    .param p3, "pixelHeight"    # I
    .param p4, "result"    # Landroid/graphics/Point;

    .prologue
    const/4 v0, 0x0

    .line 1111
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1114
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1117
    iget v0, p1, Landroid/graphics/PointF;->x:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public final mapToPixels([Landroid/graphics/PointF;II[Landroid/graphics/Point;)V
    .locals 6
    .param p1, "points"    # [Landroid/graphics/PointF;
    .param p2, "pixelWidth"    # I
    .param p3, "pixelHeight"    # I
    .param p4, "result"    # [Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x0

    .line 1131
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 1150
    :cond_0
    return-void

    .line 1133
    :cond_1
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1134
    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1137
    array-length v4, p1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1139
    aget-object v1, p1, v0

    .line 1140
    .local v1, "point":Landroid/graphics/PointF;
    if-eqz v1, :cond_2

    .line 1142
    iget v4, v1, Landroid/graphics/PointF;->x:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1143
    .local v2, "x":I
    iget v4, v1, Landroid/graphics/PointF;->y:F

    int-to-float v5, p3

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1144
    .local v3, "y":I
    aget-object v4, p4, v0

    if-eqz v4, :cond_3

    .line 1145
    aget-object v4, p4, v0

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1137
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1147
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_3
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, p4, v0

    goto :goto_1
.end method

.method protected onChangeMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2
    .param p1, "currentMedia"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "newMedia"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v1, 0x0

    .line 1189
    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1190
    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1191
    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1192
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1195
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->setOverlay(Landroid/graphics/Bitmap;)V

    .line 1197
    :cond_0
    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1198
    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    .line 1199
    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1200
    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1203
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->onChangeMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    return v0
.end method

.method protected onPrepare(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 10
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1333
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-nez v0, :cond_0

    .line 1334
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v0, :cond_7

    .line 1338
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;

    .line 1347
    :cond_1
    iput-boolean v9, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsPreparing:Z

    .line 1350
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    if-nez v0, :cond_5

    .line 1352
    new-instance v0, Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-direct {v0}, Lcom/oneplus/gallery2/editor/PreviewDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    .line 1355
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1356
    .local v8, "orientation":I
    if-eqz v8, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, v8, v1}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->rotateTo(IZ)V

    .line 1360
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1361
    .local v6, "flipX":Z
    if-eqz v6, :cond_3

    .line 1362
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, v6, v1, v4}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->flipX(ZZLjava/lang/Runnable;)V

    .line 1363
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1364
    .local v7, "flipY":Z
    if-eqz v7, :cond_4

    .line 1365
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {v0, v7, v1, v4}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->flipY(ZZLjava/lang/Runnable;)V

    .line 1368
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateColorFilters()V

    .line 1370
    .end local v6    # "flipX":Z
    .end local v7    # "flipY":Z
    .end local v8    # "orientation":I
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updatePreview(Landroid/graphics/drawable/Drawable;)V

    .line 1373
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 1375
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    new-instance v4, Lcom/oneplus/gallery2/editor/PhotoEditor$4;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/editor/PhotoEditor$4;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    .line 1388
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 1390
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 1392
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    new-instance v4, Lcom/oneplus/gallery2/editor/PhotoEditor$5;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/editor/PhotoEditor$5;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    :cond_6
    :goto_1
    move v0, v9

    .line 1406
    :goto_2
    return v0

    .line 1341
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "onPrepare() - No ThumbnailImageManager interface"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1342
    goto :goto_2

    .line 1385
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1402
    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onSmallOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected onProcessMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/16 v3, 0x2711

    const/4 v1, 0x0

    .line 1490
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 1491
    .local v0, "outputSize":Landroid/util/Size;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1493
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProcessMedia() - Invalid output size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :goto_0
    return v1

    .line 1498
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1500
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1501
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->startDecodingOriginalBitmap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1503
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "onProcessMedia() - Fail to start decoding original bitmap"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1509
    :cond_2
    new-instance v1, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    check-cast p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/PhotoMedia;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    .line 1510
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iput-object v1, v2, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->clipRect:Landroid/graphics/RectF;

    .line 1511
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->flipX:Z

    .line 1512
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->flipY:Z

    .line 1513
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->orientation:I

    .line 1514
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    iput-object v1, v2, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->outputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 1515
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    iput-object v1, v2, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->outputSize:Landroid/util/Size;

    .line 1516
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v2, Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;->outputUri:Landroid/net/Uri;

    .line 1517
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1520
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1515
    :cond_3
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/util/Size;-><init>(II)V

    goto :goto_1
.end method

.method protected onRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1529
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;

    .line 1532
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1534
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v1, v2, [Lcom/oneplus/gallery2/editor/PhotoEditorObject;

    .line 1535
    .local v1, "objects":[Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1536
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1537
    aget-object v2, v1, v0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->unbind(Lcom/oneplus/gallery2/editor/PhotoEditorObject;Z)V

    .line 1536
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1538
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1542
    .end local v0    # "i":I
    .end local v1    # "objects":[Lcom/oneplus/gallery2/editor/PhotoEditorObject;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1544
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z

    .line 1545
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;

    .line 1546
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1547
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    invoke-super {p0}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->onRelease()V

    .line 1551
    return-void

    .line 1547
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onRevert(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 1558
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1559
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1560
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1561
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1562
    const/4 v0, 0x1

    return v0
.end method

.method protected onVerifyMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 1603
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshPreview()V
    .locals 1

    .prologue
    .line 1958
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->refreshPreview(I)V

    .line 1959
    return-void
.end method

.method public refreshPreview(I)V
    .locals 13
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1974
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->verifyAccess()V

    .line 1975
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    :goto_0
    return-void

    .line 1977
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor$8;->$SwitchMap$com$oneplus$gallery2$editor$MediaEditor$State:[I

    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/editor/MediaEditor$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1993
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPreview() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1980
    :pswitch_0
    iput-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    .line 1996
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1998
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "refreshPreview() - No original preview image"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1983
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1985
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1986
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    .line 1990
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "refreshPreview() - Pendding refresh preview"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1989
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    goto :goto_1

    .line 2003
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery2/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->changeState(Lcom/oneplus/gallery2/editor/MediaEditor$State;)V

    .line 2006
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_7

    .line 2008
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v12, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 2009
    .local v12, "previewImage":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2010
    invoke-direct {p0, v7, v12, v7}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2008
    .end local v12    # "previewImage":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v12, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 2013
    .restart local v12    # "previewImage":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->getClipRectPixels(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 2014
    .local v4, "clipRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 2015
    .local v1, "overlayImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 2017
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2018
    .local v11, "canvas":Landroid/graphics/Canvas;
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2022
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    :goto_3
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    iget-object v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->applyOverlays(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;)V

    .line 2023
    invoke-direct {p0, v7, v12, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2021
    :cond_6
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    .line 2029
    .end local v1    # "overlayImage":Landroid/graphics/Bitmap;
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .end local v12    # "previewImage":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2031
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7, v0, v7}, Lcom/oneplus/gallery2/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2036
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    if-eqz v0, :cond_9

    .line 2038
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->cancel(Z)Z

    .line 2039
    new-instance v5, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    iget-object v9, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    move-object v6, p0

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    goto/16 :goto_0

    .line 2043
    :cond_9
    new-instance v5, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    iget-object v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    iget-object v9, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    move-object v6, p0

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;-><init>(Lcom/oneplus/gallery2/editor/PhotoEditor;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    .line 2044
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1977
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetColorFilter()V
    .locals 1

    .prologue
    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    .line 2054
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const/16 v3, 0x2711

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2303
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_1

    .line 2304
    check-cast p2, Landroid/graphics/RectF;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setClipRectProp(Landroid/graphics/RectF;)Z

    move-result v0

    .line 2339
    :cond_0
    :goto_0
    return v0

    .line 2305
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_3

    .line 2308
    :cond_2
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setColorFilterProp(Lcom/oneplus/base/PropertyKey;F)Z

    move-result v0

    goto :goto_0

    .line 2309
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_COLOR_MATRIX:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_5

    .line 2311
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2313
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateColorFilters()V

    .line 2314
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2317
    goto :goto_0

    .line 2319
    :cond_5
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_6

    .line 2320
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setFlipXProp(Z)Z

    move-result v0

    goto :goto_0

    .line 2321
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_6
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_7

    .line 2322
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setFlipYProp(Z)Z

    move-result v0

    goto :goto_0

    .line 2323
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_7
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_8

    .line 2324
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setClippedPreviewProp(Z)Z

    move-result v0

    goto :goto_0

    .line 2325
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_8
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_9

    .line 2326
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setOrientationProp(I)Z

    move-result v0

    goto :goto_0

    .line 2327
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_9
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v2, :cond_a

    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_c

    .line 2329
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2331
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2332
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    goto :goto_0

    :cond_b
    move v0, v1

    .line 2335
    goto/16 :goto_0

    .line 2337
    :cond_c
    sget-object v0, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 2338
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->setUseLessMemoryProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2339
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method
