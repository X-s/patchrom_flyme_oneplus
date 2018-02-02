.class public interface abstract Lcom/oneplus/gallery2/media/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Lcom/oneplus/base/HandlerObject;
.implements Lcom/oneplus/base/ThreadDependentObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/Media$DeletionCallback;,
        Lcom/oneplus/gallery2/media/Media$DetailsCallback;,
        Lcom/oneplus/gallery2/media/Media$SizeCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_GENERATOR:Lcom/oneplus/gallery2/ExtraKeyGenerator;

.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_ADDRESS_CHANGED:I

.field public static final FLAG_DISPLAY_NAME_CHANGED:I

.field public static final FLAG_FAVORITE_CHANGED:I

.field public static final FLAG_FILE_PATH_CHANGED:I

.field public static final FLAG_FILE_SIZE_CHANGED:I

.field public static final FLAG_INCLUDE_RAW_PHOTO:I

.field public static final FLAG_IS_SUB_MEDIA_CHANGED:I

.field public static final FLAG_LAST_MODIFIED_TIME_CHANGED:I

.field public static final FLAG_LOCATION_CHANGED:I

.field public static final FLAG_MOVE_TO_RECYCE_BIN:I

.field public static final FLAG_RESTORE_FROM_RECYCLE_BIN:I

.field public static final FLAG_SHARE:I

.field public static final FLAG_SIZE_CHANGED:I

.field public static final FLAG_SUB_MEDIA:I

.field public static final FLAG_TAKEN_TIME_CHANGED:I

.field public static final FLAG_TITLE_CHANGED:I

.field public static final FLAG_VISIBILITY_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 34
    new-instance v0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;

    invoke-direct {v0}, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/Media;->EXTRA_KEY_GENERATOR:Lcom/oneplus/gallery2/ExtraKeyGenerator;

    .line 40
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    .line 44
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    .line 48
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    .line 52
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    .line 56
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_ADDRESS_CHANGED:I

    .line 60
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_DISPLAY_NAME_CHANGED:I

    .line 64
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_FAVORITE_CHANGED:I

    .line 68
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_PATH_CHANGED:I

    .line 72
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_SIZE_CHANGED:I

    .line 76
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_IS_SUB_MEDIA_CHANGED:I

    .line 80
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    .line 84
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_LOCATION_CHANGED:I

    .line 88
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SIZE_CHANGED:I

    .line 92
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_TAKEN_TIME_CHANGED:I

    .line 96
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_TITLE_CHANGED:I

    .line 100
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_VISIBILITY_CHANGED:I

    .line 104
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SHARE:I

    return-void
.end method


# virtual methods
.method public abstract addToAlbum(JI)Z
.end method

.method public abstract canAddToAlbum()Z
.end method

.method public abstract delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract getAddress()Landroid/location/Address;
.end method

.method public abstract getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getEffectedMedia()Lcom/oneplus/gallery2/media/Media;
.end method

.method public abstract getEmbeddedThumbnailImageSize(II[II)Z
.end method

.method public abstract getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getFileNameExtension()Ljava/lang/String;
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLastModifiedTime()J
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getOriginalMedia()Lcom/oneplus/gallery2/media/Media;
.end method

.method public abstract getPreviousAddress()Landroid/location/Address;
.end method

.method public abstract getPreviousFilePath()Ljava/lang/String;
.end method

.method public abstract getPreviousLocation()Landroid/location/Location;
.end method

.method public abstract getPreviousTakenTime()J
.end method

.method public abstract getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract getSource()Lcom/oneplus/gallery2/media/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getTakenTime()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/oneplus/gallery2/media/MediaType;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isCapturedByFrontCamera()Z
.end method

.method public abstract isExternal()Z
.end method

.method public abstract isFavorite()Z
.end method

.method public abstract isFavoriteSupported()Z
.end method

.method public abstract isParentVisible()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract isShareable()Z
.end method

.method public abstract isTemporary()Z
.end method

.method public abstract isVisibilityChangeSupported()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract openInputStream(Lcom/oneplus/base/Ref;I)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openInputStreamForEmbeddedThumbnailImage(IILcom/oneplus/base/Ref;I)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract peekSize()Landroid/util/Size;
.end method

.method public abstract prepareSharing(Lcom/oneplus/gallery2/media/PrepareSharingCallback;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract removeFromAlbum(JI)Z
.end method

.method public abstract setFavorite(Z)Z
.end method

.method public abstract setVisible(Z)Z
.end method

.method public abstract view(I)Lcom/oneplus/base/Handle;
.end method
