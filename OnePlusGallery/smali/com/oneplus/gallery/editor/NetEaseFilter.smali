.class public Lcom/oneplus/gallery/editor/NetEaseFilter;
.super Lcom/oneplus/gallery/editor/PhotoEditorFilter;
.source "NetEaseFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/NetEaseFilter$13;,
        Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;,
        Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;,
        Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery/editor/PhotoEditorFilter",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILTERS:[Lcom/oneplus/gallery/editor/FilterType;

.field private static final MSG_ASYNC_CREATE_THUMBNAIL:I = -0x2711

.field private static final MSG_ASYNC_QUIT:I = -0x2724

.field private static final MSG_IMG_ON_FILTER_SDK_PREPARED:I = 0x4e22

.field private static final MSG_IMG_ON_FILTER_SDK_TEXTURE_LOADED:I = 0x4e23

.field private static final MSG_IMG_ON_FINAL_RESULT_FILTER_SDK_PREPARED:I = 0x4e26

.field private static final MSG_IMG_ON_FINAL_RESULT_FILTER_SDK_TEXTURE_LOADED:I = 0x4e27

.field private static final MSG_IMG_PREPARE_FILTER_SDK:I = 0x4e21

.field private static final MSG_IMG_PREPARE_FINAL_RESULT_FILTER_SDK:I = 0x4e25

.field private static final MSG_IMG_QUIT:I = 0x4e34

.field private static final MSG_ON_THUMBNAILS_CREATED:I = 0x2711

.field public static final PROP_FILTER_LEVEL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FILTER_TYPE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/editor/FilterType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE_MAX:I = 0x1000

.field private static final SIZE_PREVIEW:I = 0x780

.field private static final SIZE_THUMBNAIL:I = 0xe6

.field private static final SYNC_APPLY_FILTER_LOCK:Ljava/lang/Object;

.field private static final SYNC_FILTER_STATE_LOCK:Ljava/lang/Object;

.field private static final SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;

.field private static final SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;

.field private static final SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

.field private static final TIME_OUT_APPLYING_FINAL_FILTER:J = 0x2710L

.field private static final TIME_OUT_APPLYING_PREVIEW_FILTER:J = 0x1388L

.field private static final TIME_OUT_APPLYING_THUMBNAIL_FILTER:J = 0x3e8L

.field private static final TIME_OUT_PREPARING_FINAL_RESULT_FILTER_SDK:J = 0x2710L

.field private static final TIME_OUT_PREPARING_PREVIEW_FILTER_SDK:J = 0x1388L


# instance fields
.field private m_AsyncHandler:Landroid/os/Handler;

.field private m_AsyncHandlerThread:Landroid/os/HandlerThread;

.field private m_FilterPreparationTask:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

.field private m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

.field private volatile m_FilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

.field private volatile m_FilteredImage:Landroid/graphics/Bitmap;

.field private m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

.field private volatile m_FinalResultFilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

.field private volatile m_FinalResultFilteredImage:Landroid/graphics/Bitmap;

.field private volatile m_FinalResultImage:Landroid/graphics/Bitmap;

.field private volatile m_FinalResultImageReader:Landroid/media/ImageReader;

.field private m_ImageProcessHandler:Landroid/os/Handler;

.field private m_ImageProcessHandlerThread:Landroid/os/HandlerThread;

.field private volatile m_IsReleasing:Z

.field private m_IsWaitingFinalImageFrame:Z

.field private m_IsWaitingImageFrame:Z

.field private m_PreviewArgbBuffer:Ljava/nio/ByteBuffer;

.field private volatile m_PreviewImageReader:Landroid/media/ImageReader;

