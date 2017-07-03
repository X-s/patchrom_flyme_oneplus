.class public interface abstract Lcom/oneplus/gallery/media/OPMediaManager;
.super Ljava/lang/Object;
.source "OPMediaManager.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;,
        Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;,
        Lcom/oneplus/gallery/media/OPMediaManager$MediaCreationCallback;,
        Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;
    }
.end annotation


# static fields
.field public static final FLAG_ALWAYS_REFRESH:I = 0x100

.field public static final FLAG_IN_GROUP:I = 0x400

.field public static final FLAG_USE_CACHE_ONLY:I = 0x200

.field public static final ONEPLUS_FLAG_BURST:I = 0x20000

.field public static final ONEPLUS_FLAG_COVER:I = 0x10000

.field public static final ONEPLUS_FLAG_FAVORITE:I = 0x10

.field public static final ONEPLUS_FLAG_PANORAMA:I = 0x2

.field public static final ONEPLUS_FLAG_SELFIE:I = 0x1

.field public static final ONEPLUS_FLAG_SLOW_MOTION:I = 0x4

.field public static final ONEPLUS_FLAG_TIME_LAPSE:I = 0x8


# virtual methods
.method public abstract addMediaToAlbum(JJ)Z
.end method

.method public abstract addOnePlusFlags(JI)Z
.end method

.method public abstract addOnePlusFlags(Landroid/net/Uri;I)Z
.end method

.method public abstract createAlbum(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaType;)Z
.end method

.method public abstract createAlbum(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract deleteAlbum(J)Z
.end method

.method public abstract deleteMedia(JLcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract getAlbumInfos()[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
.end method

.method public abstract getHiddenDirectoryPaths(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMediaIds(Lcom/oneplus/gallery/media/MediaType;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaType;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecycledMedia()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpecialDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isGroupCover(J)Z
.end method

.method public abstract isHiddenPath(Ljava/lang/String;)Z
.end method

.method public abstract iterateMediaId(Lcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;
.end method

.method public abstract iterateMediaIdInAlbum(JLcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;
.end method

.method public abstract notifyGroupMediaDeleted(Ljava/lang/String;I)V
.end method

.method public abstract notifyMediaDeleted(JI)V
.end method

.method public abstract obtainGroupMedia(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/media/GroupMedia;
.end method

.method public abstract obtainGroupMedia(Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;)Lcom/oneplus/gallery/media/GroupMedia;
.end method

.method public abstract obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract obtainMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract obtainMedia(J)Lcom/oneplus/gallery/media/Media;
.end method

.method public abstract obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;
.end method

.method public abstract obtainMedia(Landroid/database/Cursor;II)Lcom/oneplus/gallery/media/Media;
.end method

.method public abstract openGroupMediaList(Lcom/oneplus/gallery/media/MediaComparator;Ljava/lang/String;I)Lcom/oneplus/gallery/media/MediaList;
.end method

.method public abstract queryMediaInMediaStore(Ljava/lang/Long;Lcom/oneplus/gallery/media/MediaType;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract registerDirectoryRenameCallback(Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end method

.method public abstract removeMediaFromAlbum(JJ)Z
.end method

.method public abstract removeOnePlusFlags(JI)Z
.end method

.method public abstract removeOnePlusFlags(Landroid/net/Uri;I)Z
.end method
