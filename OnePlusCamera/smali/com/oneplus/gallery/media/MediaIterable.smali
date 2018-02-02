.class public interface abstract Lcom/oneplus/gallery/media/MediaIterable;
.super Ljava/lang/Object;
.source "MediaIterable.java"


# static fields
.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_GROUP_MEDIA:I

.field public static final FLAG_NORMAL_MEDIA:I

.field public static final FLAG_PHOTO_ONLY:I

.field public static final FLAG_RECYCLED_MEDIA:I

.field public static final FLAG_SUB_MEDIA:I

.field public static final FLAG_VIDEO_ONLY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery/media/MediaIterable;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 18
    sget-object v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAG_NORMAL_MEDIA:I

    .line 22
    sget-object v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAG_SUB_MEDIA:I

    .line 26
    sget-object v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAG_GROUP_MEDIA:I

    .line 30
    sget-object v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAG_RECYCLED_MEDIA:I

    .line 34
    sget-object v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAG_PHOTO_ONLY:I

    .line 38
    sget-object v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery/media/MediaIterable;->FLAG_VIDEO_ONLY:I

    return-void
.end method


# virtual methods
.method public abstract iterateMedia()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end method

.method public abstract iterateMedia(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end method
