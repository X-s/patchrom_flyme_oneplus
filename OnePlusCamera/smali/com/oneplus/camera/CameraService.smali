.class public interface abstract Lcom/oneplus/camera/CameraService;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/SupportedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsConnected"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/CameraService;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraService;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    .line 16
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "TorchFlashSupportedState"

    const-class v2, Lcom/oneplus/camera/SupportedState;

    const-class v3, Lcom/oneplus/camera/CameraService;

    sget-object v4, Lcom/oneplus/camera/SupportedState;->UNKNOWN:Lcom/oneplus/camera/SupportedState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract torchFlash()Lcom/oneplus/base/Handle;
.end method
