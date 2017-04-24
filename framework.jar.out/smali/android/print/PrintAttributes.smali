.class public final Landroid/print/PrintAttributes;
.super Ljava/lang/Object;
.source "PrintAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintAttributes$Builder;,
        Landroid/print/PrintAttributes$Margins;,
        Landroid/print/PrintAttributes$Resolution;,
        Landroid/print/PrintAttributes$MediaSize;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUPLEX_MODE_LONG_EDGE:I = 0x2

.field public static final DUPLEX_MODE_NONE:I = 0x1

.field public static final DUPLEX_MODE_SHORT_EDGE:I = 0x4

.field private static final VALID_COLOR_MODES:I = 0x3

.field private static final VALID_DUPLEX_MODES:I = 0x7


# instance fields
.field private mColorMode:I

.field private mDuplexMode:I

.field private mMediaSize:Landroid/print/PrintAttributes$MediaSize;

.field private mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private mResolution:Landroid/print/PrintAttributes$Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1442
    new-instance v0, Landroid/print/PrintAttributes$1;

    invoke-direct {v0}, Landroid/print/PrintAttributes$1;-><init>()V

    sput-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 75
    return-void

    :cond_1
    move-object v0, v1

    .line 70
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 71
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintAttributes$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrintAttributes$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/print/PrintAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static colorModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "colorMode"    # I

    .prologue
    .line 1317
    packed-switch p0, :pswitch_data_0

    .line 1325
    const-string v0, "COLOR_MODE_UNKNOWN"

    :goto_0
    return-object v0

    .line 1319
    :pswitch_0
    const-string v0, "COLOR_MODE_MONOCHROME"

    goto :goto_0

    .line 1322
    :pswitch_1
    const-string v0, "COLOR_MODE_COLOR"

    goto :goto_0

    .line 1317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static duplexModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "duplexMode"    # I

    .prologue
    .line 1331
    packed-switch p0, :pswitch_data_0

    .line 1342
    :pswitch_0
    const-string v0, "DUPLEX_MODE_UNKNOWN"

    :goto_0
    return-object v0

    .line 1333
    :pswitch_1
    const-string v0, "DUPLEX_MODE_NONE"

    goto :goto_0

    .line 1336
    :pswitch_2
    const-string v0, "DUPLEX_MODE_LONG_EDGE"

    goto :goto_0

    .line 1339
    :pswitch_3
    const-string v0, "DUPLEX_MODE_SHORT_EDGE"

    goto :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static enforceValidColorMode(I)V
    .locals 3
    .param p0, "colorMode"    # I

    .prologue
    .line 1348
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid color mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_1
    return-void
.end method

.method static enforceValidDuplexMode(I)V
    .locals 3
    .param p0, "duplexMode"    # I

    .prologue
    .line 1354
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid duplex mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_1
    return-void
.end method


# virtual methods
.method public asLandscape()Landroid/print/PrintAttributes;
    .locals 7

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    .end local p0    # "this":Landroid/print/PrintAttributes;
    :goto_0
    return-object p0

    .line 275
    .restart local p0    # "this":Landroid/print/PrintAttributes;
    :cond_0
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    .line 278
    .local v0, "attributes":Landroid/print/PrintAttributes;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintAttributes$MediaSize;->asLandscape()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 281
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    .line 282
    .local v2, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v1, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v5

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 287
    .local v1, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 290
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 292
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 293
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    move-object p0, v0

    .line 295
    goto :goto_0
.end method

.method public asPortrait()Landroid/print/PrintAttributes;
    .locals 7

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    .end local p0    # "this":Landroid/print/PrintAttributes;
    :goto_0
    return-object p0

    .line 237
    .restart local p0    # "this":Landroid/print/PrintAttributes;
    :cond_0
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    .line 240
    .local v0, "attributes":Landroid/print/PrintAttributes;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintAttributes$MediaSize;->asPortrait()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 243
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    .line 244
    .local v2, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v1, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v5

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 249
    .local v1, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 252
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 254
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 255
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    move-object p0, v0

    .line 257
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 403
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 404
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 406
    const/4 v0, 0x1

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 407
    return-void
