.class public interface abstract Lcom/oneplus/gallery/media/MediaProvider;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaIterable;
.implements Lcom/oneplus/base/ThreadDependentObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/MediaProvider$ContentProviderQueryCallback;
    }
.end annotation


# static fields
.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_ALWAYS_REFRESH:I

.field public static final FLAG_IGNORE_THUMBNAIL_UPDATE:I

.field public static final FLAG_INCLUDE_RAW_PHOTO:I

.field public static final FLAG_INCLUDE_RECYCLED_MEDIA:I

.field public static final FLAG_USE_EXISTENCE_ONLY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery/media/MediaProvider;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 27
    sget-object v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAG_INCLUDE_RECYCLED_MEDIA:I

    .line 31
    sget-object v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAG_INCLUDE_RAW_PHOTO:I

    .line 35
    sget-object v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAG_ALWAYS_REFRESH:I

    .line 39
    sget-object v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAG_USE_EXISTENCE_ONLY:I

    .line 43
    sget-object v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaProvider;->FLAG_IGNORE_THUMBNAIL_UPDATE:I

    return-void
.end method


# virtual methods
.method public abstract addGroupMediaChangedCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract addMediaChangedCallback(Lcom/oneplus/gallery/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract deleteMedia(Lcom/oneplus/gallery/media/Media;I)Z
.end method

.method public abstract initialize(I)Z
.end method

.method public abstract isMediaRecycled(Lcom/oneplus/gallery/media/Media;)Z
.end method

.method public abstract isOwnedMedia(Lcom/oneplus/gallery/media/Media;)Z
.end method

.method public abstract notifyMediaDeleted(Lcom/oneplus/gallery/media/Media;I)V
.end method

.method public abstract notifyMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V
.end method

.method public abstract obtainGroupMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/gallery/media/GroupMedia;
.end method

.method public abstract obtainMedia(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;I)Lcom/oneplus/gallery/media/Media;
.end method

.method public abstract obtainMedia(Lcom/oneplus/gallery/media/MediaId;I)Lcom/oneplus/gallery/media/Media;
.end method

.method public abstract recycleMedia(Lcom/oneplus/gallery/media/Media;I)Z
.end method

.method public abstract refreshMedia()V
.end method

.method public abstract release()V
.end method

.method public abstract restoreMedia(Lcom/oneplus/gallery/media/Media;I)Z
.end method
