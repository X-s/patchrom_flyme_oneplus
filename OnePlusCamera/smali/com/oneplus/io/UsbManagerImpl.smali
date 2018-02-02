.class final Lcom/oneplus/io/UsbManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "UsbManagerImpl.java"

# interfaces
.implements Lcom/oneplus/io/UsbManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;,
        Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;,
        Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "android.mtp.MtpClient.action.USB_PERMISSION"

.field private static final MSG_DEVICE_OPENED:I = 0x2710

.field private static final m_IOExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final m_Devices:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_SysUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/io/UsbManagerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/io/UsbManagerImpl;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl;->m_SysUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/io/UsbManagerImpl;Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/io/UsbManagerImpl;->closeDevice(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/io/UsbManagerImpl;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/io/UsbManagerImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/io/UsbManagerImpl;->m_IOExecutor:Ljava/util/concurrent/Executor;

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/component/ComponentOwner;)V
    .locals 2
    .param p1, "owner"    # Lcom/oneplus/base/component/ComponentOwner;

    .prologue
    .line 191
    const-string/jumbo v0, "USB manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    .line 189
    return-void
.end method

.method private closeDevice(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    .prologue
    const/4 v5, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/oneplus/io/UsbManagerImpl;->verifyAccess()V

    .line 199
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->-get1(Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;)Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    .line 200
    .local v1, "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "deviceName":Ljava/lang/String;
    iget-object v0, v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 204
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    iput-object v5, v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 205
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "closeDevice() - Start closing connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v3, Lcom/oneplus/io/UsbManagerImpl;->m_IOExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/oneplus/io/UsbManagerImpl$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/oneplus/io/UsbManagerImpl$1;-><init>(Lcom/oneplus/io/UsbManagerImpl;Ljava/lang/String;Landroid/hardware/usb/UsbDeviceConnection;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 196
    .end local v0    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v2    # "deviceName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onBroadcastReceived(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "device"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 266
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 267
    :cond_0
    return-void

    .line 268
    :cond_1
    const-string/jumbo v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    invoke-direct {p0, v1}, Lcom/oneplus/io/UsbManagerImpl;->onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 262
    :cond_2
    :goto_0
    return-void

    .line 268
    :cond_3
    const-string/jumbo v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    invoke-direct {p0, v1}, Lcom/oneplus/io/UsbManagerImpl;->onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    .line 268
    :cond_4
    const-string/jumbo v2, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    const-string/jumbo v2, "permission"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/io/UsbManagerImpl;->onPermissionRequested(Landroid/hardware/usb/UsbDevice;Z)V

    goto :goto_0
.end method

.method private onDeviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceAttached() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDeviceAttached() - Duplicate device"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 311
    return-void

    .line 313
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    new-instance v2, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    invoke-direct {v2, p1}, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 315
    sget-object v0, Lcom/oneplus/io/UsbManagerImpl;->PROP_DEVICE_LIST:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/io/UsbManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/oneplus/io/UsbManagerImpl;->EVENT_DEVICE_ATTACHED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/io/UsbDeviceEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/io/UsbDeviceEventArgs;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/io/UsbManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 301
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onDeviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 325
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeviceDetached() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    monitor-enter v3

    .line 331
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    .line 332
    .local v0, "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    if-nez v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDeviceAttached() - Unknown device"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 335
    return-void

    :cond_0
    monitor-exit v3

    .line 340
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 341
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;

    invoke-virtual {v2, p1}, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callOnRejected(Landroid/hardware/usb/UsbDevice;)V

    .line 340
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 329
    .end local v0    # "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 344
    .restart local v0    # "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 345
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    invoke-virtual {v2}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->complete()V

    .line 344
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 348
    :cond_2
    sget-object v2, Lcom/oneplus/io/UsbManagerImpl;->PROP_DEVICE_LIST:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/io/UsbManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 351
    sget-object v2, Lcom/oneplus/io/UsbManagerImpl;->EVENT_DEVICE_DETACHED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/io/UsbDeviceEventArgs;

    invoke-direct {v3, p1}, Lcom/oneplus/io/UsbDeviceEventArgs;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/io/UsbManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 323
    return-void
.end method

.method private onDeviceOpened(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 359
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    .line 360
    .local v0, "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    if-nez v0, :cond_1

    .line 362
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDeviceOpened() - Unknown device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-eqz p2, :cond_0

    .line 365
    sget-object v3, Lcom/oneplus/io/UsbManagerImpl;->m_IOExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/oneplus/io/UsbManagerImpl$2;

    invoke-direct {v4, p0, p2}, Lcom/oneplus/io/UsbManagerImpl$2;-><init>(Lcom/oneplus/io/UsbManagerImpl;Landroid/hardware/usb/UsbDeviceConnection;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 381
    :cond_0
    return-void

    .line 385
    :cond_1
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .line 386
    .local v2, "success":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDeviceOpened() - Device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz v2, :cond_3

    .line 391
    iput-object p2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 392
    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 393
    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    invoke-virtual {v3, p2}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callOnOpened(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 392
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 385
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "success":Z
    goto :goto_0

    .line 397
    :cond_3
    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 398
    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    invoke-virtual {v3}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callOnFailed()V

    .line 397
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 356
    :cond_4
    return-void
.end method

.method private onPermissionRequested(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "requested"    # Z

    .prologue
    .line 447
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    .line 448
    .local v0, "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    if-nez v0, :cond_0

    .line 449
    return-void

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPermissionRequested() - Device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", requested : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-eqz p2, :cond_1

    .line 453
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 454
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;

    invoke-virtual {v2, p1}, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callOnRequested(Landroid/hardware/usb/UsbDevice;)V

    .line 453
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 458
    .end local v1    # "i":I
    :cond_1
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 459
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;

    invoke-virtual {v2, p1}, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callOnRejected(Landroid/hardware/usb/UsbDevice;)V

    .line 458
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 461
    :cond_2
    iget-object v2, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 445
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 241
    invoke-super {p0, p1}, Lcom/oneplus/base/component/BasicComponent;->handleMessage(Landroid/os/Message;)V

    .line 229
    :goto_0
    return-void

    .line 235
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 236
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/io/UsbManagerImpl;->onDeviceOpened(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public isDeviceOpened(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v1, 0x0

    .line 251
    if-nez p1, :cond_0

    .line 252
    return v1

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    monitor-enter v2

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    .line 256
    .local v0, "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->connection:Landroid/hardware/usb/UsbDeviceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v2

    return v1

    .line 253
    .end local v0    # "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/io/UsbManagerImpl;->m_SysUsbManager:Landroid/hardware/usb/UsbManager;

    .line 293
    sget-object v0, Lcom/oneplus/io/UsbManagerImpl;->PROP_OWNER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/io/UsbManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/io/UsbManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 287
    return-void
.end method

.method protected onInitialize()V
    .locals 9

    .prologue
    .line 408
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 411
    sget-object v6, Lcom/oneplus/io/UsbManagerImpl;->PROP_OWNER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/io/UsbManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 412
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v6, "usb"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbManager;

    iput-object v6, p0, Lcom/oneplus/io/UsbManagerImpl;->m_SysUsbManager:Landroid/hardware/usb/UsbManager;

    .line 415
    new-instance v6, Lcom/oneplus/io/UsbManagerImpl$3;

    invoke-direct {v6, p0}, Lcom/oneplus/io/UsbManagerImpl$3;-><init>(Lcom/oneplus/io/UsbManagerImpl;)V

    iput-object v6, p0, Lcom/oneplus/io/UsbManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string/jumbo v6, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v6, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    iget-object v6, p0, Lcom/oneplus/io/UsbManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/io/UsbManagerImpl;->m_SysUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v3

    .line 433
    .local v3, "devices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 434
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    iget-object v6, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    new-instance v7, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    invoke-direct {v7, v1}, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v6, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    .end local v1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local v2    # "device$iterator":Ljava/util/Iterator;
    .end local v3    # "devices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :catch_0
    move-exception v4

    .line 439
    .local v4, "ex":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onInitialize() - Fail to setup device list"

    invoke-static {v6, v7, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    .end local v4    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 435
    .restart local v2    # "device$iterator":Ljava/util/Iterator;
    .restart local v3    # "devices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :cond_0
    :try_start_1
    sget-object v6, Lcom/oneplus/io/UsbManagerImpl;->PROP_DEVICE_LIST:Lcom/oneplus/base/PropertyKey;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/io/UsbManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public openDevice(Landroid/hardware/usb/UsbDevice;Lcom/oneplus/io/UsbManager$OpenDeviceCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "callback"    # Lcom/oneplus/io/UsbManager$OpenDeviceCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/oneplus/io/UsbManagerImpl;->verifyAccess()V

    .line 471
    invoke-virtual {p0, v4}, Lcom/oneplus/io/UsbManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 472
    return-object v6

    .line 475
    :cond_0
    if-nez p1, :cond_1

    .line 477
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openDevice() - No device to open"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-object v6

    .line 480
    :cond_1
    if-nez p2, :cond_2

    .line 482
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openDevice() - No call-back"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-object v6

    .line 487
    :cond_2
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    .line 488
    .local v0, "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 491
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openDevice() - Unknown device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-object v6

    .line 496
    :cond_3
    new-instance v2, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;-><init>(Lcom/oneplus/io/UsbManagerImpl;Landroid/hardware/usb/UsbDevice;Lcom/oneplus/io/UsbManager$OpenDeviceCallback;Landroid/os/Handler;)V

    .line 497
    .local v2, "handle":Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;
    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v3, :cond_4

    .line 500
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openDevice() - Use current connection"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2, v3}, Lcom/oneplus/io/UsbManagerImpl$OpenDeviceHandle;->callOnOpened(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 502
    return-object v2

    .line 506
    :cond_4
    iget-object v3, v0, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->openHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 508
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openDevice() - Open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-object v3, Lcom/oneplus/io/UsbManagerImpl;->m_IOExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/oneplus/io/UsbManagerImpl$4;

    invoke-direct {v4, p0, v1, p1}, Lcom/oneplus/io/UsbManagerImpl$4;-><init>(Lcom/oneplus/io/UsbManagerImpl;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 530
    :cond_5
    return-object v2
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Lcom/oneplus/io/UsbManager$PermissionCallback;Landroid/os/Handler;I)V
    .locals 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "callback"    # Lcom/oneplus/io/UsbManager$PermissionCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/oneplus/io/UsbManagerImpl;->verifyAccess()V

    .line 540
    invoke-virtual {p0, v4}, Lcom/oneplus/io/UsbManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 541
    return-void

    .line 544
    :cond_0
    if-nez p1, :cond_1

    .line 546
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestPermission() - No device"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void

    .line 551
    :cond_1
    new-instance v2, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;

    invoke-direct {v2, p2, p3}, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;-><init>(Lcom/oneplus/io/UsbManager$PermissionCallback;Landroid/os/Handler;)V

    .line 552
    .local v2, "requestInfo":Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->m_Devices:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;

    .line 553
    .local v1, "deviceInfo":Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;
    if-nez v1, :cond_2

    .line 555
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestPermission() - Unknown device"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v2, p1}, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callOnRejected(Landroid/hardware/usb/UsbDevice;)V

    .line 557
    return-void

    .line 561
    :cond_2
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->m_SysUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 563
    invoke-virtual {v2, p1}, Lcom/oneplus/io/UsbManagerImpl$PermissionRequestInfo;->callOnRequested(Landroid/hardware/usb/UsbDevice;)V

    .line 564
    return-void

    .line 566
    :cond_3
    iget-object v3, v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v3, v1, Lcom/oneplus/io/UsbManagerImpl$DeviceInfo;->permissionRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 569
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestPermission() - Device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v3, Lcom/oneplus/io/UsbManagerImpl;->PROP_OWNER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/io/UsbManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 571
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/oneplus/io/UsbManagerImpl;->m_SysUsbManager:Landroid/hardware/usb/UsbManager;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 536
    .end local v0    # "context":Landroid/content/Context;
    :cond_4
    return-void
.end method