.end method

.method public copyFrom(Landroid/print/PrintAttributes;)V
    .locals 1
    .param p1, "other"    # Landroid/print/PrintAttributes;

    .prologue
    .line 413
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 414
    iget-object v0, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 415
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 416
    iget v0, p1, Landroid/print/PrintAttributes;->mColorMode:I

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 417
    iget v0, p1, Landroid/print/PrintAttributes;->mDuplexMode:I

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 418
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    if-ne p0, p1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v1

    .line 344
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 345
    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 348
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 350
    check-cast v0, Landroid/print/PrintAttributes;

    .line 351
    .local v0, "other":Landroid/print/PrintAttributes;
    iget v3, p0, Landroid/print/PrintAttributes;->mColorMode:I

    iget v4, v0, Landroid/print/PrintAttributes;->mColorMode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 352
    goto :goto_0

    .line 354
    :cond_4
    iget v3, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    iget v4, v0, Landroid/print/PrintAttributes;->mDuplexMode:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 355
    goto :goto_0

    .line 357
    :cond_5
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v3, :cond_6

    .line 358
    iget-object v3, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v3, :cond_7

    move v1, v2

    .line 359
    goto :goto_0

    .line 361
    :cond_6
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 362
    goto :goto_0

    .line 364
    :cond_7
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v3, :cond_8

    .line 365
    iget-object v3, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v3, :cond_9

    move v1, v2

    .line 366
    goto :goto_0

    .line 368
    :cond_8
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$MediaSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 369
    goto :goto_0

    .line 371
    :cond_9
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v3, :cond_a

    .line 372
    iget-object v3, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz v3, :cond_0

    move v1, v2

    .line 373
    goto :goto_0

    .line 375
    :cond_a
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 376
    goto :goto_0
.end method

.method public getColorMode()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    return v0
.end method

.method public getDuplexMode()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return v0
.end method

.method public getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    return-object v0
.end method

.method public getMinMargins()Landroid/print/PrintAttributes$Margins;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public getResolution()Landroid/print/PrintAttributes$Resolution;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 329
    const/16 v0, 0x1f

    .line 330
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 331
    .local v1, "result":I
    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    add-int/lit8 v1, v2, 0x1f

    .line 332
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    add-int v1, v2, v4

    .line 333
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 334
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 335
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 336
    return v1

    .line 333
    :cond_0
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v2

    goto :goto_0

    .line 334
    :cond_1
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$MediaSize;->hashCode()I

    move-result v2

    goto :goto_1

    .line 335
    :cond_2
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Resolution;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    return v0
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .prologue
    .line 176
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 177
    iput p1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 178
    return-void
.end method

.method public setDuplexMode(I)V
    .locals 0
    .param p1, "duplexMode"    # I

    .prologue
    .line 218
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    .line 219
    iput p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 220
    return-void
.end method

.method public setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V
    .locals 0
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    .prologue
    .line 94
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 95
    return-void
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)V
    .locals 0
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    .prologue
    .line 150
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 151
    return-void
.end method

.method public setResolution(Landroid/print/PrintAttributes$Resolution;)V
    .locals 0
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    .prologue
    .line 114
    iput-object p1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintAttributes{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string/jumbo v1, "mediaSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v1, :cond_1

    .line 387
    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "portrait"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :goto_1
    const-string v1, ", resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, ", minMargins: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, ", colorMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, ", duplexMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->duplexModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 387
    :cond_0
    const-string/jumbo v1, "landscape"

    goto :goto_0

    .line 390
    :cond_1
    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    .line 306
    :goto_0
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    .line 312
    :goto_1
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    .line 318
    :goto_2
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    return-void

    .line 304
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 316
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
