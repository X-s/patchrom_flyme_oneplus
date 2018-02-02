.class public interface abstract Lcom/oneplus/gallery/media/MediaChangeCallback;
.super Ljava/lang/Object;
.source "MediaChangeCallback.java"


# static fields
.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_IGNORE_THUMBNAIL_UPDATE:I

.field public static final FLAG_SINGLE_MEDIA_CHANGE:I

.field public static final FLAG_SUB_MEDIA:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery/media/MediaChangeCallback;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 19
    sget-object v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SINGLE_MEDIA_CHANGE:I

    .line 23
    sget-object v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SUB_MEDIA:I

    .line 27
    sget-object v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_IGNORE_THUMBNAIL_UPDATE:I

    return-void
.end method


# virtual methods
.method public abstract onMediaCreated(Lcom/oneplus/gallery/media/Media;I)V
.end method

.method public abstract onMediaDeleted(Lcom/oneplus/gallery/media/Media;I)V
.end method

.method public abstract onMediaRecycled(Lcom/oneplus/gallery/media/Media;I)V
.end method

.method public abstract onMediaRestored(Lcom/oneplus/gallery/media/Media;I)V
.end method

.method public abstract onMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V
.end method
