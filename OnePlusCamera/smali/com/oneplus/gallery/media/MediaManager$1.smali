.class Lcom/oneplus/gallery/media/MediaManager$1;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/oneplus/gallery/media/MediaManager;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery/media/MediaManager;->FLAG_INCLUDE_RAW_PHOTO:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/gallery/media/MediaProvider;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/gallery/media/MediaProvider;->FLAG_INCLUDE_RAW_PHOTO:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 59
    sget-object v0, Lcom/oneplus/gallery/media/MediaManager;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery/media/MediaManager;->FLAG_SINGLE_MEDIA_CHANGE:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SINGLE_MEDIA_CHANGE:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 1
    return-void
.end method
