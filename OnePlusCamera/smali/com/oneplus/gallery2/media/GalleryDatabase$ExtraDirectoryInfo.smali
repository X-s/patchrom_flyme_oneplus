.class public final Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraDirectoryInfo"
.end annotation


# instance fields
.field public volatile directoryId:J

.field public volatile mediaAddedTime:J

.field public volatile oneplusFlags:J


# direct methods
.method public constructor <init>(J)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, v4

    .line 362
    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;-><init>(JJJ)V

    .line 363
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->directoryId:J

    .line 367
    iput-wide p3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    .line 368
    iput-wide p5, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "_id"

    .line 372
    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->directoryId:J

    const-string/jumbo v0, "date_media_added"

    .line 373
    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    const-string/jumbo v0, "oneplus_flags"

    .line 374
    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    .line 375
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    .locals 8

    .prologue
    .line 383
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 387
    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->directoryId:J

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;-><init>(JJJ)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v0

    return-object v0
.end method
