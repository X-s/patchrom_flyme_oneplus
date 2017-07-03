.class public final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
.super Ljava/lang/Object;
.source "GalleryDatabaseManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraDirectoryInfo"
.end annotation


# instance fields
.field public volatile id:J

.field public volatile mediaAddedTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 432
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;-><init>(JJ)V

    .line 433
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaAddedDate"    # J

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-wide p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->id:J

    .line 437
    iput-wide p3, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    .line 438
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .locals 6

    .prologue
    .line 445
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-object v1

    .line 447
    :catch_0
    move-exception v0

    .line 449
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    iget-wide v2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->id:J

    iget-wide v4, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;-><init>(JJ)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    move-result-object v0

    return-object v0
.end method