.field private volatile m_Thumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/editor/FilterType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 40
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FilterLevel"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery/editor/NetEaseFilter;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 44
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FilterType"

    const-class v2, Lcom/oneplus/gallery/editor/FilterType;

    const-class v3, Lcom/oneplus/gallery/editor/NetEaseFilter;

    sget-object v5, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/oneplus/gallery/editor/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_SALT_1:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_SALT_3:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_SIMPLE:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_SUMMER:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_TWILIGHT:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_TIME_3:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_FALL_1:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_FALL_2:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_CLEAR:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_COLD:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_FOOD:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_FLUORESCENT:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_GRAY:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_INK_1:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oneplus/gallery/editor/FilterType;->NET_EASE_INK_3:Lcom/oneplus/gallery/editor/FilterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->FILTERS:[Lcom/oneplus/gallery/editor/FilterType;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_APPLY_FILTER_LOCK:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FILTER_STATE_LOCK:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 150
    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;-><init>(Ljava/lang/Class;Z)V

    .line 97
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .line 100
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/editor/NetEaseFilter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/oneplus/gallery/editor/NetEaseFilter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewArgbBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/gallery/editor/NetEaseFilter;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewArgbBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery/editor/NetEaseFilter;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->prepareFinalResultFilterSDK(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/editor/NetEaseFilter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/editor/NetEaseFilter;Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;
    .param p1, "x1"    # Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/editor/NetEaseFilter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/editor/NetEaseFilter;)Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterPreparationTask:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/editor/NetEaseFilter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingFinalImageFrame:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/gallery/editor/NetEaseFilter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingFinalImageFrame:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/editor/NetEaseFilter;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/editor/NetEaseFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/NetEaseFilter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private changeFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;)V
    .locals 3
    .param p1, "filterState"    # Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .prologue
    .line 157
    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FILTER_STATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    if-ne v0, p1, :cond_0

    .line 160
    monitor-exit v1

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v2, "changeFilterState() - State: "

    invoke-static {v0, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .line 168
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    if-ne p1, v0, :cond_1

    .line 169
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FILTER_STATE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 170
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private changeFinalResultFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;Z)V
    .locals 3
    .param p1, "filterState"    # Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;
    .param p2, "notifyReady"    # Z

    .prologue
    .line 177
    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    if-ne v0, p1, :cond_0

    .line 180
    monitor-exit v1

    .line 191
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v2, "changeFinalResultFilterState() - State: "

    invoke-static {v0, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    .line 188
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 189
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 190
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createFinalResultImageReader(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "createFinalResultImageReader() - Width: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", height: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/oneplus/gallery/editor/NetEaseFilter$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/NetEaseFilter$1;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;)V

    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 258
    return-void
.end method

.method private createImageReader(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "createImageReader() - Width: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", height: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    .line 269
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/oneplus/gallery/editor/NetEaseFilter$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/NetEaseFilter$2;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;)V

    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 320
    return-void
.end method

.method private createThumbnailsAsync(Landroid/graphics/Bitmap;)V
    .locals 24
    .param p1, "previewImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 328
    sget-object v17, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_APPLY_FILTER_LOCK:Ljava/lang/Object;

    monitor-enter v17

    .line 331
    :try_start_0
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 334
    .local v12, "thumbnails":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/editor/FilterType;Landroid/graphics/Bitmap;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 335
    .local v14, "time":J
    sget-object v4, Lcom/oneplus/gallery/editor/NetEaseFilter;->FILTERS:[Lcom/oneplus/gallery/editor/FilterType;

    .local v4, "arr$":[Lcom/oneplus/gallery/editor/FilterType;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_6

    aget-object v13, v4, v6

    .line 348
    .local v13, "type":Lcom/oneplus/gallery/editor/FilterType;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 349
    .local v10, "singleRenderTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v18, "createThumbnailsAsync() - Rendering: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const/4 v8, 0x0

    .line 351
    .local v8, "retryCount":I
    :goto_1
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 353
    sget-object v18, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

    monitor-enter v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 356
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsReleasing:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v19, "createThumbnailsAsync() - Filter is releasing, skip thumbnail creating"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 415
    .end local v4    # "arr$":[Lcom/oneplus/gallery/editor/FilterType;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "retryCount":I
    .end local v10    # "singleRenderTime":J
    .end local v12    # "thumbnails":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/editor/FilterType;Landroid/graphics/Bitmap;>;"
    .end local v13    # "type":Lcom/oneplus/gallery/editor/FilterType;
    .end local v14    # "time":J
    :goto_2
    return-void

    .line 363
    .restart local v4    # "arr$":[Lcom/oneplus/gallery/editor/FilterType;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "retryCount":I
    .restart local v10    # "singleRenderTime":J
    .restart local v12    # "thumbnails":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/editor/FilterType;Landroid/graphics/Bitmap;>;"
    .restart local v13    # "type":Lcom/oneplus/gallery/editor/FilterType;
    .restart local v14    # "time":J
    :cond_0
    const/16 v16, 0x1

    :try_start_3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/gallery/editor/NetEaseFilter;->mappingToFilterMenu(Lcom/oneplus/gallery/editor/FilterType;)Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    move-result-object v19

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->startFilterRendering(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    :try_start_4
    sget-object v16, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 368
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 370
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    .line 371
    add-int/lit8 v8, v8, 0x1

    .line 372
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createThumbnailsAsync() - Apply thumb filter timeout, retry "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 384
    :goto_3
    :try_start_5
    monitor-exit v18

    goto/16 :goto_1

    :catchall_0
    move-exception v16

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v16

    .line 411
    .end local v4    # "arr$":[Lcom/oneplus/gallery/editor/FilterType;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "retryCount":I
    .end local v10    # "singleRenderTime":J
    .end local v12    # "thumbnails":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/editor/FilterType;Landroid/graphics/Bitmap;>;"
    .end local v13    # "type":Lcom/oneplus/gallery/editor/FilterType;
    .end local v14    # "time":J
    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v16

    .line 375
    .restart local v4    # "arr$":[Lcom/oneplus/gallery/editor/FilterType;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "retryCount":I
    .restart local v10    # "singleRenderTime":J
    .restart local v12    # "thumbnails":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/editor/FilterType;Landroid/graphics/Bitmap;>;"
    .restart local v13    # "type":Lcom/oneplus/gallery/editor/FilterType;
    .restart local v14    # "time":J
    :cond_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v19, "createThumbnailsAsync() - Apply thumb filter timeout, stop"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 380
    :catch_0
    move-exception v5

    .line 382
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v19, "createThumbnailsAsync() - Error when wait for image"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 378
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_2
    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 388
    :cond_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v18, "createThumbnailsAsync() - Get current effect"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    const/16 v18, 0xe6

    const/16 v19, 0xe6

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 393
    .local v9, "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v9, v0, :cond_4

    .line 394
    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 401
    :cond_4
    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v18, "createThumbnailsAsync() - Rendered: "

    const/16 v19, 0x9

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    const-string v21, ", width: "

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const-string v21, ", height: "

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x5

    const-string v21, ", thumb: "

    aput-object v21, v19, v20

    const/16 v20, 0x6

    aput-object v9, v19, v20

    const/16 v20, 0x7

    const-string v21, ", time: "

    aput-object v21, v19, v20

    const/16 v20, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 398
    .end local v9    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v18, "createThumbnailsAsync() - No filtered imabe to create thumb, stop"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    monitor-exit v17

    goto/16 :goto_2

    .line 404
    .end local v8    # "retryCount":I
    .end local v10    # "singleRenderTime":J
    .end local v13    # "type":Lcom/oneplus/gallery/editor/FilterType;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v18, "createThumbnailsAsync() - Time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v18, 0x4e21

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    const/16 v20, 0x1

    sget-object v21, Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;->PREVIEW:Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;

    aput-object v21, v19, v20

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 410
    const/16 v16, 0x2711

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v12}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 411
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 414
    .end local v4    # "arr$":[Lcom/oneplus/gallery/editor/FilterType;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v12    # "thumbnails":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/editor/FilterType;Landroid/graphics/Bitmap;>;"
    .end local v14    # "time":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, -0x2711

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2
.end method

.method private mappingToFilterMenu(Lcom/oneplus/gallery/editor/FilterType;)Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;
    .locals 2
    .param p1, "filterType"    # Lcom/oneplus/gallery/editor/FilterType;

    .prologue
    .line 440
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$13;->$SwitchMap$com$oneplus$gallery$editor$FilterType:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery/editor/FilterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 487
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    :goto_0
    return-object v0

    .line 443
    :pswitch_0
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->NORMAL:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 445
    :pswitch_1
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->YAN1:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 449
    :pswitch_2
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->YAN3:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 451
    :pswitch_3
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->JIAN:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 453
    :pswitch_4
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->XIA:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 455
    :pswitch_5
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->HUI:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 457
    :pswitch_6
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->MU:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 465
    :pswitch_7
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->SHI3:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 467
    :pswitch_8
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->MO1:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 471
    :pswitch_9
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->MO3:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 473
    :pswitch_a
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->QIU1:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 475
    :pswitch_b
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->QIU2:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 477
    :pswitch_c
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->TOU:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 481
    :pswitch_d
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->LENG:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 483
    :pswitch_e
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->YING:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 485
    :pswitch_f
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;->SHI:Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private onAsyncHandlerQuit()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onAsyncHandlerQuit()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 762
    return-void
.end method

.method private onFilterSDKPrepared(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;)V
    .locals 12
    .param p1, "task"    # Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    .prologue
    const/16 v9, 0x780

    .line 769
    sget-object v2, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v8, "onFilterSDKPrepared() - Filter is released, skip"

    invoke-static {v2, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterPreparationTask:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    if-eq v2, p1, :cond_1

    .line 776
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v8, "onFilterSDKPrepared() - There is another preparation, skip"

    invoke-static {v2, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v8, "onFilterSDKPrepared()"

    invoke-static {v2, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    new-instance v8, Lcom/oneplus/gallery/editor/NetEaseFilter$4;

    invoke-direct {v8, p0, p1}, Lcom/oneplus/gallery/editor/NetEaseFilter$4;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;)V

    invoke-virtual {v2, v8}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setOnBitmapLoadCompleteListener(Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;)V

    .line 793
    sget-object v2, Lcom/oneplus/gallery/editor/NetEaseFilter$13;->$SwitchMap$com$oneplus$gallery$editor$NetEaseFilter$SurfaceSize:[I

    iget-object v8, p1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;->surfaceSize:Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;

    invoke-virtual {v8}, Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 796
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v8, "onFilterSDKPrepared() - Create thumb preview"

    invoke-static {v2, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v2, p1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;->bitmap:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 798
    .local v1, "thumb":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    .line 799
    .local v4, "thumbWidth":I
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v5

    .line 800
    .local v5, "thumbHeight":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v8, v4

    div-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v2, v8

    .line 801
    .local v3, "blurRadius":F
    new-instance v0, Lcom/oneplus/media/BitmapBlurFilter;

    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oneplus/media/BitmapBlurFilter;-><init>(Landroid/content/Context;)V

    .line 802
    .local v0, "bitmapBlurFilter":Lcom/oneplus/media/BitmapBlurFilter;
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/media/BitmapBlurFilter;->applyBlurFilter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 803
    .local v7, "thumbPreview":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Lcom/oneplus/media/BitmapBlurFilter;->release()V

    .line 804
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v8, "onFilterSDKPrepared() - Thumb preview, width: "

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ", height: "

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v8, v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 805
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v2, v7}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setCurrentBitmapView(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 808
    .end local v0    # "bitmapBlurFilter":Lcom/oneplus/media/BitmapBlurFilter;
    .end local v1    # "thumb":Landroid/graphics/Bitmap;
    .end local v3    # "blurRadius":F
    .end local v4    # "thumbWidth":I
    .end local v5    # "thumbHeight":I
    .end local v7    # "thumbPreview":Landroid/graphics/Bitmap;
    :pswitch_1
    iget-object v2, p1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v9, v9}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 809
    .local v6, "previewBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v2, v6}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setCurrentBitmapView(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onFilterSDKTextureLoaded(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;)V
    .locals 4
    .param p1, "task"    # Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    .prologue
    .line 823
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onFilterSDKTextureLoaded() - Filter is released, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterPreparationTask:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    if-eq v0, p1, :cond_1

    .line 830
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onFilterSDKTextureLoaded() - There is another preparation, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onFilterSDKTextureLoaded()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING_IMAGE:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;)V

    .line 838
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/editor/NetEaseFilter$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/editor/NetEaseFilter$5;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onFinalResultFilterSDKPrepared()V
    .locals 5

    .prologue
    .line 870
    sget-object v2, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "onFinalResultFilterSDKPrepared() - Filter is released, skip"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "onFinalResultFilterSDKPrepared()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    new-instance v3, Lcom/oneplus/gallery/editor/NetEaseFilter$6;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/NetEaseFilter$6;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;)V

    invoke-virtual {v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setOnBitmapLoadCompleteListener(Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;)V

    .line 891
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImage:Landroid/graphics/Bitmap;

    const/16 v3, 0x1000

    const/16 v4, 0x1000

    invoke-static {v2, v3, v4}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 892
    .local v1, "preferredBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setCurrentBitmapView(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 894
    .end local v1    # "preferredBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 896
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "onFinalResultFilterSDKPrepared() - Fail to setup SDK"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    const/16 v3, 0x4e27

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private onFinalResultFilterSDKTextureLoaded()V
    .locals 4

    .prologue
    .line 906
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onFinalResultFilterSDKTextureLoaded() - Filter is released, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :goto_0
    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onFinalResultFilterSDKTextureLoaded()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFinalResultFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;Z)V

    .line 916
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/editor/NetEaseFilter$7;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/NetEaseFilter$7;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onImageProcessHandlerQuit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 933
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onImageProcessHandlerQuit()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->release()V

    .line 939
    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->release()V

    .line 944
    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 949
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 951
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 954
    :cond_3
    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImage:Landroid/graphics/Bitmap;

    .line 955
    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;

    .line 956
    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    .line 957
    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewArgbBuffer:Ljava/nio/ByteBuffer;

    .line 960
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 961
    return-void
.end method

.method private onPrepared(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 1011
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditorObject$State;->PREPARING:Lcom/oneplus/gallery/editor/PhotoEditorObject$State;

    if-eq v0, v1, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->completePreparation(Z)V

    goto :goto_0
.end method

.method private onThumbnailCreated(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/editor/FilterType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1065
    .local p1, "thumbnails":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/editor/FilterType;Landroid/graphics/Bitmap;>;"
    if-nez p1, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_Thumbnails:Ljava/util/Map;

    .line 1072
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private prepareFilterSDK(Landroid/graphics/Bitmap;Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "surfaceSize"    # Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;

    .prologue
    const/16 v5, 0x780

    const/16 v4, 0xe6

    .line 1080
    sget-object v2, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;)V

    .line 1081
    new-instance v2, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/graphics/Bitmap;Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;)V

    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterPreparationTask:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    .line 1084
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    if-eqz v2, :cond_0

    .line 1085
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->release()V

    .line 1087
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "prepareFilterSDK() - Start: "

    invoke-static {v2, v3, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1090
    const/4 v1, 0x0

    .line 1091
    .local v1, "size":Landroid/util/Size;
    sget-object v2, Lcom/oneplus/gallery/editor/NetEaseFilter$13;->$SwitchMap$com$oneplus$gallery$editor$NetEaseFilter$SurfaceSize:[I

    invoke-virtual {p2}, Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1103
    :goto_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/editor/NetEaseFilter;->createImageReader(II)V

    .line 1106
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "prepareFilterSDK() - Create filter SDK"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1108
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-direct {v2, v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    .line 1109
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    new-instance v3, Lcom/oneplus/gallery/editor/NetEaseFilter$10;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/NetEaseFilter$10;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;)V

    invoke-virtual {v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setOnRenderingPreparationFinishedListener(Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;)V

    .line 1124
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setPreviewSurface(Landroid/content/Context;Landroid/view/Surface;)V

    .line 1125
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_PreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->callOnRefreshView(II)V

    .line 1127
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "prepareFilterSDK() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void

    .line 1094
    .end local v0    # "context":Landroid/content/Context;
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, v4, v4}, Lcom/oneplus/util/SizeUtils;->getRatioCenterCroppedSize(IIII)Landroid/util/Size;

    move-result-object v1

    .line 1095
    goto :goto_0

    .line 1097
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v5, v5, v4}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    .line 1091
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareFinalResultFilterSDK(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "finalResultBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v5, 0x1000

    const/4 v4, 0x1

    .line 1178
    if-nez p1, :cond_0

    .line 1180
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "prepareFinalResultFilterSDK() - Fail to load original image"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    sget-object v2, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    invoke-direct {p0, v2, v4}, Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFinalResultFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;Z)V

    .line 1222
    :goto_0
    return-void

    .line 1186
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImage:Landroid/graphics/Bitmap;

    .line 1187
    sget-object v2, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFinalResultFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;Z)V

    .line 1190
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    if-eqz v2, :cond_1

    .line 1191
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->release()V

    .line 1193
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "prepareFinalResultFilterSDK() - Start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, v5, v5, v4}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v1

    .line 1197
    .local v1, "size":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/editor/NetEaseFilter;->createFinalResultImageReader(II)V

    .line 1200
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "prepareFinalResultFilterSDK() - Create final result filter SDK"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1202
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-direct {v2, v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    .line 1203
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    new-instance v3, Lcom/oneplus/gallery/editor/NetEaseFilter$12;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/NetEaseFilter$12;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;)V

    invoke-virtual {v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setOnRenderingPreparationFinishedListener(Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;)V

    .line 1218
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->setPreviewSurface(Landroid/content/Context;Landroid/view/Surface;)V

    .line 1219
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->callOnRefreshView(II)V

    .line 1221
    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v3, "prepareFinalResultFilterSDK() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareFinalResultFilterSDK(Lcom/oneplus/gallery/media/PhotoMedia;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;

    .prologue
    .line 1134
    if-nez p1, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1138
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFinalResultFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;Z)V

    .line 1141
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->release()V

    .line 1145
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/editor/NetEaseFilter$11;

    const-string v1, "Decode Final Result"

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/gallery/editor/NetEaseFilter$11;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Ljava/lang/String;Lcom/oneplus/gallery/media/PhotoMedia;)V

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/NetEaseFilter$11;->start()V

    goto :goto_0
.end method

.method private setFilterTypeProp(Lcom/oneplus/gallery/editor/FilterType;)Z
    .locals 3
    .param p1, "filterType"    # Lcom/oneplus/gallery/editor/FilterType;

    .prologue
    const/4 v2, 0x1

    .line 1239
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    sget-object v0, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    if-eq p1, v0, :cond_1

    .line 1243
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1249
    :cond_0
    :goto_0
    return v2

    .line 1245
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getThumbnail(Lcom/oneplus/gallery/editor/FilterType;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filterType"    # Lcom/oneplus/gallery/editor/FilterType;

    .prologue
    const/4 v1, 0x0

    .line 426
    if-nez p1, :cond_0

    move-object v0, v1

    .line 432
    :goto_0
    return-object v0

    .line 428
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_Thumbnails:Ljava/util/Map;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 429
    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_Thumbnails:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 496
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 553
    invoke-super {p0, p1}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->handleMessage(Landroid/os/Message;)V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 500
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->createThumbnailsAsync(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 505
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onAsyncHandlerQuit()V

    goto :goto_0

    .line 510
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onThumbnailCreated(Ljava/util/Map;)V

    goto :goto_0

    .line 515
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onFilterSDKPrepared(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;)V

    goto :goto_0

    .line 520
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onFilterSDKTextureLoaded(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;)V

    goto :goto_0

    .line 525
    :sswitch_5
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onFinalResultFilterSDKPrepared()V

    goto :goto_0

    .line 530
    :sswitch_6
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onFinalResultFilterSDKTextureLoaded()V

    goto :goto_0

    .line 535
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 536
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->prepareFilterSDK(Landroid/graphics/Bitmap;Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;)V

    goto :goto_0

    .line 541
    .end local v0    # "objs":[Ljava/lang/Object;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/oneplus/gallery/media/PhotoMedia;

    if-eqz v1, :cond_1

    .line 542
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/gallery/media/PhotoMedia;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->prepareFinalResultFilterSDK(Lcom/oneplus/gallery/media/PhotoMedia;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter;->prepareFinalResultFilterSDK(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 549
    :sswitch_9
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onImageProcessHandlerQuit()V

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        -0x2724 -> :sswitch_1
        -0x2711 -> :sswitch_0
        0x2711 -> :sswitch_2
        0x4e21 -> :sswitch_7
        0x4e22 -> :sswitch_3
        0x4e23 -> :sswitch_4
        0x4e25 -> :sswitch_8
        0x4e26 -> :sswitch_5
        0x4e27 -> :sswitch_6
        0x4e34 -> :sswitch_9
    .end sparse-switch
.end method

.method public onApplyFilter(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I

    .prologue
    .line 563
    sget-object v18, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_APPLY_FILTER_LOCK:Ljava/lang/Object;

    monitor-enter v18

    .line 566
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    if-eqz v15, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 567
    :cond_0
    monitor-exit v18

    move-object/from16 v6, p1

    .line 751
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 569
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Bitmap: "

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v15, v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    and-int/lit8 v15, p4, 0x1

    if-eqz v15, :cond_2

    const/4 v11, 0x1

    .line 573
    .local v11, "isPreview":Z
    :goto_1
    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_TYPE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    sget-object v19, Lcom/oneplus/gallery/editor/FilterType;->NORMAL:Lcom/oneplus/gallery/editor/FilterType;

    move-object/from16 v0, v19

    if-ne v15, v0, :cond_3

    .line 574
    monitor-exit v18

    move-object/from16 v6, p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 572
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "isPreview":Z
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 577
    .restart local v11    # "isPreview":Z
    :cond_3
    if-eqz v11, :cond_5

    .line 579
    sget-object v19, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FILTER_STATE_LOCK:Ljava/lang/Object;

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 581
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    sget-object v20, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, v20

    if-eq v15, v0, :cond_4

    .line 585
    :try_start_2
    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FILTER_STATE_LOCK:Ljava/lang/Object;

    const-wide/16 v20, 0x1388

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    sget-object v20, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    move-object/from16 v0, v20

    if-eq v15, v0, :cond_4

    .line 588
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v20, "onApplyFilter() - Cannot prepare preview filter SDK, skip"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 589
    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v6, p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 592
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 594
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v20, "onApplyFilter() - Error to wait for filter state lock"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_4
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 657
    :goto_2
    const/4 v15, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 660
    if-eqz v11, :cond_d

    .line 662
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 663
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Rendering start: Surface"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v13, 0x0

    .line 665
    .local v13, "retryCount":I
    :goto_3
    const/4 v15, 0x3

    if-ge v13, v15, :cond_b

    .line 667
    sget-object v19, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

    monitor-enter v19
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 669
    const/4 v15, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    move-object/from16 v20, v0

    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_TYPE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery/editor/FilterType;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery/editor/NetEaseFilter;->mappingToFilterMenu(Lcom/oneplus/gallery/editor/FilterType;)Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    move-result-object v21

    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->startFilterRendering(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)V

    .line 671
    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

    const-wide/16 v20, 0x1388

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 672
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    if-eqz v15, :cond_a

    .line 674
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    .line 675
    add-int/lit8 v13, v13, 0x1

    .line 676
    const/4 v15, 0x3

    if-ge v13, v15, :cond_9

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onApplyFilter() - Apply preview filter timeout, retry "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_4
    monitor-exit v19

    goto :goto_3

    :catchall_0
    move-exception v15

    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v15
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 715
    .end local v13    # "retryCount":I
    .end local v16    # "time":J
    :catch_1
    move-exception v8

    .line 717
    .restart local v8    # "e":Ljava/lang/Throwable;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Error when apply filters"

    move-object/from16 v0, v19

    invoke-static {v15, v0, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v6, p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 597
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v15

    :try_start_b
    monitor-exit v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v15

    .line 752
    .end local v11    # "isPreview":Z
    :catchall_2
    move-exception v15

    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v15

    .line 601
    .restart local v11    # "isPreview":Z
    :cond_5
    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    if-nez v15, :cond_6

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Final result preparation isn\'t started yet, start now"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 605
    .local v14, "syncLock":Ljava/lang/Object;
    monitor-enter v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 607
    move-object/from16 v10, p1

    .line 608
    .local v10, "finalBitmap":Landroid/graphics/Bitmap;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandler:Landroid/os/Handler;

    new-instance v19, Lcom/oneplus/gallery/editor/NetEaseFilter$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v14}, Lcom/oneplus/gallery/editor/NetEaseFilter$3;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 623
    :try_start_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Wait for final result preparation start"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v14}, Ljava/lang/Object;->wait()V

    .line 625
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Final result preparation started"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 631
    :goto_5
    :try_start_10
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 633
    .end local v10    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "syncLock":Ljava/lang/Object;
    :cond_6
    :try_start_11
    sget-object v19, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;

    monitor-enter v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 635
    :try_start_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    sget-object v20, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-object/from16 v0, v20

    if-eq v15, v0, :cond_8

    .line 639
    :try_start_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v20, "onApplyFilter() - Wait for final result preparation"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;

    const-wide/16 v20, 0x2710

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 641
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    sget-object v20, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->READY:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    move-object/from16 v0, v20

    if-eq v15, v0, :cond_7

    .line 643
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v20, "onApplyFilter() - Cannot prepare final filter SDK, skip"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 644
    :try_start_14
    monitor-exit v19
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    monitor-exit v18
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-object/from16 v6, p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 627
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "finalBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "syncLock":Ljava/lang/Object;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v9

    .line 629
    .local v9, "ex":Ljava/lang/Throwable;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Fail to wait for final result preparation start"

    move-object/from16 v0, v19

    invoke-static {v15, v0, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 631
    .end local v9    # "ex":Ljava/lang/Throwable;
    :catchall_3
    move-exception v15

    monitor-exit v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    throw v15
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 646
    .end local v10    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "syncLock":Ljava/lang/Object;
    :cond_7
    :try_start_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v20, "onApplyFilter() - Final result prepared"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 653
    :cond_8
    :goto_6
    :try_start_19
    monitor-exit v19

    goto/16 :goto_2

    :catchall_4
    move-exception v15

    monitor-exit v19
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v15
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 648
    :catch_3
    move-exception v8

    .line 650
    .restart local v8    # "e":Ljava/lang/Throwable;
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v20, "onApplyFilter() - Error to wait for final result filter state lock"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto :goto_6

    .line 679
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v13    # "retryCount":I
    .restart local v16    # "time":J
    :cond_9
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v20, "onApplyFilter() - Apply preview filter timeout, stop"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 682
    :cond_a
    monitor-exit v19
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 685
    :cond_b
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Rendering end, bitmap: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const-string v21, ", time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v15, v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 722
    :goto_7
    if-eqz v11, :cond_11

    .line 724
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_c

    .line 726
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 727
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 728
    .local v12, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 729
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v15, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 751
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "paint":Landroid/graphics/Paint;
    :cond_c
    :goto_8
    monitor-exit v18
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    move-object/from16 v6, p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 689
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "retryCount":I
    .end local v16    # "time":J
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 690
    .restart local v16    # "time":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Rendering start: Surface"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v13, 0x0

    .line 692
    .restart local v13    # "retryCount":I
    :goto_9
    const/4 v15, 0x3

    if-ge v13, v15, :cond_10

    .line 694
    sget-object v19, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;

    monitor-enter v19
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 696
    const/4 v15, 0x1

    :try_start_20
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingFinalImageFrame:Z

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    move-object/from16 v20, v0

    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_TYPE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery/editor/FilterType;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery/editor/NetEaseFilter;->mappingToFilterMenu(Lcom/oneplus/gallery/editor/FilterType;)Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;

    move-result-object v21

    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery/editor/NetEaseFilter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->startFilterRendering(Lcom/netease/filterenginelibrary/gpuimage/FilterMenu;F)V

    .line 698
    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;

    const-wide/16 v20, 0x2710

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 699
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingFinalImageFrame:Z

    if-eqz v15, :cond_f

    .line 701
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingFinalImageFrame:Z

    .line 702
    add-int/lit8 v13, v13, 0x1

    .line 703
    const/4 v15, 0x3

    if-ge v13, v15, :cond_e

    .line 704
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onApplyFilter() - Apply final filter timeout, retry "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :goto_a
    monitor-exit v19

    goto :goto_9

    :catchall_5
    move-exception v15

    monitor-exit v19
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    :try_start_21
    throw v15
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 706
    :cond_e
    :try_start_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v20, "onApplyFilter() - Apply final filter timeout, stop"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 709
    :cond_f
    monitor-exit v19
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 712
    :cond_10
    :try_start_23
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v19, "onApplyFilter() - Rendering end, bitmap: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const-string v21, ", time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v15, v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    goto/16 :goto_7

    .line 734
    :cond_11
    :try_start_24
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_c

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;

    move-object/from16 p1, v0

    .line 739
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;

    .line 740
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultImage:Landroid/graphics/Bitmap;

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    if-eqz v15, :cond_12

    .line 743
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-virtual {v15}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->release()V

    .line 744
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterSDK:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    .line 746
    :cond_12
    sget-object v15, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_FinalResultFilterState:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    goto/16 :goto_8
.end method

.method public bridge synthetic onApplyFilter(Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onApplyFilter(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepare(Lcom/oneplus/gallery/media/PhotoMedia;Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 968
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onPrepare() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".AsyncHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    .line 972
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 973
    new-instance v0, Lcom/oneplus/gallery/editor/NetEaseFilter$8;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter$8;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandler:Landroid/os/Handler;

    .line 983
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ImageProcessHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandlerThread:Landroid/os/HandlerThread;

    .line 984
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 985
    new-instance v0, Lcom/oneplus/gallery/editor/NetEaseFilter$9;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/editor/NetEaseFilter$9;-><init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    .line 995
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    const/16 v1, 0x4e21

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    sget-object v3, Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;->THUMBNAIL:Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 996
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    const/16 v1, 0x4e25

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 999
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/editor/NetEaseFilter;->onPrepared(Z)V

    .line 1001
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onPrepare() - End"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    return v4
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->TAG:Ljava/lang/String;

    const-string v1, "onRelease()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1031
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsReleasing:Z

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    .line 1033
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1034
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    sget-object v1, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1037
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z

    .line 1038
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1039
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1042
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_AsyncHandler:Landroid/os/Handler;

    const/16 v2, -0x2724

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_ImageProcessHandler:Landroid/os/Handler;

    const/16 v2, 0x4e34

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_Thumbnails:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_Thumbnails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1051
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/NetEaseFilter;->m_Thumbnails:Ljava/util/Map;

    .line 1055
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;->PREPARING:Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/NetEaseFilter;->changeFilterState(Lcom/oneplus/gallery/editor/NetEaseFilter$FilterState;)V

    .line 1058
    invoke-super {p0}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->onRelease()V

    .line 1059
    return-void

    .line 1034
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1039
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
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
    .line 1229
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/editor/NetEaseFilter;->PROP_FILTER_TYPE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1230
    check-cast p2, Lcom/oneplus/gallery/editor/FilterType;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/editor/NetEaseFilter;->setFilterTypeProp(Lcom/oneplus/gallery/editor/FilterType;)Z

    move-result v0

    .line 1231
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
