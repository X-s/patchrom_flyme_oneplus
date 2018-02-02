.class public interface abstract Lcom/oneplus/gallery/media/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;
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

.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_ADD_ALL_MEDIA_SET:I

.field public static final FLAG_INCLUDE_RAW_PHOTO:I

.field public static final FLAG_SINGLE_MEDIA_CHANGE:I

.field public static final INITIALIZER:Ljava/lang/Object;

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
    .line 25
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery/media/MediaManager;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaManager;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 31
    sget-object v0, Lcom/oneplus/gallery/media/MediaManager;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaManager;->FLAG_INCLUDE_RAW_PHOTO:I

    .line 35
    sget-object v0, Lcom/oneplus/gallery/media/MediaManager;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaManager;->FLAG_ADD_ALL_MEDIA_SET:I

    .line 39
    sget-object v0, Lcom/oneplus/gallery/media/MediaManager;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaManager;->FLAG_SINGLE_MEDIA_CHANGE:I

    .line 45
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsActive"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/media/MediaManager;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaManager;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    .line 50
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "AlbumCreated"

    const-class v2, Lcom/oneplus/gallery/media/MediaSetEventArgs;

    const-class v3, Lcom/oneplus/gallery/media/MediaManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    .line 56
    new-instance v0, Lcom/oneplus/gallery/media/MediaManager$1;

    invoke-direct {v0}, Lcom/oneplus/gallery/media/MediaManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/media/MediaManager;->INITIALIZER:Ljava/lang/Object;

    .line 60
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

.method public abstract isMediaRecycled(Lcom/oneplus/gallery/media/MediaId;)Z
.end method

.method public abstract notifyMediaSetDeleted(Lcom/oneplus/gallery/media/MediaSet;)V
.end method

.method public abstract postToContentThread(Ljava/lang/Runnable;J)Z
.end method

.method public abstract postToContentThreadAndWait(Ljava/lang/Runnable;J)Z
.end method

.method public abstract recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end method
