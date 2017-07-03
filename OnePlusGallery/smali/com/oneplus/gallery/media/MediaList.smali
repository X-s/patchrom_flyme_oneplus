.class public interface abstract Lcom/oneplus/gallery/media/MediaList;
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
        "Lcom/oneplus/gallery/media/Media;",
        ">;",
        "Lcom/oneplus/base/BaseObject;",
        "Lcom/oneplus/base/HandlerObject;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/oneplus/gallery/media/MediaList;

.field public static final EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/gallery/media/SimpleMediaList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oneplus/gallery/media/Media;

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/media/SimpleMediaList;-><init>([Lcom/oneplus/gallery/media/Media;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaList;->EMPTY:Lcom/oneplus/gallery/media/MediaList;

    .line 23
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaAdded"

    const-class v2, Lcom/oneplus/gallery/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    .line 27
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaRemoved"

    const-class v2, Lcom/oneplus/gallery/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    .line 31
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaRemoving"

    const-class v2, Lcom/oneplus/gallery/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    return-void
.end method
