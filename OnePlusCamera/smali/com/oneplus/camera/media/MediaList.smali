.class public interface abstract Lcom/oneplus/camera/media/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/camera/media/MediaInfo;",
        ">;",
        "Lcom/oneplus/base/BaseObject;"
    }
.end annotation


# static fields
.field public static final EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_REPLACED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_REPLACING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaAdded"

    const-class v2, Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    const-class v3, Lcom/oneplus/camera/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    .line 20
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaRemoved"

    const-class v2, Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    const-class v3, Lcom/oneplus/camera/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    .line 24
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaRemoving"

    const-class v2, Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    const-class v3, Lcom/oneplus/camera/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    .line 28
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaReplaced"

    const-class v2, Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    const-class v3, Lcom/oneplus/camera/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/media/MediaList;->EVENT_MEDIA_REPLACED:Lcom/oneplus/base/EventKey;

    .line 32
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "MediaReplacing"

    const-class v2, Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    const-class v3, Lcom/oneplus/camera/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/media/MediaList;->EVENT_MEDIA_REPLACING:Lcom/oneplus/base/EventKey;

    .line 11
    return-void
.end method
