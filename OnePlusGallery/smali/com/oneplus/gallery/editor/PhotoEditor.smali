.class public Lcom/oneplus/gallery/editor/PhotoEditor;
.super Lcom/oneplus/gallery/editor/BaseMediaEditor;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/oneplus/gallery/editor/MediaEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/PhotoEditor$7;,
        Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;,
        Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;,
        Lcom/oneplus/gallery/editor/PhotoEditor$ColorFilterType;
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
            "Lcom/oneplus/gallery/editor/PhotoEditorObject$State;",
            ">;"
        }
    .end annotation
.end field

.field private final m_BoundObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/oneplus/gallery/editor/PhotoEditorObject;",
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
            "Lcom/oneplus/gallery/editor/PhotoEditorFilter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

.field private volatile m_IsDecodingOriginalBitmap:Z

.field private m_IsPreparing:Z

.field private m_IsPreparingBoundObjects:Z

.field private m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

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
            "Lcom/oneplus/gallery/editor/PhotoEditorOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private m_PeddingRefreshPreview:Ljava/lang/Integer;

.field private m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

.field private volatile m_PreviewImage:Landroid/graphics/Bitmap;

.field private m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

.field private m_RemainingMediaCountStateFs:Landroid/os/StatFs;

.field private m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

.field private m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

