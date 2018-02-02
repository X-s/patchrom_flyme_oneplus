.class public interface abstract Lcom/oneplus/camera/capturemode/CaptureModeManager;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_CAPTURE_MODE_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureModeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_MODE_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureModeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAPTURE_MODE_SWITCHING:Lcom/oneplus/base/PropertyKey;
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
    .locals 5

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CaptureMode"

    const-class v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    const-class v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureMode;->INVALID:Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 23
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CaptureModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    .line 27
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsCaptureModeSwitching"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_IS_CAPTURE_MODE_SWITCHING:Lcom/oneplus/base/PropertyKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureModeAdded"

    const-class v2, Lcom/oneplus/camera/capturemode/CaptureModeEventArgs;

    const-class v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;->EVENT_CAPTURE_MODE_ADDED:Lcom/oneplus/base/EventKey;

    .line 37
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "CaptureModeRemoved"

    const-class v2, Lcom/oneplus/camera/capturemode/CaptureModeEventArgs;

    const-class v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;->EVENT_CAPTURE_MODE_REMOVED:Lcom/oneplus/base/EventKey;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract addBuilder(Lcom/oneplus/camera/capturemode/CaptureModeBuilder;I)Z
.end method

.method public abstract changeToInitialCaptureMode(I)Z
.end method

.method public abstract findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/oneplus/camera/capturemode/CaptureMode;"
        }
    .end annotation
.end method

.method public abstract setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z
.end method
