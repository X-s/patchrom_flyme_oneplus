.class public interface abstract Lcom/oneplus/camera/ui/FocusExposureIndicator;
.super Ljava/lang/Object;
.source "FocusExposureIndicator.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;
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

    .line 11
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CanFocusExposureSeparated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/FocusExposureIndicator;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    .line 16
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsFocusExposureSeparated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/FocusExposureIndicator;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_IS_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    .line 6
    return-void
.end method
