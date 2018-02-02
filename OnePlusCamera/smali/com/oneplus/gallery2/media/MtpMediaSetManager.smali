.class public final Lcom/oneplus/gallery2/media/MtpMediaSetManager;
.super Lcom/oneplus/gallery2/media/MediaSourceComponent;
.source "MtpMediaSetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;,
        Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery2/media/MediaSourceComponent",
        "<",
        "Lcom/oneplus/gallery2/media/MtpMediaSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_DeviceAttachedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/io/UsbDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DeviceDetachedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/io/UsbDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DeviceInfoTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OpenedMediaSetLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "MTP media set manager"

    const-class v1, Lcom/oneplus/gallery2/media/MtpMediaSource;

    .line 90
    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceInfoTable:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager$1;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSetManager;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceAttachedHandler:Lcom/oneplus/base/EventHandler;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager$2;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSetManager;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceDetachedHandler:Lcom/oneplus/base/EventHandler;

    .line 91
    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$4(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->onMediaSetListReleased(Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;)V

    return-void
.end method

.method private addToMediaSetList(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;Z)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->ptpCameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;

    .line 98
    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p3, v0, p4}, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_0
.end method

.method private addToOpenedMediaSetLists(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    if-nez v0, :cond_1

    .line 112
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->addToMediaSetList(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;Z)V

    .line 109
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0
.end method

.method private createMediaSets(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->ptpCameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;

    .line 119
    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v1, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSource;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->device:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v1, v0, v2, p2}, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Landroid/hardware/usb/UsbDevice;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 122
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->ptpCameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    .line 144
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceInfoTable:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;

    .line 145
    if-nez v0, :cond_0

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDeviceAttached() - Device "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    new-instance v2, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Landroid/hardware/usb/UsbDevice;)V

    .line 152
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceInfoTable:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaType;

    .line 157
    invoke-direct {p0, v2, v0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->createMediaSets(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 158
    invoke-direct {p0, v2, v0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->addToOpenedMediaSetLists(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    goto :goto_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDeviceAttached() - Duplicate device "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method private onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 5

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    .line 168
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceInfoTable:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;

    .line 169
    if-eqz v0, :cond_0

    .line 171
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->removeFromOpenedMediaSetLists(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->releaseMediaSets(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;)V

    .line 183
    return-void

    .line 170
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDeviceDetached() - Unknown device : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceInfoTable:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private onMediaSetListReleased(Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;)V
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->verifyAccess()V

    .line 191
    iget-object v1, p1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 192
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    if-nez v0, :cond_1

    .line 194
    :cond_0
    return-void

    .line 193
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceInfoTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->releaseMediaSets(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    goto :goto_0

    .line 200
    :cond_2
    return-void
.end method

.method private releaseMediaSets(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;)V
    .locals 4

    .prologue
    .line 264
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaType;->values()[Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 265
    invoke-direct {p0, p1, v3}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->releaseMediaSets(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method private releaseMediaSets(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->ptpCameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 270
    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSet;->release()V

    goto :goto_0
.end method

.method private removeFromOpenedMediaSetLists(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;)V
    .locals 6

    .prologue
    .line 278
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaType;

    .line 281
    iget-object v2, p1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;->ptpCameraRollMediaSets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/PtpCameraRollMediaSet;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_0
    if-ltz v3, :cond_0

    .line 285
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;

    .line 286
    if-nez v1, :cond_1

    .line 283
    :goto_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_0

    .line 287
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_1

    .line 290
    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->onBindToMediaSource(Lcom/oneplus/gallery2/media/MtpMediaSource;)V

    return-void
.end method

.method protected onBindToMediaSource(Lcom/oneplus/gallery2/media/MtpMediaSource;)V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 132
    sget-object v0, Lcom/oneplus/gallery2/media/MtpMediaSource;->EVENT_DEVICE_ATTACHED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceAttachedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/media/MtpMediaSource;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 133
    sget-object v0, Lcom/oneplus/gallery2/media/MtpMediaSource;->EVENT_DEVICE_DETACHED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceDetachedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/media/MtpMediaSource;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 134
    sget-object v0, Lcom/oneplus/gallery2/media/MtpMediaSource;->PROP_DEVICE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/media/MtpMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 135
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method protected bridge synthetic onUnbindFromMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->onUnbindFromMediaSource(Lcom/oneplus/gallery2/media/MtpMediaSource;)V

    return-void
.end method

.method protected onUnbindFromMediaSource(Lcom/oneplus/gallery2/media/MtpMediaSource;)V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/oneplus/gallery2/media/MtpMediaSource;->EVENT_DEVICE_ATTACHED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceAttachedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/media/MtpMediaSource;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 208
    sget-object v0, Lcom/oneplus/gallery2/media/MtpMediaSource;->EVENT_DEVICE_DETACHED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceDetachedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/media/MtpMediaSource;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 209
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onUnbindFromMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 210
    return-void
.end method

.method public openMtpMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->verifyAccess()V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v1, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 242
    if-eqz v0, :cond_1

    .line 247
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_DeviceInfoTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;

    .line 252
    invoke-direct {p0, v0, p2}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->createMediaSets(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 253
    invoke-direct {p0, v0, p2, v1, v3}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->addToMediaSetList(Lcom/oneplus/gallery2/media/MtpMediaSetManager$DeviceInfo;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;Z)V

    goto :goto_1

    .line 237
    :cond_0
    return-object v1

    .line 244
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->m_OpenedMediaSetLists:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :cond_2
    return-object v1
.end method

.method public openMtpMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->openMtpMediaSetList(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    return-object v0
.end method
