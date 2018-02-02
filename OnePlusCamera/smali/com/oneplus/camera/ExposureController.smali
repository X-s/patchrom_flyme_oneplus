.class public interface abstract Lcom/oneplus/camera/ExposureController;
.super Ljava/lang/Object;
.source "ExposureController.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/AutoExposureState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_AE_ON:Lcom/oneplus/base/PropertyKey;
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
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 21
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AERegions"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/ExposureController;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    .line 25
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AEState"

    const-class v2, Lcom/oneplus/camera/AutoExposureState;

    const-class v3, Lcom/oneplus/camera/ExposureController;

    sget-object v5, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ExposureController;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureCompensation"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/ExposureController;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    .line 34
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureCompensationRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/oneplus/camera/ExposureController;

    new-instance v4, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 38
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureCompensationStep"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/camera/ExposureController;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    .line 42
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsAELocked"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ExposureController;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    .line 46
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsAEOn"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ExposureController;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_ON:Lcom/oneplus/base/PropertyKey;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract lockAutoExposure(I)Lcom/oneplus/base/Handle;
.end method
