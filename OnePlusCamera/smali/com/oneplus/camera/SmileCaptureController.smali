.class public interface abstract Lcom/oneplus/camera/SmileCaptureController;
.super Ljava/lang/Object;
.source "SmileCaptureController.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SMILE_CAPTURING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_SMILE_CAPTURE_BACK:Ljava/lang/String; = "SmileCapture.Back"

.field public static final SETTINGS_KEY_SMILE_CAPTURE_FRONT:Ljava/lang/String; = "SmileCapture.Front"

.field public static final SETTINGS_KEY_SMILE_CAPTURE_TIMER_BACK:Ljava/lang/String; = "SmileCapture.Timer.Back"

.field public static final SETTINGS_KEY_SMILE_CAPTURE_TIMER_FRONT:Ljava/lang/String; = "SmileCapture.Timer.Front"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 32
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSmileCaptureEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/SmileCaptureController;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 36
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSmileCapturing"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/SmileCaptureController;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURING:Lcom/oneplus/base/PropertyKey;

    .line 9
    return-void
.end method
