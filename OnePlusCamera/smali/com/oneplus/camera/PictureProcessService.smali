.class public interface abstract Lcom/oneplus/camera/PictureProcessService;
.super Ljava/lang/Object;
.source "PictureProcessService.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/PictureProcessService$ProcessType;
    }
.end annotation


# static fields
.field public static final EVENT_PICTURE_PROCESSED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_WATERMARK_PROCESSED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_WATERMARK_PROCESSING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CONTENT_URI:Ljava/lang/String; = "contentUri"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final EXTRA_HAL_PICTURE_ID:Ljava/lang/String; = "halPictureId"

.field public static final EXTRA_PICTURE_ID:Ljava/lang/String; = "pictureId"

.field public static final EXTRA_PROCESS_TYPES:Ljava/lang/String; = "processTypes"

.field public static final EXTRA_WATERMARK:Ljava/lang/String; = "watermark"

.field public static final EXTRA_WATERMARK_BOUNDS:Ljava/lang/String; = "watermarkBounds"

.field public static final EXTRA_WATERMARK_TEXT:Ljava/lang/String; = "watermarkText"

.field public static final INTENT_CLEAR_IMAGE_CACHE:Ljava/lang/String; = "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

.field public static final MSG_SCHEDULE_PROCESS_WATERMARK:I = -0x1fbd5

.field public static final MSG_UNPROCESSED_PICTURE_RECEIVED:I = -0x1fbd1

.field public static final MSG_UNPROCESSED_PICTURE_SAVED:I = -0x1fbd2

.field public static final PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 67
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsConnected"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/PictureProcessService;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    .line 71
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsProcessing"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/PictureProcessService;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    .line 77
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "PictureProcessed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/PictureProcessService;->EVENT_PICTURE_PROCESSED:Lcom/oneplus/base/EventKey;

    .line 81
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "WatermarkProcessed"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/PictureProcessService;->EVENT_WATERMARK_PROCESSED:Lcom/oneplus/base/EventKey;

    .line 85
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "WatermarkProcessing"

    const-class v2, Lcom/oneplus/camera/media/MediaEventArgs;

    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/PictureProcessService;->EVENT_WATERMARK_PROCESSING:Lcom/oneplus/base/EventKey;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract isPictureProcessing(Ljava/lang/String;)Z
.end method

.method public abstract isWatermarkProcessing(Ljava/lang/String;)Z
.end method

.method public abstract onUnprocessedPictureReceived(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract scheduleProcessWatermark(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/camera/watermark/Watermark;Landroid/graphics/Rect;Ljava/lang/String;)V
.end method
