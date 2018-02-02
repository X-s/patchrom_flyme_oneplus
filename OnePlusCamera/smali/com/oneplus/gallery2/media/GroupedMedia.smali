.class public interface abstract Lcom/oneplus/gallery2/media/GroupedMedia;
.super Ljava/lang/Object;
.source "GroupedMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media;


# static fields
.field public static final FLAG_COVER_CHANGED:I

.field public static final FLAG_SUB_MEDIA_COUNT_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    .line 15
    sget-object v0, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    return-void
.end method


# virtual methods
.method public abstract contains(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method public abstract getCover()Lcom/oneplus/gallery2/media/Media;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/Media;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getSubMediaCount()I
.end method

.method public abstract openSubMediaList(Lcom/oneplus/gallery2/media/MediaComparator;I)Lcom/oneplus/gallery2/media/MediaList;
.end method
