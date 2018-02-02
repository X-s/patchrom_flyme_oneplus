.class public interface abstract Lcom/oneplus/camera/FlashController;
.super Ljava/lang/Object;
.source "FlashController.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/FlashController$FlashDisabledReason;
    }
.end annotation


# static fields
.field public static final FLAG_TEMPORARY:I = 0x1

.field public static final PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/FlashController$FlashDisabledReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/FlashMode;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 24
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FlashDisabledReason"

    const-class v2, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-class v3, Lcom/oneplus/camera/FlashController;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    .line 28
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FlashMode"

    const-class v2, Lcom/oneplus/camera/FlashMode;

    const-class v3, Lcom/oneplus/camera/FlashController;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FlashModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/FlashController;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/oneplus/camera/FlashMode;

    sget-object v5, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    .line 37
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HasFlash"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/FlashController;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    .line 41
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsFlashDisabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/FlashController;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract setFlashMode(Lcom/oneplus/camera/FlashMode;I)V
.end method

.method public abstract torchFlash(J)Lcom/oneplus/base/Handle;
.end method
