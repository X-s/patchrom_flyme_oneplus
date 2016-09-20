.class final enum Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;
.super Ljava/lang/Enum;
.source "FocusExposureIndicatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IndicatorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

.field public static final enum DRAGING_EXPOSURE_COMP:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

.field public static final enum DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

.field public static final enum INVISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

.field public static final enum VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

.field public static final enum VISIBLE_IN_ANIMATING:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

.field public static final enum VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    const-string v1, "DRAGING_EXPOSURE_COMP"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 101
    new-instance v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    const-string v1, "DRAGING_INDICATOR"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 102
    new-instance v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->INVISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 103
    new-instance v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 104
    new-instance v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    const-string v1, "VISIBLE_IN_ANIMATING"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 105
    new-instance v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    const-string v1, "VISIBLE_SEPARATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 98
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->INVISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->$VALUES:[Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->$VALUES:[Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v0}, [Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    return-object v0
.end method
