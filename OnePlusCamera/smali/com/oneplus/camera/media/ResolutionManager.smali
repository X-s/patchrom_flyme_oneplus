.class public interface abstract Lcom/oneplus/camera/media/ResolutionManager;
.super Ljava/lang/Object;
.source "ResolutionManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final FLAG_SYNC_RESOLUTION:I = 0x1

.field public static final PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_VIDEO_FILE_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoPreviewSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/media/ResolutionManager;

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 30
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoResolution"

    const-class v2, Lcom/oneplus/camera/media/Resolution;

    const-class v3, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    .line 35
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoResolutionList"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    .line 39
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 43
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MaxVideoFileSize"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/media/ResolutionManager;->PROP_MAX_VIDEO_FILE_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 47
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoPreviewSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/oneplus/camera/media/ResolutionManager;

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 51
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoResolution"

    const-class v2, Lcom/oneplus/camera/media/Resolution;

    const-class v3, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    .line 56
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoResolutionList"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract getPhotoResolutionSettingsKey()Ljava/lang/String;
.end method

.method public abstract setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;
.end method
