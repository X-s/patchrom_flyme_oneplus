.class public Landroid/hardware/radio/RadioManager$BandDescriptor;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandDescriptor"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLowerLimit:I

.field private final mRegion:I

.field private final mSpacing:I

.field private final mType:I

.field private final mUpperLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$BandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIII)V
    .locals 0
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput p1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    .line 336
    iput p2, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    .line 337
    iput p3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    .line 338
    iput p4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    .line 339
    iput p5, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    .line 340
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/radio/RadioManager$1;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    if-ne p0, p1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    instance-of v3, p1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    if-nez v3, :cond_2

    move v1, v2

    .line 436
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 437
    check-cast v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 438
    .local v0, "other":Landroid/hardware/radio/RadioManager$BandDescriptor;
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 439
    goto :goto_0

    .line 440
    :cond_3
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 441
    goto :goto_0

    .line 442
    :cond_4
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 443
    goto :goto_0

    .line 444
    :cond_5
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 445
    goto :goto_0

    .line 446
    :cond_6
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 447
    goto :goto_0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    return v0
.end method

.method public getRegion()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 421
    const/16 v0, 0x1f

    .line 422
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 423
    .local v1, "result":I
    iget v2, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    add-int/lit8 v1, v2, 0x1f

    .line 424
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    add-int v1, v2, v3

    .line 425
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    add-int v1, v2, v3

    .line 426
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    add-int v1, v2, v3

    .line 427
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    add-int v1, v2, v3

    .line 428
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BandDescriptor [mRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 401
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    return-void
.end method
