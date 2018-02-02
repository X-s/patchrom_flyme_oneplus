.class public interface abstract Lcom/oneplus/gallery/media/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;,
        Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;,
        Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;,
        Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;
    }
.end annotation


# static fields
.field public static final EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaSetEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ADD_ALL_MEDIA_SET:I = 0x8

.field public static final FLAG_DELETE_RAW_FILE:I = 0x1

.field public static final FLAG_IGNORE_THUMBNAIL_UPDATE:I = 0x4

.field public static final FLAG_SINGLE_MEDIA_CHANGE:I = 0x2

.field public static final PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;
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
    .locals 5

    .prologue
    .line 43
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsActive"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/media/MediaManager;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaManager;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    .line 48
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "AlbumCreated"

    const-class v2, Lcom/oneplus/gallery/media/MediaSetEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract activate()Lcom/oneplus/base/Handle;
.end method

.method public abstract createMediaSetList(Lcom/oneplus/gallery/media/MediaType;I)Lcom/oneplus/gallery/media/MediaSetList;
.end method

.method public abstract deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract insertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;Lcom/oneplus/base/Ref;I)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;I)",
            "Landroid/net/Uri;"
        }
    .end annotation
.end method

.method public abstract isContentThread()Z
.end method

.method public abstract isFavorite(J)Z
.end method

.method public abstract isMediaRecycled(J)Z
.end method

.method public abstract notifyMediaSetDeleted(Lcom/oneplus/gallery/media/MediaSet;)V
.end method

.method public abstract postToContentThread(Ljava/lang/Runnable;J)Z
.end method

.method public abstract queryContentProvider(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end method

.method public abstract restoreMedia(Lcom/oneplus/base/Handle;)Z
.end method

.method public abstract setFavorite(JZ)Z
.end method

.method public abstract setFavorite(Landroid/net/Uri;Z)Z
.end method
