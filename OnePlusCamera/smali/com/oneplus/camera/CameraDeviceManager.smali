.class public interface abstract Lcom/oneplus/camera/CameraDeviceManager;
.super Ljava/lang/Object;
.source "CameraDeviceManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_CAMERA_CLOSED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraIdEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAMERA_OPENED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAMERA_OPENING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraIdEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAMERA_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraIdEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraIdEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 19
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AvailableCameras"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/CameraDeviceManager;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    .line 25
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraClosed"

    const-class v2, Lcom/oneplus/camera/CameraIdEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraDeviceManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraDeviceManager;->EVENT_CAMERA_CLOSED:Lcom/oneplus/base/EventKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraOpenCancelled"

    const-class v2, Lcom/oneplus/camera/CameraIdEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraDeviceManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraDeviceManager;->EVENT_CAMERA_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraOpenFailed"

    const-class v2, Lcom/oneplus/camera/CameraIdEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraDeviceManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraDeviceManager;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    .line 37
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraOpened"

    const-class v2, Lcom/oneplus/camera/CameraDeviceEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraDeviceManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraDeviceManager;->EVENT_CAMERA_OPENED:Lcom/oneplus/base/EventKey;

    .line 41
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraOpening"

    const-class v2, Lcom/oneplus/camera/CameraIdEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraDeviceManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/CameraDeviceManager;->EVENT_CAMERA_OPENING:Lcom/oneplus/base/EventKey;

    return-void
.end method
