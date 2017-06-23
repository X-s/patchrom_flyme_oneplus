.class Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryFilter"
.end annotation


# instance fields
.field public final mManufacturer:Ljava/lang/String;

.field public final mModel:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 383
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 384
    iput-object p3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v2, 0x0

    .line 396
    .local v2, "manufacturer":Ljava/lang/String;
    const/4 v3, 0x0

    .line 397
    .local v3, "model":Ljava/lang/String;
    const/4 v6, 0x0

    .line 399
    .local v6, "version":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 400
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 401
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "value":Ljava/lang/String;
    const-string v7, "manufacturer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 405
    move-object v2, v5

    .line 400
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_1
    const-string v7, "model"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 407
    move-object v3, v5

    goto :goto_1

    .line 408
    :cond_2
    const-string v7, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 409
    move-object v6, v5

    goto :goto_1

    .line 412
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v7, v2, v3, v6}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 446
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 461
    :cond_1
    :goto_0
    return v2

    .line 449
    :cond_2
    instance-of v4, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 450
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 451
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    .line 455
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_4
    instance-of v4, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v4, :cond_6

    move-object v0, p1

    .line 456
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 457
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_5
    move v2, v3

    goto :goto_0

    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_6
    move v2, v3

    .line 461
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public matches(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .param p1, "acc"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v0, 0x0

    .line 430
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .locals 3
    .param p1, "f"    # Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .prologue
    const/4 v0, 0x0

    .line 437
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 416
    const-string v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "manufacturer"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 421
    const-string v0, "model"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 424
    const-string v0, "version"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    :cond_2
    const-string v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    return-void
.end method
