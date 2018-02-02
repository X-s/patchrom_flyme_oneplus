.class public final Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
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
    name = "ExtraMediaInfo"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# instance fields
.field public volatile addressAddressLine0:Ljava/lang/String;

.field public volatile addressAddressLine1:Ljava/lang/String;

.field public volatile addressAdminArea:Ljava/lang/String;

.field public volatile addressCountry:Ljava/lang/String;

.field public volatile addressFeature:Ljava/lang/String;

.field public volatile addressLatitude:D

.field public volatile addressLocale:Ljava/lang/String;

.field public volatile addressLocality:Ljava/lang/String;

.field public volatile addressLongitude:D

.field public volatile addressSubAdminArea:Ljava/lang/String;

.field public volatile addressSubLocality:Ljava/lang/String;

.field public volatile mediaId:J

.field public volatile objectDetectionFileTime:J

.field public volatile objectDetectionResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public volatile objectDetectionVersion:J

.field public volatile oneplusFlags:J

.field public volatile sceneDetectionFileTime:J

.field public volatile sceneDetectionResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public volatile sceneDetectionVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$1()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    .line 428
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "media_id"

    .line 431
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    const-string/jumbo v0, "oneplus_flags"

    .line 435
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 436
    if-nez v0, :cond_1

    .line 438
    :goto_0
    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No media ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/16 v7, 0x5d

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "media_id"

    .line 441
    invoke-static {p1, v0, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    const-string/jumbo v0, "oneplus_flags"

    .line 442
    invoke-static {p1, v0, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-string/jumbo v0, "address_locale"

    .line 443
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    const-string/jumbo v0, "address_latitude"

    .line 444
    invoke-static {p1, v0, v4, v5}, Lcom/oneplus/database/CursorUtils;->getDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    const-string/jumbo v0, "address_longitude"

    .line 445
    invoke-static {p1, v0, v4, v5}, Lcom/oneplus/database/CursorUtils;->getDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    const-string/jumbo v0, "address_country"

    .line 446
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    const-string/jumbo v0, "address_admin_area"

    .line 447
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    const-string/jumbo v0, "address_sub_admin_area"

    .line 448
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    const-string/jumbo v0, "address_locality"

    .line 449
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    const-string/jumbo v0, "address_sub_locality"

    .line 450
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    const-string/jumbo v0, "address_feature"

    .line 451
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    const-string/jumbo v0, "address_address_line_0"

    .line 452
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    const-string/jumbo v0, "address_address_line_1"

    .line 453
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    const-string/jumbo v0, "object_detection_version"

    .line 454
    invoke-static {p1, v0, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionVersion:J

    const-string/jumbo v0, "object_detection_file_time"

    .line 455
    invoke-static {p1, v0, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionFileTime:J

    const-string/jumbo v0, "object_detection_result"

    .line 456
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    if-nez v3, :cond_2

    :cond_0
    const-string/jumbo v0, "scene_detection_version"

    .line 470
    invoke-static {p1, v0, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionVersion:J

    const-string/jumbo v0, "scene_detection_file_time"

    .line 471
    invoke-static {p1, v0, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionFileTime:J

    const-string/jumbo v0, "scene_detection_result"

    .line 472
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    if-nez v2, :cond_4

    .line 486
    :cond_1
    return-void

    .line 460
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v2, v1

    .line 461
    :goto_0
    if-lez v0, :cond_0

    .line 463
    iget-object v4, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 465
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v2, v0, 0x1

    .line 467
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    .line 464
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    goto :goto_1

    .line 476
    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 477
    :goto_2
    if-lez v0, :cond_1

    .line 479
    iget-object v3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 481
    :goto_3
    iget-object v3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    new-instance v4, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v1, v0, 0x1

    .line 483
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_2

    .line 480
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    goto :goto_3
.end method

.method private serializeObjectDetectionResult()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 529
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    if-nez v1, :cond_1

    .line 536
    :cond_0
    return-object v2

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 533
    iget-object v3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private serializeSceneDetectionResult()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 542
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    if-nez v1, :cond_1

    .line 549
    :cond_0
    return-object v2

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 546
    iget-object v3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .locals 3

    .prologue
    .line 494
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 495
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    if-nez v1, :cond_2

    .line 497
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    if-nez v1, :cond_3

    .line 499
    :cond_1
    :goto_1
    return-object v0

    .line 495
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 503
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 497
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 511
    instance-of v0, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    if-nez v0, :cond_0

    .line 516
    return v4

    .line 513
    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 514
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v4
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 523
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    long-to-int v0, v0

    return v0
.end method

.method public toContentValues(Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    const-string/jumbo v0, "media_id"

    .line 555
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "oneplus_flags"

    .line 556
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "address_locale"

    .line 557
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    :goto_0
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const-string/jumbo v0, "address_country"

    .line 562
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "address_admin_area"

    .line 563
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "address_sub_admin_area"

    .line 564
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "address_locality"

    .line 565
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "address_sub_locality"

    .line 566
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "address_feature"

    .line 567
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "address_address_line_0"

    .line 568
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "address_address_line_1"

    .line 569
    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "object_detection_version"

    .line 570
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "object_detection_file_time"

    .line 571
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionFileTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "object_detection_result"

    .line 572
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->serializeObjectDetectionResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "scene_detection_version"

    .line 573
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "scene_detection_file_time"

    .line 574
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionFileTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "scene_detection_result"

    .line 575
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->serializeSceneDetectionResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void

    :cond_0
    const-string/jumbo v0, "address_latitude"

    .line 559
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "address_longitude"

    .line 561
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_1
.end method

.method public toCursor(Landroid/database/MatrixCursor;)V
    .locals 4

    .prologue
    const/16 v0, 0x13

    .line 581
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 582
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 583
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 584
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 585
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 586
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 587
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 588
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 589
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 590
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 591
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 592
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 593
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 594
    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 595
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 596
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionFileTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 597
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->serializeObjectDetectionResult()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 598
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 599
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionFileTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 600
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->serializeSceneDetectionResult()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 581
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 602
    return-void
.end method
