.class public final Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MinimumMediaInfo"
.end annotation


# static fields
.field public static final DEFAULT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public filePath:Ljava/lang/String;

.field public id:J

.field public mediaType:Lcom/oneplus/gallery/media/MediaType;

.field public parentId:J

.field public takenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo$1;

    invoke-direct {v0}, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->id:J

    .line 118
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    .line 119
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->takenTime:J

    .line 120
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->parentId:J

    .line 121
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 125
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->takenTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getTakenTimeFromFile(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->takenTime:J

    goto :goto_0

    .line 129
    :pswitch_2
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 130
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->takenTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getTakenTimeFromFile(Ljava/lang/String;Lcom/oneplus/base/Ref;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->takenTime:J

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
