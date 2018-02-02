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

.field public static final FLAG_FAVORITE_CHANGED:I

.field public static final FLAG_FILE_PATH_CHANGED:I

.field public static final FLAG_FILE_SIZE_CHANGED:I

.field public static final FLAG_INCLUDE_RAW_PHOTO:I

.field public static final FLAG_LAST_MODIFIED_TIME_CHANGED:I

.field public static final FLAG_LOCATION_CHANGED:I

.field public static final FLAG_MOVE_TO_RECYCE_BIN:I

.field public static final FLAG_RESTORE_FROM_RECYCLE_BIN:I

.field public static final FLAG_SIZE_CHANGED:I

.field public static final FLAG_SUB_MEDIA:I

.field public static final FLAG_TAKEN_TIME_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 32
    new-instance v0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;

    invoke-direct {v0}, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/Media;->EXTRA_KEY_GENERATOR:Lcom/oneplus/gallery2/ExtraKeyGenerator;

    .line 38
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    .line 42
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    .line 46
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    .line 50
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    .line 54
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_ADDRESS_CHANGED:I

    .line 58
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_FAVORITE_CHANGED:I

    .line 62
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_PATH_CHANGED:I

    .line 66
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_SIZE_CHANGED:I

    .line 70
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    .line 74
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_LOCATION_CHANGED:I

    .line 78
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SIZE_CHANGED:I

    .line 82
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/Media;->FLAG_TAKEN_TIME_CHANGED:I

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

.method public abstract isReadOnly()Z
.end method

.method public abstract isTemporary()Z
.end method

.method public abstract openInputStream(I)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openInputStreamForEmbeddedThumbnailImage(III)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract peekSize()Landroid/util/Size;
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

.method public abstract view(I)Lcom/oneplus/base/Handle;
.end method