.field private m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 79
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AutoSelectOutputPath"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;

    .line 83
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ClipRect"

    const-class v2, Landroid/graphics/RectF;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    .line 87
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ColorFilterContrast"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    .line 91
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ColorFilterExposure"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    .line 95
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ColorFilterSaturation"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    .line 99
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ColorMatrix"

    const-class v2, Landroid/graphics/ColorMatrix;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_MATRIX:Lcom/oneplus/base/PropertyKey;

    .line 103
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FlipX"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    .line 107
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FlipY"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    .line 111
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Orientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 115
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputFormat"

    const-class v2, Landroid/graphics/Bitmap$CompressFormat;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    .line 119
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 123
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "OutputUri"

    const-class v2, Landroid/net/Uri;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    .line 127
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ShowClippedPreview"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    .line 131
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "UseLessMemory"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    .line 160
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

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->COPIED_EXIF_ATTRS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    .line 213
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditor$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/PhotoEditor$1;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjectIsModifiedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 221
    new-instance v0, Lcom/oneplus/gallery/editor/PhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/PhotoEditor$2;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjectStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 357
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/editor/PhotoEditorObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/PhotoEditorObject;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->onBoundObjectIsModifiedChanged(Lcom/oneplus/gallery/editor/PhotoEditorObject;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/editor/PhotoEditorObject;Lcom/oneplus/gallery/editor/PhotoEditorObject$State;Lcom/oneplus/gallery/editor/PhotoEditorObject$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/PhotoEditorObject;
    .param p2, "x2"    # Lcom/oneplus/gallery/editor/PhotoEditorObject$State;
    .param p3, "x3"    # Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/editor/PhotoEditor;->onBoundObjectStateChanged(Lcom/oneplus/gallery/editor/PhotoEditorObject;Lcom/oneplus/gallery/editor/PhotoEditorObject$State;Lcom/oneplus/gallery/editor/PhotoEditorObject$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->onSmallOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/editor/PhotoEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/gallery/editor/PhotoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oneplus/gallery/editor/PhotoEditor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/PhotoMedia;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/PhotoMedia;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/editor/PhotoEditor;->decodeOriginalBitmap(Lcom/oneplus/gallery/media/PhotoMedia;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->processFinalResult(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->onMediaProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->processPreviewImages(Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/editor/PhotoEditor;)Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->onFinalMediaObtained(Lcom/oneplus/gallery/media/Media;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PhotoEditor;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->onOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private applyFilter(Landroid/graphics/Bitmap;IIZZ[Lcom/oneplus/gallery/editor/PhotoEditorFilter;)Landroid/graphics/Bitmap;
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
            "Lcom/oneplus/gallery/editor/PhotoEditorFilter",
            "<*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 420
    .local p6, "filters":[Lcom/oneplus/gallery/editor/PhotoEditorFilter;, "[Lcom/oneplus/gallery/editor/PhotoEditorFilter<*>;"
    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    array-length v7, p6

    if-nez v7, :cond_1

    :cond_0
    move-object v0, p1

    .line 453
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 422
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p4, :cond_4

    const/4 v2, 0x1

    .line 423
    .local v2, "flags":I
    :goto_1
    if-eqz p5, :cond_2

    .line 424
    or-int/lit8 v2, v2, 0x2

    .line 425
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v4, "hslBitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/editor/PhotoEditorFilter<Lcom/oneplus/media/HslBitmapBuffer;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v1, "bitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/editor/PhotoEditorFilter<Landroid/graphics/Bitmap;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v7, p6

    if-ge v5, v7, :cond_6

    .line 429
    aget-object v7, p6, v5

    invoke-virtual {v7}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->getImageType()Ljava/lang/Class;

    move-result-object v6

    .line 430
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 431
    aget-object v7, p6, v5

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 422
    .end local v1    # "bitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/editor/PhotoEditorFilter<Landroid/graphics/Bitmap;>;>;"
    .end local v2    # "flags":I
    .end local v4    # "hslBitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/editor/PhotoEditorFilter<Lcom/oneplus/media/HslBitmapBuffer;>;>;"
    .end local v5    # "i":I
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 432
    .restart local v1    # "bitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/editor/PhotoEditorFilter<Landroid/graphics/Bitmap;>;>;"
    .restart local v2    # "flags":I
    .restart local v4    # "hslBitmapFilters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/editor/PhotoEditorFilter<Lcom/oneplus/media/HslBitmapBuffer;>;>;"
    .restart local v5    # "i":I
    .restart local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const-class v7, Lcom/oneplus/media/HslBitmapBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 433
    aget-object v7, p6, v5

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 437
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 439
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 440
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    invoke-virtual {v7, p1, p2, p3, v2}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->applyFilter(Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    check-cast p1, Landroid/graphics/Bitmap;

    .line 439
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 444
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 446
    new-instance v3, Lcom/oneplus/media/HslBitmapBuffer;

    invoke-direct {v3, p1}, Lcom/oneplus/media/HslBitmapBuffer;-><init>(Landroid/graphics/Bitmap;)V

    .line 447
    .local v3, "hslBitmapBuffer":Lcom/oneplus/media/HslBitmapBuffer;
    const/4 v5, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 448
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    invoke-virtual {v7, v3, p2, p3, v2}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->applyFilter(Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "hslBitmapBuffer":Lcom/oneplus/media/HslBitmapBuffer;
    check-cast v3, Lcom/oneplus/media/HslBitmapBuffer;

    .line 447
    .restart local v3    # "hslBitmapBuffer":Lcom/oneplus/media/HslBitmapBuffer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 449
    :cond_8
    invoke-virtual {v3, p1}, Lcom/oneplus/media/HslBitmapBuffer;->copyToBitmap(Landroid/graphics/Bitmap;)V

    .end local v3    # "hslBitmapBuffer":Lcom/oneplus/media/HslBitmapBuffer;
    :cond_9
    move-object v0, p1

    .line 453
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private applyOverlays(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I
    .param p4, "clipRect"    # Landroid/graphics/Rect;
    .param p5, "isPreview"    # Z
    .param p6, "overlays"    # [Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    .prologue
    .line 460
    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    array-length v0, p6

    if-nez v0, :cond_1

    .line 468
    :cond_0
    return-void

    .line 462
    :cond_1
    if-eqz p5, :cond_3

    const/4 v5, 0x1

    .line 463
    .local v5, "flags":I
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 464
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

    .line 465
    iget v0, p4, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p4, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 466
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, p6

    if-ge v6, v0, :cond_0

    .line 467
    aget-object v0, p6, v6

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gallery/editor/PhotoEditorOverlay;->drawOverlay(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V

    .line 466
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 462
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "flags":I
    .end local v6    # "i":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private bind(Lcom/oneplus/gallery/editor/PhotoEditorObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/oneplus/gallery/editor/PhotoEditorObject;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p1, p0}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->bind(Lcom/oneplus/gallery/editor/PhotoEditor;)V

    .line 480
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjectIsModifiedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 481
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjectStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 484
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparing:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-ne v0, v1, :cond_2

    .line 486
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/PhotoMedia;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->prepare(Lcom/oneplus/gallery/media/PhotoMedia;Landroid/graphics/Bitmap;)V

    .line 487
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

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

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 491
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->prepare()Z

    .line 498
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    .line 500
    :cond_1
    return-void

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "bind() - Pending preparing bound object"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private canChangeParameters()Z
    .locals 2

    .prologue
    .line 506
    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/MediaEditor$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 512
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 510
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 506
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

    .line 521
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 522
    .local v4, "originalWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 523
    .local v3, "originalHeight":I
    invoke-direct {p0, p3, v4, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v5

    .line 524
    .local v5, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 526
    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "clip() - Empty clip rectangle"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_0
    return-object v6

    .line 533
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

    .line 534
    move-object p2, p1

    :goto_1
    move-object v6, p2

    .line 557
    goto :goto_0

    .line 538
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

    .line 540
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 541
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 548
    :goto_2
    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 549
    .local v1, "destRect":Landroid/graphics/Rect;
    const/4 v7, 0x0

    invoke-virtual {v0, p1, v5, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 552
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "destRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    .line 554
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "clip() - Fail to clip bitmap"

    invoke-static {v7, v8, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 545
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

    .line 546
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
    .line 564
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->clipAndRotate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;

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
    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 570
    .local v15, "originalWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 571
    .local v14, "originalHeight":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15, v14}, Lcom/oneplus/gallery/editor/PhotoEditor;->getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v18

    .line 572
    .local v18, "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "clipAndRotate() - Empty clip rectangle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const/4 v2, 0x0

    .line 654
    :goto_0
    return-object v2

    .line 577
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "clipAndRotate() - Source rect : "

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    sparse-switch p4, :sswitch_data_0

    .line 589
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 590
    .local v17, "outputWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 593
    .local v16, "outputHeight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "clipAndRotate() - Output size : "

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " x "

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
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

    .line 600
    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-eqz p6, :cond_2

    :cond_1
    const/16 v2, 0xb4

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    .line 601
    :cond_2
    move-object/from16 p2, p1

    :goto_2
    move-object/from16 v2, p2

    .line 654
    goto :goto_0

    .line 585
    .end local v16    # "outputHeight":I
    .end local v17    # "outputWidth":I
    :sswitch_0
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 586
    .restart local v17    # "outputWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 587
    .restart local v16    # "outputHeight":I
    goto :goto_1

    .line 604
    :cond_3
    :try_start_1
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 605
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

    .line 607
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 608
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 609
    .local v12, "destRect":Landroid/graphics/RectF;
    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    .line 610
    .local v10, "centerX":F
    move/from16 v0, v16

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .line 611
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

    .line 612
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual {v7, v2, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 613
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 614
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

    .line 615
    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 616
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v2, p2

    .line 617
    goto/16 :goto_0

    .line 611
    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    .line 619
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

    .line 620
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 621
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

    .line 619
    :cond_7
    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    goto :goto_6

    .line 627
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

    .line 629
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 630
    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 637
    :goto_7
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 638
    .restart local v12    # "destRect":Landroid/graphics/RectF;
    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    .line 639
    .restart local v10    # "centerX":F
    move/from16 v0, v16

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .line 640
    .restart local v11    # "centerY":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 641
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

    .line 642
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual {v7, v2, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 643
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 644
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

    .line 645
    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 646
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 649
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "centerX":F
    .end local v11    # "centerY":F
    .end local v12    # "destRect":Landroid/graphics/RectF;
    :catch_0
    move-exception v13

    .line 651
    .local v13, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "clipAndRotate() - Fail to create bitmap"

    invoke-static {v2, v3, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 634
    .end local v13    # "ex":Ljava/lang/Throwable;
    :cond_a
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 635
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    goto :goto_7

    .line 641
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

    .line 581
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private decodeOriginalBitmap(Lcom/oneplus/gallery/media/PhotoMedia;II)Landroid/graphics/Bitmap;
    .locals 25
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;
    .param p2, "maxOutputWidth"    # I
    .param p3, "maxOutputHeight"    # I

    .prologue
    .line 662
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery/media/PhotoMedia;->getWidth()I

    move-result v9

    .line 663
    .local v9, "originalWidth":I
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery/media/PhotoMedia;->getHeight()I

    move-result v8

    .line 664
    .local v8, "originalHeight":I
    move v4, v9

    .line 665
    .local v4, "decodeWidth":I
    move v3, v8

    .line 666
    .local v3, "decodeHeight":I
    if-lez v9, :cond_0

    if-gtz v8, :cond_1

    .line 668
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "decodeOriginalBitmap() - No photo size"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v7, 0x0

    .line 725
    :goto_0
    return-object v7

    .line 671
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "decodeOriginalBitmap() - Original size : "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, " x "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v19 .. v23}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 672
    const-wide/high16 v20, 0x4170000000000000L    # 1.6777216E7

    mul-int v19, v9, v8

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v14, v20, v22

    .line 673
    .local v14, "sizeRatio":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v19, v14, v20

    if-gez v19, :cond_2

    .line 675
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 676
    int-to-double v0, v9

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    move-wide/from16 v0, v20

    double-to-int v4, v0

    .line 677
    int-to-double v0, v8

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    move-wide/from16 v0, v20

    double-to-int v3, v0

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "decodeOriginalBitmap() - Original size is too large, use smaller size : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " x "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_2
    if-gtz p2, :cond_5

    const/high16 v11, 0x3f800000    # 1.0f

    .line 681
    .local v11, "scaleX":F
    :goto_1
    if-gtz p3, :cond_6

    const/high16 v12, 0x3f800000    # 1.0f

    .line 682
    .local v12, "scaleY":F
    :goto_2
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 683
    .local v10, "scale":F
    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v19, v10, v19

    if-gez v19, :cond_3

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x3a83126f    # 0.001f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_3

    .line 685
    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v10

    move/from16 v0, v19

    float-to-int v4, v0

    .line 686
    int-to-float v0, v3

    move/from16 v19, v0

    mul-float v19, v19, v10

    move/from16 v0, v19

    float-to-int v3, v0

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "decodeOriginalBitmap() - Max output size is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " x "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", use smaller size : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " x "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 692
    .local v16, "time":J
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery/media/PhotoMedia;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 694
    .local v6, "filePath":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery/media/PhotoMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 695
    .local v2, "contentUri":Landroid/net/Uri;
    if-eqz v2, :cond_a

    .line 697
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .local v13, "stream":Ljava/io/InputStream;
    const/16 v20, 0x0

    .line 699
    const/16 v19, 0x9

    :try_start_1
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v13, v4, v3, v0, v1}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 700
    .local v7, "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_4

    if-eqz v20, :cond_7

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 718
    .end local v13    # "stream":Ljava/io/InputStream;
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v16, v20, v16

    .line 719
    if-nez v7, :cond_c

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "decodeOriginalBitmap() - Fail to decode "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 680
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "scale":F
    .end local v11    # "scaleX":F
    .end local v12    # "scaleY":F
    .end local v16    # "time":J
    :cond_5
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v4

    move/from16 v20, v0

    div-float v11, v19, v20

    goto/16 :goto_1

    .line 681
    .restart local v11    # "scaleX":F
    :cond_6
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    div-float v12, v19, v20

    goto/16 :goto_2

    .line 700
    .restart local v2    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "scale":F
    .restart local v12    # "scaleY":F
    .restart local v13    # "stream":Ljava/io/InputStream;
    .restart local v16    # "time":J
    :catch_0
    move-exception v18

    .local v18, "x2":Ljava/lang/Throwable;
    :try_start_3
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 701
    .end local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "stream":Ljava/io/InputStream;
    .end local v18    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 703
    .local v5, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "decodeOriginalBitmap() - Fail to open "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 704
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 700
    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :cond_7
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 697
    .end local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v19

    :try_start_5
    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 700
    :catchall_0
    move-exception v20

    move-object/from16 v24, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v24

    :goto_4
    if-eqz v13, :cond_8

    if-eqz v20, :cond_9

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_5
    :try_start_7
    throw v19

    :catch_3
    move-exception v18

    .restart local v18    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v18    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 709
    .end local v13    # "stream":Ljava/io/InputStream;
    :cond_a
    if-eqz v6, :cond_b

    .line 710
    const/16 v19, 0x9

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v4, v3, v0, v1}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 713
    .end local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "decodeOriginalBitmap() - No file path or content URI to decode"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 724
    .restart local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "decodeOriginalBitmap() - Take "

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const-string v22, " ms to decode original bitmap"

    invoke-static/range {v19 .. v22}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 700
    .end local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v19

    goto :goto_4
.end method

.method private getCanidateFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "baseFileName"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;

    .prologue
    .line 731
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

    .line 732
    .local v0, "candFile":Ljava/io/File;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x63

    if-gt v1, v2, :cond_1

    .line 734
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    .end local v0    # "candFile":Ljava/io/File;
    :goto_1
    return-object v0

    .line 738
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

    .line 732
    .restart local v0    # "candFile":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
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

    .line 759
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 760
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 772
    :goto_0
    return-object v0

    .line 763
    :cond_1
    if-eqz p1, :cond_2

    .line 765
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 766
    .local v0, "clipRectPixels":Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 767
    iget v1, p1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 768
    iget v1, p1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 769
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 772
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

    .line 779
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "getFreeSpace() - invalid path"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :goto_0
    return-wide v2

    .line 787
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    if-eqz v1, :cond_2

    .line 788
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v1, p1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 792
    :goto_1
    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v6

    const-wide/32 v8, 0x6400000

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 790
    :cond_2
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 794
    :catch_0
    move-exception v0

    .line 796
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "getFreeSpace() - Fail to get free storage space"

    invoke-static {v1, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onBoundObjectIsModifiedChanged(Lcom/oneplus/gallery/editor/PhotoEditorObject;Z)V
    .locals 1
    .param p1, "obj"    # Lcom/oneplus/gallery/editor/PhotoEditorObject;
    .param p2, "isModified"    # Z

    .prologue
    .line 1148
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    .line 1149
    return-void

    .line 1148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBoundObjectStateChanged(Lcom/oneplus/gallery/editor/PhotoEditorObject;Lcom/oneplus/gallery/editor/PhotoEditorObject$State;Lcom/oneplus/gallery/editor/PhotoEditorObject$State;)V
    .locals 4
    .param p1, "obj"    # Lcom/oneplus/gallery/editor/PhotoEditorObject;
    .param p2, "prevState"    # Lcom/oneplus/gallery/editor/PhotoEditorObject$State;
    .param p3, "state"    # Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    .prologue
    .line 1155
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-ne p2, v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-eqz v2, :cond_2

    .line 1157
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 1158
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;

    .line 1160
    .local v0, "checkingObj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-ne v2, v3, :cond_0

    .line 1162
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 1166
    .end local v0    # "checkingObj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparing:Z

    if-nez v2, :cond_2

    .line 1168
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "onBoundObjectStateChanged() - All bound objects prepared"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->completePreparation()Z

    .line 1170
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview()V

    .line 1173
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private onFinalMediaObtained(Lcom/oneplus/gallery/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "onFinalMediaObtained() - Media : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1204
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->completeProcessing(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "onFinalMediaObtained() - Fail to complete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_0
    return-void
.end method

.method private onMediaProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 6
    .param p1, "task"    # Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    .prologue
    const/4 v5, 0x0

    .line 1213
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    if-eq v0, p1, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "onMediaProcessed() - Task cancelled"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-object v1, p1, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->contentUri:Landroid/net/Uri;

    .line 1221
    .local v1, "contentUri":Landroid/net/Uri;
    iget-object v2, p1, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->mimeType:Ljava/lang/String;

    .line 1222
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "onMediaProcessed() - Content URI : "

    invoke-static {v0, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1225
    if-eqz v1, :cond_2

    .line 1227
    iget-boolean v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->autoSelectOutputPath:Z

    if-eqz v0, :cond_1

    .line 1229
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1235
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v3, Lcom/oneplus/gallery/editor/PhotoEditor$3;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/PhotoEditor$3;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1233
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_AUTO_SELECT_OUTPUT_PATH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1245
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->SAVING:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    if-ne v0, v3, :cond_3

    .line 1246
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->UNKNOWN_ERROR:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->changeMediaSavingState(Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;)V

    .line 1247
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->onFinalMediaObtained(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0
.end method

.method private onOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1255
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/oneplus/gallery/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-eq v3, v6, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    if-nez p2, :cond_2

    .line 1261
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "onOriginalPreviewBitmapDecoded() - Cannot decode preview bitmap"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    sget-object v3, Lcom/oneplus/gallery/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    goto :goto_0

    .line 1267
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1268
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1271
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    move v0, v4

    .line 1272
    .local v0, "hasPreviewImage":Z
    :goto_1
    iput-object p2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1273
    iput-object p2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1276
    if-eqz p2, :cond_4

    .line 1278
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-direct {p0, p2, v6, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1279
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    .line 1283
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 1285
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1286
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1292
    :cond_5
    :goto_2
    iput-boolean v5, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparing:Z

    .line 1295
    iget-boolean v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v3, :cond_9

    .line 1297
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

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

    check-cast v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;

    .local v2, "obj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    move-object v3, p1

    .line 1299
    check-cast v3, Lcom/oneplus/gallery/media/PhotoMedia;

    invoke-virtual {v2, v3, p2}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->prepare(Lcom/oneplus/gallery/media/PhotoMedia;Landroid/graphics/Bitmap;)V

    .line 1300
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-ne v3, v5, :cond_6

    .line 1301
    iput-boolean v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    goto :goto_3

    .end local v0    # "hasPreviewImage":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    :cond_7
    move v0, v5

    .line 1271
    goto :goto_1

    .line 1288
    .restart local v0    # "hasPreviewImage":Z
    :cond_8
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {v3, p2}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1304
    :cond_9
    iget-boolean v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-eqz v3, :cond_a

    .line 1306
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "onOriginalPreviewBitmapDecoded() - Waiting for bound objects preparation"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1311
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->completePreparation()Z

    .line 1314
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview()V

    goto/16 :goto_0
.end method

.method private onPreviewImagesProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "task"    # Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;
    .param p2, "preview"    # Landroid/graphics/Bitmap;
    .param p3, "overlay"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 1388
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-eq v3, v4, :cond_1

    .line 1390
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewImagesProcessed() - Current state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    if-eq v3, p1, :cond_2

    .line 1395
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v4, "onPreviewImagesProcessed() - Task has been cancelled"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    :cond_2
    iput-object v5, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    .line 1403
    if-eqz p1, :cond_4

    .line 1405
    iget v3, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 1406
    iget-object p2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1407
    :cond_3
    iget v3, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 1408
    iget-object p3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1412
    :cond_4
    iput-object p2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1413
    iput-object p3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1414
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1415
    .local v0, "clipRect":Landroid/graphics/RectF;
    if-eqz p2, :cond_5

    .line 1416
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2, v3, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    .line 1419
    :goto_1
    if-eqz p3, :cond_6

    .line 1420
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3, v3, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1425
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->showPreview()V

    .line 1428
    if-eqz p2, :cond_7

    sget-object v3, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    :goto_3
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    .line 1431
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 1432
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview(I)V

    goto :goto_0

    .line 1418
    :cond_5
    iput-object v5, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1422
    :cond_6
    iput-object v5, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1428
    :cond_7
    sget-object v3, Lcom/oneplus/gallery/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery/editor/MediaEditor$State;

    goto :goto_3

    .line 1436
    :cond_8
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-ne v3, v4, :cond_0

    .line 1438
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

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

    check-cast v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;

    .line 1440
    .local v2, "obj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->NEW:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-ne v3, v4, :cond_9

    .line 1442
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/PhotoMedia;

    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->prepare(Lcom/oneplus/gallery/media/PhotoMedia;Landroid/graphics/Bitmap;)V

    .line 1443
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-ne v3, v4, :cond_9

    .line 1445
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

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

    .line 1446
    iget-boolean v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v3, :cond_9

    .line 1448
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 1449
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->prepare()Z

    goto :goto_4
.end method

.method private onSmallOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1544
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-eq v0, v1, :cond_1

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    if-nez p2, :cond_2

    .line 1550
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "onSmallOriginalPreviewBitmapDecoded() - Cannot decode preview bitmap"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    goto :goto_0

    .line 1556
    :cond_2
    iput-object p2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1559
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 1560
    const/4 v1, 0x0

    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1563
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    if-eqz v0, :cond_0

    .line 1565
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1566
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1568
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {v0, p2}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private processFinalResult(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 26
    .param p1, "task"    # Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    .prologue
    .line 1585
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Cancelled"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1595
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 1599
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v10, "processFinalResult() - Waiting for original bitmap decoding"

    invoke-static {v3, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    :cond_2
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v10, "processFinalResult() - Original bitmap decoded"

    invoke-static {v3, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;

    .line 1609
    .local v4, "originalBitmap":Landroid/graphics/Bitmap;
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1610
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Cancelled"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1602
    .end local v4    # "originalBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v21

    .line 1604
    .local v21, "ex":Ljava/lang/Throwable;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v10, "processFinalResult() - Interrupted"

    move-object/from16 v0, v21

    invoke-static {v3, v10, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1609
    .end local v21    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1615
    .restart local v4    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v7, 0x0

    .line 1616
    .local v7, "isPreviewSize":Z
    if-nez v4, :cond_4

    .line 1618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Original bitmap is null, use preview bitmap"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1620
    const/4 v7, 0x1

    .line 1622
    :cond_4
    if-eqz v4, :cond_0

    .line 1624
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1625
    .local v5, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1628
    .local v6, "originalHeight":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->filters:[Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    if-eqz v3, :cond_5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->filters:[Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 1630
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->filters:[Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->applyFilter(Landroid/graphics/Bitmap;IIZZ[Lcom/oneplus/gallery/editor/PhotoEditorFilter;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1631
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1632
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1636
    :cond_5
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->clipRect:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->orientation:I

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->flipX:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->flipY:Z

    move-object/from16 v8, p0

    move-object v9, v4

    invoke-direct/range {v8 .. v14}, Lcom/oneplus/gallery/editor/PhotoEditor;->clipAndRotate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 1637
    .local v25, "targetBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Cancelled"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1642
    :cond_6
    if-eqz v25, :cond_0

    .line 1644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Cropped and rotated"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->outputSize:Landroid/util/Size;

    move-object/from16 v22, v0

    .line 1648
    .local v22, "outputSize":Landroid/util/Size;
    if-eqz v22, :cond_8

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v3, v8, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v3, v8, :cond_8

    .line 1652
    :cond_7
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object/from16 v0, v25

    invoke-static {v0, v3, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 1653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Scaled to "

    move-object/from16 v0, v22

    invoke-static {v3, v8, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 1663
    :cond_8
    const/4 v4, 0x0

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v3, :cond_9

    .line 1668
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 1669
    .local v23, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1670
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 1671
    .local v24, "result":Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1672
    .local v19, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v3, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1673
    move-object/from16 v25, v24

    .line 1677
    .end local v19    # "canvas":Landroid/graphics/Canvas;
    .end local v23    # "paint":Landroid/graphics/Paint;
    .end local v24    # "result":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->overlays:[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    if-eqz v3, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->overlays:[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    array-length v3, v3

    if-lez v3, :cond_a

    .line 1682
    :try_start_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->clipRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v12

    .line 1683
    .local v12, "clipRectPixels":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1684
    .local v9, "overlayBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->overlays:[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    move-object/from16 v8, p0

    move v10, v5

    move v11, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/oneplus/gallery/editor/PhotoEditor;->applyOverlays(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;)V

    .line 1687
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->orientation:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->flipX:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->flipY:Z

    move/from16 v18, v0

    move-object/from16 v13, p0

    move-object v14, v9

    invoke-direct/range {v13 .. v18}, Lcom/oneplus/gallery/editor/PhotoEditor;->clipAndRotate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1690
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1691
    .restart local v19    # "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v3, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 1701
    .end local v9    # "overlayBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "clipRectPixels":Landroid/graphics/Rect;
    .end local v19    # "canvas":Landroid/graphics/Canvas;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->saveFinalResult(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v20

    .line 1702
    .local v20, "contentUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Cancelled"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1655
    .end local v20    # "contentUri":Landroid/net/Uri;
    :catch_1
    move-exception v21

    .line 1657
    .restart local v21    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Fail to scale image"

    move-object/from16 v0, v21

    invoke-static {v3, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1693
    .end local v21    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v21

    .line 1695
    .restart local v21    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Fail to apply overlays"

    move-object/from16 v0, v21

    invoke-static {v3, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1707
    .end local v21    # "ex":Ljava/lang/Throwable;
    .restart local v20    # "contentUri":Landroid/net/Uri;
    :cond_b
    if-eqz v20, :cond_c

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Content URI : "

    move-object/from16 v0, v20

    invoke-static {v3, v8, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1710
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->contentUri:Landroid/net/Uri;

    .line 1719
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->success:Z

    goto/16 :goto_0

    .line 1714
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "processFinalResult() - Fail to save result"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processPreviewImages(Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;)V
    .locals 13
    .param p1, "task"    # Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1727
    invoke-virtual {p1}, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - Cancelled"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    :goto_0
    return-void

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1737
    .local v2, "width":I
    iget-object v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1739
    .local v3, "height":I
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - Apply filters"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1744
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 1748
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    .line 1755
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    move v5, v4

    :goto_2
    iget-object v6, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->filters:[Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->applyFilter(Landroid/graphics/Bitmap;IIZZ[Lcom/oneplus/gallery/editor/PhotoEditorFilter;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->previewImage:Landroid/graphics/Bitmap;

    .line 1758
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - Apply overlays"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    iget v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->overlays:[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1763
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->getClipRectPixels(II)Landroid/graphics/Rect;

    move-result-object v9

    .line 1764
    .local v9, "clipRect":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1765
    .local v6, "overlayImage":Landroid/graphics/Bitmap;
    iget-object v11, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->overlays:[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    move-object v5, p0

    move v7, v2

    move v8, v3

    move v10, v4

    invoke-direct/range {v5 .. v11}, Lcom/oneplus/gallery/editor/PhotoEditor;->applyOverlays(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;)V

    .line 1766
    iput-object v6, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->overlayImage:Landroid/graphics/Bitmap;

    .line 1769
    .end local v6    # "overlayImage":Landroid/graphics/Bitmap;
    .end local v9    # "clipRect":Landroid/graphics/Rect;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "processPreviewImages() - End"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1752
    :cond_4
    new-instance v12, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImageForFilters:Landroid/graphics/Bitmap;

    invoke-direct {v12, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1753
    .local v12, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p1, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1755
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private saveFinalResult(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 29
    .param p1, "task"    # Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;
    .param p2, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult()"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->media:Lcom/oneplus/gallery/media/PhotoMedia;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/oneplus/gallery/media/PhotoMedia;->getMimeType()Ljava/lang/String;

    move-result-object v15

    .line 1885
    .local v15, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->outputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 1886
    .local v5, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    const/4 v14, 0x0

    .line 1887
    .local v14, "isJpegSource":Z
    if-nez v5, :cond_3

    .line 1889
    if-nez v15, :cond_1

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - No MIME type to check format"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const/16 v16, 0x0

    .line 2082
    :cond_0
    :goto_0
    return-object v16

    .line 1894
    :cond_1
    const/16 v23, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v23, :pswitch_data_0

    .line 1903
    :goto_2
    const-string v15, "image/jpeg"

    .line 1904
    const-string v10, ".jpg"

    .line 1905
    .local v10, "extension":Ljava/lang/String;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1924
    :goto_3
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->mimeType:Ljava/lang/String;

    .line 1927
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->outputUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 1928
    .local v16, "outputUri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->media:Lcom/oneplus/gallery/media/PhotoMedia;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/oneplus/gallery/media/PhotoMedia;->getFilePath()Ljava/lang/String;

    move-result-object v17

    .line 1929
    .local v17, "srcFilePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1930
    .local v8, "directory":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1931
    .local v4, "baseFileName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1932
    .local v11, "file":Ljava/io/File;
    if-nez v16, :cond_6

    .line 1934
    if-eqz v17, :cond_4

    .line 1936
    invoke-static/range {v17 .. v17}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1937
    invoke-static/range {v17 .. v17}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1948
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v10}, Lcom/oneplus/gallery/editor/PhotoEditor;->getCanidateFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 1949
    if-nez v11, :cond_5

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - Cannot find available file path"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    const/16 v16, 0x0

    goto :goto_0

    .line 1894
    .end local v4    # "baseFileName":Ljava/lang/String;
    .end local v8    # "directory":Ljava/lang/String;
    .end local v10    # "extension":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v16    # "outputUri":Landroid/net/Uri;
    .end local v17    # "srcFilePath":Ljava/lang/String;
    :sswitch_0
    const-string v24, "image/png"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x0

    goto :goto_1

    :sswitch_1
    const-string v24, "image/jpeg"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v23, 0x1

    goto :goto_1

    .line 1897
    :pswitch_0
    const-string v10, ".png"

    .line 1898
    .restart local v10    # "extension":Ljava/lang/String;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1899
    goto :goto_3

    .line 1901
    .end local v10    # "extension":Ljava/lang/String;
    :pswitch_1
    const/4 v14, 0x1

    goto :goto_2

    .line 1910
    :cond_3
    sget-object v23, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_1

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "saveFinalResult() - Unsupported output format : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1913
    :pswitch_2
    const-string v10, ".png"

    .line 1922
    .restart local v10    # "extension":Ljava/lang/String;
    :goto_5
    const-string v23, "image/jpeg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    goto/16 :goto_3

    .line 1916
    .end local v10    # "extension":Ljava/lang/String;
    :pswitch_3
    const-string v10, ".jpg"

    .line 1917
    .restart local v10    # "extension":Ljava/lang/String;
    goto :goto_5

    .line 1941
    .restart local v4    # "baseFileName":Ljava/lang/String;
    .restart local v8    # "directory":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "outputUri":Landroid/net/Uri;
    .restart local v17    # "srcFilePath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - No source file path"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v23, "yyyyMMdd_HHmmss"

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1943
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v23, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1944
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IMG_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    new-instance v24, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 1955
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v9

    .line 1957
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - Fail to generate file path"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1958
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1960
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "saveFinalResult() - File path : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1967
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1963
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "saveFinalResult() - Output URI : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1970
    :cond_7
    if-eqz v8, :cond_8

    .line 1972
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oneplus/gallery/editor/PhotoEditor;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-gtz v23, :cond_a

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - not enough space"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    sget-object v23, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->ERROR_LOW_STORAGE:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->changeMediaSavingState(Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;)V

    .line 1976
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1981
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    .line 1983
    .local v19, "uriDirectory":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "file://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1984
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1986
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-gtz v23, :cond_a

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - not enough space"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    sget-object v23, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->ERROR_LOW_STORAGE:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->changeMediaSavingState(Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;)V

    .line 1990
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1995
    .end local v19    # "uriDirectory":Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    .line 1996
    .local v13, "isFileNotFound":Z
    if-nez v16, :cond_c

    :try_start_1
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .local v18, "stream":Ljava/io/OutputStream;
    :goto_7
    const/16 v24, 0x0

    .line 1998
    const/16 v23, 0x5f

    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1999
    if-eqz v18, :cond_b

    if-eqz v24, :cond_d

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2011
    .end local v18    # "stream":Ljava/io/OutputStream;
    :cond_b
    :goto_8
    if-eqz v13, :cond_17

    .line 2014
    sget-object v23, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 2015
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v10}, Lcom/oneplus/gallery/editor/PhotoEditor;->getCanidateFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 2016
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oneplus/gallery/editor/PhotoEditor;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-gtz v23, :cond_10

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "saveFinalResult() - not enough space:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    sget-object v23, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->ERROR_LOW_STORAGE:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->changeMediaSavingState(Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;)V

    .line 2020
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1996
    :cond_c
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v18

    goto :goto_7

    .line 1999
    .restart local v18    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v22

    .local v22, "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 2000
    .end local v18    # "stream":Ljava/io/OutputStream;
    .end local v22    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v12

    .line 2002
    .local v12, "fileNotFoundException":Ljava/io/FileNotFoundException;
    const/4 v13, 0x1

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - FileNotFoundException:"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1999
    .end local v12    # "fileNotFoundException":Ljava/io/FileNotFoundException;
    .restart local v18    # "stream":Ljava/io/OutputStream;
    :cond_d
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    .line 2005
    .end local v18    # "stream":Ljava/io/OutputStream;
    :catch_3
    move-exception v9

    .line 2007
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - Fail to encode bitmap"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2008
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1996
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v18    # "stream":Ljava/io/OutputStream;
    :catch_4
    move-exception v24

    :try_start_6
    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1999
    :catchall_0
    move-exception v23

    if-eqz v18, :cond_e

    if-eqz v24, :cond_f

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_e
    :goto_9
    :try_start_8
    throw v23

    :catch_5
    move-exception v22

    .restart local v22    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v22    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_9

    .line 2022
    .end local v18    # "stream":Ljava/io/OutputStream;
    :cond_10
    :try_start_9
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .restart local v18    # "stream":Ljava/io/OutputStream;
    const/16 v24, 0x0

    .line 2024
    const/16 v23, 0x5f

    :try_start_a
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2025
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->autoSelectOutputPath:Z

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "saveFinalResult() - cannot save to OTG folder, save to picture folder, file: :"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2027
    if-eqz v18, :cond_11

    if-eqz v24, :cond_14

    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 2038
    .end local v18    # "stream":Ljava/io/OutputStream;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - Bitmap encoded"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    if-eqz v17, :cond_12

    if-eqz v14, :cond_12

    if-eqz v11, :cond_12

    .line 2043
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/oneplus/gallery/editor/PhotoEditor;->COPIED_EXIF_ATTRS:[Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/oneplus/media/ImageUtils;->copyExif(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - EXIF copied"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :cond_12
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - Task cancelled, delete file"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v23

    if-nez v23, :cond_13

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "saveFinalResult() - Fail to delete "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2027
    .restart local v18    # "stream":Ljava/io/OutputStream;
    :catch_6
    move-exception v22

    .restart local v22    # "x2":Ljava/lang/Throwable;
    :try_start_c
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_a

    .line 2028
    .end local v18    # "stream":Ljava/io/OutputStream;
    .end local v22    # "x2":Ljava/lang/Throwable;
    :catch_7
    move-exception v9

    .line 2030
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - Fail to encode bitmap"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2031
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2027
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v18    # "stream":Ljava/io/OutputStream;
    :cond_14
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_a

    .line 2022
    :catch_8
    move-exception v23

    :try_start_e
    throw v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2027
    :catchall_1
    move-exception v24

    move-object/from16 v28, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v28

    :goto_c
    if-eqz v18, :cond_15

    if-eqz v24, :cond_16

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :cond_15
    :goto_d
    :try_start_10
    throw v23

    :catch_9
    move-exception v22

    .restart local v22    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    .end local v22    # "x2":Ljava/lang/Throwable;
    :cond_16
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_d

    .line 2036
    .end local v18    # "stream":Ljava/io/OutputStream;
    :cond_17
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->autoSelectOutputPath:Z

    goto/16 :goto_a

    .line 2046
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - Fail to copy EXIF"

    invoke-static/range {v23 .. v24}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2060
    :cond_19
    if-nez v16, :cond_0

    .line 2064
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2065
    .local v6, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->media:Lcom/oneplus/gallery/media/PhotoMedia;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/oneplus/gallery/media/PhotoMedia;->getTakenTime()J

    move-result-wide v20

    .line 2066
    .local v20, "takenTime":J
    const-string v23, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2067
    const-string v23, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2068
    const-string v23, "orientation"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2069
    const-string v23, "mime_type"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    const-wide/16 v24, 0x0

    cmp-long v23, v20, v24

    if-lez v23, :cond_1a

    .line 2071
    const-string v23, "datetaken"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2074
    :cond_1a
    :try_start_11
    const-string v23, "_size"

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a

    .line 2082
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    move-object/from16 v23, v0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Lcom/oneplus/base/SimpleRef;

    invoke-direct/range {v25 .. v25}, Lcom/oneplus/base/SimpleRef;-><init>()V

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v6, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->insertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;Lcom/oneplus/base/Ref;I)Landroid/net/Uri;

    move-result-object v16

    goto/16 :goto_0

    .line 2076
    :catch_a
    move-exception v9

    .line 2078
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "saveFinalResult() - Fail to get file size for "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 2027
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v20    # "takenTime":J
    .restart local v18    # "stream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v23

    goto/16 :goto_c

    .line 1894
    nop

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

    .line 1910
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

    .line 2152
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->verifyAccess()V

    .line 2153
    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 2185
    :goto_0
    return v1

    .line 2155
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->canChangeParameters()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 2156
    goto :goto_0

    .line 2159
    :cond_1
    if-eqz p1, :cond_3

    .line 2161
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2162
    .end local p1    # "clipRect":Landroid/graphics/RectF;
    .local v0, "clipRect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2163
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2164
    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2165
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2166
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    .end local v0    # "clipRect":Landroid/graphics/RectF;
    .restart local p1    # "clipRect":Landroid/graphics/RectF;
    move v1, v2

    .line 2167
    goto :goto_0

    .end local p1    # "clipRect":Landroid/graphics/RectF;
    .restart local v0    # "clipRect":Landroid/graphics/RectF;
    :cond_2
    move-object p1, v0

    .line 2171
    .end local v0    # "clipRect":Landroid/graphics/RectF;
    .restart local p1    # "clipRect":Landroid/graphics/RectF;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 2172
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v3, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 2173
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 2174
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v3, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    .line 2175
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 2176
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v3, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->clip(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 2179
    :cond_6
    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2181
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->showPreview()V

    .line 2182
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    .line 2183
    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    move v1, v2

    .line 2185
    goto :goto_0
.end method

.method private setClippedPreviewProp(Z)Z
    .locals 2
    .param p1, "clipPreview"    # Z

    .prologue
    .line 2134
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->verifyAccess()V

    .line 2137
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2138
    const/4 v0, 0x0

    .line 2144
    :goto_0
    return v0

    .line 2141
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->showPreview()V

    .line 2144
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
    .line 2194
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 2195
    const/high16 p2, 0x3f800000    # 1.0f

    .line 2200
    :cond_0
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2201
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateColorFilters()V

    .line 2204
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2196
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 2197
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

    .line 2212
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->verifyAccess()V

    .line 2213
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 2227
    :goto_0
    return v0

    .line 2215
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->canChangeParameters()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 2216
    goto :goto_0

    .line 2219
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {v0, p1, v3, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->flipX(ZZLjava/lang/Runnable;)V

    .line 2222
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-super {p0, v0, v4}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2224
    if-eqz p1, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    move v0, v3

    .line 2225
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2224
    goto :goto_1

    :cond_3
    move v0, v2

    .line 2227
    goto :goto_0
.end method

.method private setFlipYProp(Z)Z
    .locals 5
    .param p1, "flip"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2235
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->verifyAccess()V

    .line 2236
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 2250
    :goto_0
    return v0

    .line 2238
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->canChangeParameters()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 2239
    goto :goto_0

    .line 2242
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {v0, p1, v3, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->flipY(ZZLjava/lang/Runnable;)V

    .line 2245
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-super {p0, v0, v4}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2247
    if-eqz p1, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    move v0, v3

    .line 2248
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2247
    goto :goto_1

    :cond_3
    move v0, v2

    .line 2250
    goto :goto_0
.end method

.method private setOrientationProp(I)Z
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2258
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->verifyAccess()V

    .line 2259
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2280
    :goto_0
    return v0

    .line 2261
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->canChangeParameters()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2262
    goto :goto_0

    .line 2265
    :cond_1
    rem-int/lit16 p1, p1, 0x168

    .line 2266
    if-gez p1, :cond_2

    .line 2267
    add-int/lit16 p1, p1, 0x168

    .line 2268
    :cond_2
    rem-int/lit8 v0, p1, 0x5a

    if-eqz v0, :cond_3

    .line 2269
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

    .line 2272
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {v0, p1, v2}, Lcom/oneplus/gallery/editor/PreviewDrawable;->rotateTo(IZ)V

    .line 2275
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-super {p0, v0, v3}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2277
    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    move v0, v2

    .line 2278
    goto :goto_0

    .line 2277
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2280
    goto :goto_0
.end method

.method private setUseLessMemoryProp(Z)Z
    .locals 3
    .param p1, "useLessMemory"    # Z

    .prologue
    .line 2288
    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    .line 2289
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 2290
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateLargeMemoryAllocation()V

    .line 2293
    :cond_0
    return v0
.end method

.method private showPreview()V
    .locals 2

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    if-eqz v0, :cond_0

    .line 2302
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2305
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setOverlay(Landroid/graphics/Bitmap;)V

    .line 2312
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->invalidateSelf()V

    .line 2314
    :cond_0
    return-void

    .line 2309
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2310
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setOverlay(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private startDecodingOriginalBitmap()Z
    .locals 9

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 2321
    sget-object v6, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/PhotoMedia;

    .line 2322
    .local v2, "media":Lcom/oneplus/gallery/media/Media;
    if-nez v2, :cond_0

    .line 2324
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v7, "startDecodingOriginalBitmap() - No media to decode"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    :goto_0
    return v5

    .line 2327
    :cond_0
    instance-of v6, v2, Lcom/oneplus/gallery/media/PhotoMedia;

    if-nez v6, :cond_1

    .line 2329
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

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

    .line 2334
    :cond_1
    sget-object v6, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 2335
    .local v3, "outputSize":Landroid/util/Size;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-gtz v6, :cond_3

    .line 2337
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

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

    .line 2342
    check-cast v4, Lcom/oneplus/gallery/media/PhotoMedia;

    .line 2343
    .local v4, "photoMedia":Lcom/oneplus/gallery/media/PhotoMedia;
    if-nez v3, :cond_4

    move v1, v0

    .line 2344
    .local v1, "maxOutputWidth":I
    :goto_1
    if-nez v3, :cond_5

    .line 2345
    .local v0, "maxOutputHeight":I
    :goto_2
    iget-object v5, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v6, "startDecodingOriginalBitmap()"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    new-instance v5, Lcom/oneplus/gallery/editor/PhotoEditor$6;

    invoke-direct {v5, p0, v4, v1, v0}, Lcom/oneplus/gallery/editor/PhotoEditor$6;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/PhotoMedia;II)V

    invoke-virtual {v5}, Lcom/oneplus/gallery/editor/PhotoEditor$6;->start()V

    .line 2398
    const/4 v5, 0x1

    goto :goto_0

    .line 2343
    .end local v0    # "maxOutputHeight":I
    .end local v1    # "maxOutputWidth":I
    :cond_4
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    goto :goto_1

    .line 2344
    .restart local v1    # "maxOutputWidth":I
    :cond_5
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_2
.end method

.method private unbind(Lcom/oneplus/gallery/editor/PhotoEditorObject;Z)V
    .locals 4
    .param p1, "obj"    # Lcom/oneplus/gallery/editor/PhotoEditorObject;
    .param p2, "checkPreparationState"    # Z

    .prologue
    .line 2405
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2408
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjectIsModifiedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2409
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjectStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2412
    if-eqz p2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-eqz v2, :cond_2

    .line 2414
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 2415
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/PhotoEditorObject;

    .line 2417
    .local v0, "checkingObj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-ne v2, v3, :cond_0

    .line 2419
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    .line 2423
    .end local v0    # "checkingObj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparingBoundObjects:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparing:Z

    if-nez v2, :cond_2

    .line 2425
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "unbind() - All bound objects prepared"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->completePreparation()Z

    .line 2430
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

    .line 2437
    sget-object v6, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_MATRIX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/ColorMatrix;

    .line 2445
    .local v5, "userColorMatrix":Landroid/graphics/ColorMatrix;
    sget-object v6, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, -0x3d380000    # -100.0f

    mul-float v3, v6, v7

    .line 2446
    .local v3, "shift":F
    const/high16 v6, 0x40000000    # 2.0f

    neg-float v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v6, v11

    div-float v4, v6, v11

    .line 2447
    .local v4, "slope":F
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2448
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

    .line 2461
    sget-object v6, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    mul-float v3, v6, v7

    .line 2462
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2463
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

    .line 2476
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2477
    .local v2, "saturationMatrix":Landroid/graphics/ColorMatrix;
    sget-object v6, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v9

    invoke-virtual {v2, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 2480
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-nez v6, :cond_0

    .line 2481
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    .line 2482
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 2483
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v2, v7}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 2484
    if-eqz v5, :cond_1

    .line 2485
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 2488
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-static {v6}, Lcom/oneplus/filter/FilterUtils;->isIdentityColorMatrix(Landroid/graphics/ColorMatrix;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2489
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->resetColorFilter()V

    .line 2492
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v6, :cond_3

    .line 2493
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v8, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v7, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2496
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->showPreview()V

    .line 2499
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v6, :cond_4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_1
    invoke-direct {p0, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    .line 2500
    return-void

    .line 2495
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 2499
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateLargeMemoryAllocation()V
    .locals 2

    .prologue
    .line 2506
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2508
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "updateLargeMemoryAllocation() - Use less memory"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;

    .line 2516
    :goto_0
    return-void

    .line 2513
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "updateLargeMemoryAllocation() - Use normal memory"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->startDecodingOriginalBitmap()Z

    goto :goto_0
.end method

.method private updateModificationState(Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "isModified"    # Ljava/lang/Boolean;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    const/4 v6, 0x1

    .line 2522
    if-nez p1, :cond_9

    .line 2525
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 2526
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

    .line 2527
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2530
    :cond_1
    if-nez p1, :cond_2

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2531
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2534
    :cond_4
    if-nez p1, :cond_5

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2535
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2538
    :cond_5
    if-nez p1, :cond_7

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2540
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/editor/PhotoEditorObject;

    .line 2542
    .local v2, "obj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditorObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2544
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2551
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/oneplus/gallery/editor/PhotoEditorObject;
    :cond_7
    if-nez p1, :cond_8

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v3, :cond_8

    .line 2552
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2555
    :cond_8
    if-nez p1, :cond_9

    .line 2556
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2558
    .end local v0    # "clipRect":Landroid/graphics/RectF;
    :cond_9
    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2559
    return-void
.end method


# virtual methods
.method public addFilter(ILcom/oneplus/gallery/editor/PhotoEditorFilter;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oneplus/gallery/editor/PhotoEditorFilter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p2, "filter":Lcom/oneplus/gallery/editor/PhotoEditorFilter;, "Lcom/oneplus/gallery/editor/PhotoEditorFilter<*>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->verifyAccess()V

    .line 379
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "setFilter() - Editor has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 385
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->bind(Lcom/oneplus/gallery/editor/PhotoEditorObject;)V

    goto :goto_0
.end method

.method public addFilter(Lcom/oneplus/gallery/editor/PhotoEditorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/editor/PhotoEditorFilter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "filter":Lcom/oneplus/gallery/editor/PhotoEditorFilter;, "Lcom/oneplus/gallery/editor/PhotoEditorFilter<*>;"
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->addFilter(ILcom/oneplus/gallery/editor/PhotoEditorFilter;)V

    .line 368
    return-void
.end method

.method public addOverlay(ILcom/oneplus/gallery/editor/PhotoEditorOverlay;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "overlay"    # Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->verifyAccess()V

    .line 407
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "addOverlay() - Editor has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 413
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->bind(Lcom/oneplus/gallery/editor/PhotoEditorObject;)V

    goto :goto_0
.end method

.method public addOverlay(Lcom/oneplus/gallery/editor/PhotoEditorOverlay;)V
    .locals 1
    .param p1, "overlay"    # Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/editor/PhotoEditor;->addOverlay(ILcom/oneplus/gallery/editor/PhotoEditorOverlay;)V

    .line 396
    return-void
.end method

.method public final getClipRectPixels(II)Landroid/graphics/Rect;
    .locals 1
    .param p1, "originalWidth"    # I
    .param p2, "originalHeight"    # I

    .prologue
    .line 751
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->getClipRectPixels(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPreviewImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 812
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 819
    invoke-super {p0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->handleMessage(Landroid/os/Message;)V

    .line 822
    :goto_0
    return-void

    .line 815
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->startDecodingOriginalBitmap()Z

    goto :goto_0

    .line 812
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

    .line 836
    if-eqz p1, :cond_0

    .line 837
    new-array v0, v1, [Landroid/graphics/PointF;

    aput-object p1, v0, v2

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1, p3}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapFromOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V

    .line 838
    :cond_0
    return-void
.end method

.method public final mapFromOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V
    .locals 13
    .param p1, "points"    # [Landroid/graphics/PointF;
    .param p2, "result"    # [Landroid/graphics/PointF;
    .param p3, "flags"    # I

    .prologue
    .line 853
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 894
    :cond_0
    return-void

    .line 857
    :cond_1
    sget-object v9, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 858
    .local v0, "clipRect":Landroid/graphics/RectF;
    sget-object v9, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 859
    .local v2, "flipX":Z
    sget-object v9, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 860
    .local v3, "flipY":Z
    sget-object v9, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 863
    .local v6, "orientation":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 864
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

    .line 865
    int-to-float v9, v6

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v5, v9, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 866
    const/4 v9, 0x2

    new-array v8, v9, [F

    .line 867
    .local v8, "srcCoords":[F
    const/4 v9, 0x2

    new-array v1, v9, [F

    .line 868
    .local v1, "destCoords":[F
    array-length v9, p1

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_0

    .line 870
    aget-object v7, p1, v4

    .line 871
    .local v7, "point":Landroid/graphics/PointF;
    if-eqz v7, :cond_3

    .line 874
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/PointF;->x:F

    aput v10, v8, v9

    .line 875
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/PointF;->y:F

    aput v10, v8, v9

    .line 876
    and-int/lit8 v9, p3, 0x1

    if-nez v9, :cond_2

    if-eqz v0, :cond_2

    .line 878
    const/4 v9, 0x0

    aget v10, v8, v9

    iget v11, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    aput v10, v8, v9

    .line 879
    const/4 v9, 0x1

    aget v10, v8, v9

    iget v11, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    aput v10, v8, v9

    .line 880
    const/4 v9, 0x0

    aget v10, v8, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 881
    const/4 v9, 0x1

    aget v10, v8, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 885
    :cond_2
    invoke-virtual {v5, v1, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 888
    aget-object v9, p2, v4

    if-eqz v9, :cond_6

    .line 889
    aget-object v9, p2, v4

    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 868
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 864
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

    .line 891
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

    .line 906
    if-eqz p1, :cond_0

    .line 907
    new-array v0, v1, [Landroid/graphics/Point;

    aput-object p1, v0, v2

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapFromOriginalPixels([Landroid/graphics/Point;II[Landroid/graphics/PointF;)V

    .line 908
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
    .line 921
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    array-length v1, p1

    new-array v0, v1, [Landroid/graphics/PointF;

    .line 926
    .local v0, "mappedPoints":[Landroid/graphics/PointF;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapFromPixels([Landroid/graphics/Point;II[Landroid/graphics/PointF;)V

    .line 929
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapFromOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V

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

    .line 943
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 946
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 949
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

    .line 963
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 982
    :cond_0
    return-void

    .line 965
    :cond_1
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 966
    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 969
    array-length v4, p1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 971
    aget-object v1, p1, v0

    .line 972
    .local v1, "point":Landroid/graphics/Point;
    if-eqz v1, :cond_2

    .line 974
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float v2, v4, v5

    .line 975
    .local v2, "x":F
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, p3

    div-float v3, v4, v5

    .line 976
    .local v3, "y":F
    aget-object v4, p4, v0

    if-eqz v4, :cond_3

    .line 977
    aget-object v4, p4, v0

    invoke-virtual {v4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 969
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 979
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

    .line 996
    if-eqz p1, :cond_0

    .line 997
    new-array v0, v1, [Landroid/graphics/PointF;

    aput-object p1, v0, v2

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1, p3}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapToOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V

    .line 998
    :cond_0
    return-void
.end method

.method public final mapToOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V
    .locals 13
    .param p1, "points"    # [Landroid/graphics/PointF;
    .param p2, "result"    # [Landroid/graphics/PointF;
    .param p3, "flags"    # I

    .prologue
    .line 1013
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 1054
    :cond_0
    return-void

    .line 1017
    :cond_1
    sget-object v9, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1018
    .local v0, "clipRect":Landroid/graphics/RectF;
    sget-object v9, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1019
    .local v2, "flipX":Z
    sget-object v9, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1020
    .local v3, "flipY":Z
    sget-object v9, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1023
    .local v6, "orientation":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1024
    .local v5, "matrix":Landroid/graphics/Matrix;
    neg-int v9, v6

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v5, v9, v10, v11}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1025
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

    .line 1026
    const/4 v9, 0x2

    new-array v8, v9, [F

    .line 1027
    .local v8, "srcCoords":[F
    const/4 v9, 0x2

    new-array v1, v9, [F

    .line 1028
    .local v1, "destCoords":[F
    array-length v9, p1

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_0

    .line 1030
    aget-object v7, p1, v4

    .line 1031
    .local v7, "point":Landroid/graphics/PointF;
    if-eqz v7, :cond_3

    .line 1034
    const/4 v9, 0x0

    iget v10, v7, Landroid/graphics/PointF;->x:F

    aput v10, v8, v9

    .line 1035
    const/4 v9, 0x1

    iget v10, v7, Landroid/graphics/PointF;->y:F

    aput v10, v8, v9

    .line 1036
    invoke-virtual {v5, v1, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1039
    and-int/lit8 v9, p3, 0x1

    if-nez v9, :cond_2

    if-eqz v0, :cond_2

    .line 1041
    const/4 v9, 0x0

    aget v10, v1, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v10, v11

    aput v10, v1, v9

    .line 1042
    const/4 v9, 0x1

    aget v10, v1, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    aput v10, v1, v9

    .line 1043
    const/4 v9, 0x0

    aget v10, v1, v9

    iget v11, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 1044
    const/4 v9, 0x1

    aget v10, v1, v9

    iget v11, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 1048
    :cond_2
    aget-object v9, p2, v4

    if-eqz v9, :cond_6

    .line 1049
    aget-object v9, p2, v4

    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 1028
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1025
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

    .line 1051
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

    .line 1066
    if-eqz p1, :cond_0

    .line 1067
    new-array v0, v1, [Landroid/graphics/PointF;

    aput-object p1, v0, v2

    new-array v1, v1, [Landroid/graphics/Point;

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapToOriginalPixels([Landroid/graphics/PointF;II[Landroid/graphics/Point;)V

    .line 1068
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
    .line 1081
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    array-length v1, p1

    new-array v0, v1, [Landroid/graphics/PointF;

    .line 1086
    .local v0, "mappedPoints":[Landroid/graphics/PointF;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapToOriginal([Landroid/graphics/PointF;[Landroid/graphics/PointF;I)V

    .line 1089
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/oneplus/gallery/editor/PhotoEditor;->mapToPixels([Landroid/graphics/PointF;II[Landroid/graphics/Point;)V

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

    .line 1103
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1106
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1109
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

    .line 1123
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 1142
    :cond_0
    return-void

    .line 1125
    :cond_1
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1126
    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1129
    array-length v4, p1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1131
    aget-object v1, p1, v0

    .line 1132
    .local v1, "point":Landroid/graphics/PointF;
    if-eqz v1, :cond_2

    .line 1134
    iget v4, v1, Landroid/graphics/PointF;->x:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1135
    .local v2, "x":I
    iget v4, v1, Landroid/graphics/PointF;->y:F

    int-to-float v5, p3

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1136
    .local v3, "y":I
    aget-object v4, p4, v0

    if-eqz v4, :cond_3

    .line 1137
    aget-object v4, p4, v0

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1129
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1139
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_3
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, p4, v0

    goto :goto_1
.end method

.method protected onChangeMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z
    .locals 2
    .param p1, "currentMedia"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "newMedia"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v1, 0x0

    .line 1181
    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1182
    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1183
    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOriginalPreviewImage:Landroid/graphics/Bitmap;

    .line 1184
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1187
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/editor/PreviewDrawable;->setOverlay(Landroid/graphics/Bitmap;)V

    .line 1189
    :cond_0
    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1190
    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedPreviewImage:Landroid/graphics/Bitmap;

    .line 1191
    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1192
    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ClippedOverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1195
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->onChangeMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    return v0
.end method

.method protected onPrepare(Lcom/oneplus/gallery/media/Media;)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1323
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-nez v0, :cond_0

    .line 1324
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v3, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v0, :cond_4

    .line 1328
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;

    .line 1337
    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsPreparing:Z

    .line 1340
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    if-nez v0, :cond_2

    .line 1342
    new-instance v0, Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-direct {v0}, Lcom/oneplus/gallery/editor/PreviewDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    .line 1344
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewDrawable:Lcom/oneplus/gallery/editor/PreviewDrawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updatePreview(Landroid/graphics/drawable/Drawable;)V

    .line 1347
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 1349
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    new-instance v1, Lcom/oneplus/gallery/editor/PhotoEditor$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/PhotoEditor$4;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, p1, v4, v1, v3}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    .line 1362
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1364
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 1366
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    new-instance v1, Lcom/oneplus/gallery/editor/PhotoEditor$5;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/PhotoEditor$5;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, p1, v4, v1, v3}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    :cond_3
    :goto_1
    move v0, v2

    .line 1380
    :goto_2
    return v0

    .line 1331
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "onPrepare() - No ThumbnailImageManager interface"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1332
    goto :goto_2

    .line 1359
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->onOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1376
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_SmallOriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->onSmallOriginalPreviewBitmapDecoded(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected onProcessMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/16 v3, 0x2711

    const/4 v1, 0x0

    .line 1464
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 1465
    .local v0, "outputSize":Landroid/util/Size;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1467
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

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

    .line 1494
    .end local p1    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_0
    return v1

    .line 1472
    .restart local p1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_1
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1474
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1475
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->startDecodingOriginalBitmap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1477
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v3, "onProcessMedia() - Fail to start decoding original bitmap"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1483
    :cond_2
    new-instance v1, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    check-cast p1, Lcom/oneplus/gallery/media/PhotoMedia;

    .end local p1    # "media":Lcom/oneplus/gallery/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/PhotoMedia;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    .line 1484
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iput-object v1, v2, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->clipRect:Landroid/graphics/RectF;

    .line 1485
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->flipX:Z

    .line 1486
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->flipY:Z

    .line 1487
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->orientation:I

    .line 1488
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    iput-object v1, v2, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->outputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 1489
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    iput-object v1, v2, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->outputSize:Landroid/util/Size;

    .line 1490
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v2, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->outputUri:Landroid/net/Uri;

    .line 1491
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_FinalProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1494
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1489
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

    .line 1503
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ThumbManagerActivationHandle:Lcom/oneplus/base/Handle;

    .line 1506
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1508
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v1, v2, [Lcom/oneplus/gallery/editor/PhotoEditorObject;

    .line 1509
    .local v1, "objects":[Lcom/oneplus/gallery/editor/PhotoEditorObject;
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_BoundObjects:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1510
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1511
    aget-object v2, v1, v0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->unbind(Lcom/oneplus/gallery/editor/PhotoEditorObject;Z)V

    .line 1510
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1512
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1516
    .end local v0    # "i":I
    .end local v1    # "objects":[Lcom/oneplus/gallery/editor/PhotoEditorObject;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1518
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z

    .line 1519
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;

    .line 1520
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1521
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    invoke-super {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->onRelease()V

    .line 1525
    return-void

    .line 1521
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

    .line 1532
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1533
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1534
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1535
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1536
    const/4 v0, 0x1

    return v0
.end method

.method protected onVerifyMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1577
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/oneplus/gallery/media/PhotoMedia;

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
    .line 1778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->refreshPreview(I)V

    .line 1779
    return-void
.end method

.method public refreshPreview(I)V
    .locals 13
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1794
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->verifyAccess()V

    .line 1795
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    :goto_0
    return-void

    .line 1797
    :cond_0
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor$7;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/MediaEditor$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1813
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPreview() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1800
    :pswitch_0
    iput-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    .line 1816
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1818
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "refreshPreview() - No original preview image"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1803
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1805
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1806
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    .line 1810
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "refreshPreview() - Pendding refresh preview"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1809
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PeddingRefreshPreview:Ljava/lang/Integer;

    goto :goto_1

    .line 1823
    :cond_3
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->PROCESSING_PREVIEW:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    .line 1826
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_7

    .line 1828
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v12, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 1829
    .local v12, "previewImage":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1830
    invoke-direct {p0, v7, v12, v7}, Lcom/oneplus/gallery/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1828
    .end local v12    # "previewImage":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v12, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1833
    .restart local v12    # "previewImage":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->getClipRectPixels(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 1834
    .local v4, "clipRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OverlayPreviewImage:Landroid/graphics/Bitmap;

    .line 1835
    .local v1, "overlayImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 1837
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1838
    .local v11, "canvas":Landroid/graphics/Canvas;
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1842
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    :goto_3
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    iget-object v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->applyOverlays(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;)V

    .line 1843
    invoke-direct {p0, v7, v12, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1841
    :cond_6
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    .line 1849
    .end local v1    # "overlayImage":Landroid/graphics/Bitmap;
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .end local v12    # "previewImage":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1851
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7, v0, v7}, Lcom/oneplus/gallery/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1856
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    if-eqz v0, :cond_9

    .line 1858
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->cancel(Z)Z

    .line 1859
    new-instance v5, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    iget-object v9, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    move-object v6, p0

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    goto/16 :goto_0

    .line 1863
    :cond_9
    new-instance v5, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    iget-object v7, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalPreviewImage:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Overlays:Ljava/util/List;

    iget-object v9, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_Filters:Ljava/util/List;

    move-object v6, p0

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    .line 1864
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/editor/PhotoEditor$PreviewProcessingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1797
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
    .line 1873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor;->m_ColorMatrix:Landroid/graphics/ColorMatrix;

    .line 1874
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

    .line 2090
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_1

    .line 2091
    check-cast p2, Landroid/graphics/RectF;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/editor/PhotoEditor;->setClipRectProp(Landroid/graphics/RectF;)Z

    move-result v0

    .line 2126
    :cond_0
    :goto_0
    return v0

    .line 2092
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_CONTRAST:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_EXPOSURE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_FILTER_SATURATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_3

    .line 2095
    :cond_2
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->setColorFilterProp(Lcom/oneplus/base/PropertyKey;F)Z

    move-result v0

    goto :goto_0

    .line 2096
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_COLOR_MATRIX:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_5

    .line 2098
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2100
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateColorFilters()V

    .line 2101
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->updateModificationState(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2104
    goto :goto_0

    .line 2106
    :cond_5
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_6

    .line 2107
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->setFlipXProp(Z)Z

    move-result v0

    goto :goto_0

    .line 2108
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_6
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_7

    .line 2109
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->setFlipYProp(Z)Z

    move-result v0

    goto :goto_0

    .line 2110
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_7
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_8

    .line 2111
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->setClippedPreviewProp(Z)Z

    move-result v0

    goto :goto_0

    .line 2112
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_8
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_9

    .line 2113
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->setOrientationProp(I)Z

    move-result v0

    goto :goto_0

    .line 2114
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_9
    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v2, :cond_a

    sget-object v2, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_c

    .line 2116
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2118
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2119
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    goto :goto_0

    :cond_b
    move v0, v1

    .line 2122
    goto/16 :goto_0

    .line 2124
    :cond_c
    sget-object v0, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_USE_LESS_MEMORY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 2125
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/PhotoEditor;->setUseLessMemoryProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2126
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method
