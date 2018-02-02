.class public interface abstract Lcom/oneplus/io/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/io/UsbManager$OpenDeviceCallback;,
        Lcom/oneplus/io/UsbManager$PermissionCallback;
    }
.end annotation


# static fields
.field public static final EVENT_DEVICE_ATTACHED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/io/UsbDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_DEVICE_DETACHED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/io/UsbDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_DEVICE_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "DeviceList"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/io/UsbManager;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/io/UsbManager;->PROP_DEVICE_LIST:Lcom/oneplus/base/PropertyKey;

    .line 30
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "DeviceAttached"

    const-class v2, Lcom/oneplus/io/UsbDeviceEventArgs;

    const-class v3, Lcom/oneplus/io/UsbManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/io/UsbManager;->EVENT_DEVICE_ATTACHED:Lcom/oneplus/base/EventKey;

    .line 34
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "DeviceDetached"

    const-class v2, Lcom/oneplus/io/UsbDeviceEventArgs;

    const-class v3, Lcom/oneplus/io/UsbManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/io/UsbManager;->EVENT_DEVICE_DETACHED:Lcom/oneplus/base/EventKey;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract isDeviceOpened(Landroid/hardware/usb/UsbDevice;)Z
.end method

.method public abstract openDevice(Landroid/hardware/usb/UsbDevice;Lcom/oneplus/io/UsbManager$OpenDeviceCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract requestPermission(Landroid/hardware/usb/UsbDevice;Lcom/oneplus/io/UsbManager$PermissionCallback;Landroid/os/Handler;I)V
.end method
