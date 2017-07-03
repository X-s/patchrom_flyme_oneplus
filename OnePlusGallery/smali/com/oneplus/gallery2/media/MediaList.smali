.class public interface abstract Lcom/oneplus/gallery2/media/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/gallery2/media/Media;",
        ">;",
        "Lcom/oneplus/base/BaseObject;",
        "Lcom/oneplus/base/HandlerObject;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/oneplus/gallery2/media/MediaList;

.field public static final EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_MOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/oneplus/gallery2/media/SimpleMediaList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oneplus/gallery2/media/Media;

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/SimpleMediaList;-><init>([Lcom/oneplus/gallery2/media/Media;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaList;->EMPTY:Lcom/oneplus/gallery2/media/MediaList;

    .line 24
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaAdded"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    .line 28
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaMoved"

    const-class v2, Lcom/oneplus/gallery2/ListMoveEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    .line 32
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaMoving"

    const-class v2, Lcom/oneplus/gallery2/ListMoveEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVING:Lcom/oneplus/base/EventKey;

    .line 36
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaRemoved"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    .line 40
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaRemoving"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    return-void
.end method
