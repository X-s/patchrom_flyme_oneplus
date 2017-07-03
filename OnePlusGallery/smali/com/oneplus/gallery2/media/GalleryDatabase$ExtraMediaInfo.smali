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

.field public volatile oneplusFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    # getter for: Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$000()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "mediaId"    # J

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    .line 368
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const-string v2, "media_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 372
    .local v0, "mediaId":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 373
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No media ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    .line 375
    const-string v2, "oneplus_flags"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 376
    .local v1, "oneplusFlags":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    .line 378
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    .line 382
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    .line 383
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    .line 384
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    .line 385
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    .line 386
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    .line 387
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    .line 388
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    .line 389
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    .line 390
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    .line 391
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    .line 392
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    .line 393
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    .line 394
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .locals 2

    .prologue
    .line 402
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 414
    instance-of v2, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 416
    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 417
    .local v0, "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 419
    .end local v0    # "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    long-to-int v0, v0

    return v0
.end method

.method public toContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 432
    const-string v0, "media_id"

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 433
    const-string v0, "oneplus_flags"

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    const-string v0, "address_locale"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const-string v0, "address_latitude"

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 437
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    const-string v0, "address_longitude"

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 439
    :cond_1
    const-string v0, "address_country"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "address_admin_area"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "address_sub_admin_area"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "address_locality"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "address_sub_locality"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "address_feature"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v0, "address_address_line_0"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "address_address_line_1"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public toCursor(Landroid/database/MatrixCursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/MatrixCursor;

    .prologue
    .line 452
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 467
    return-void
.end method
