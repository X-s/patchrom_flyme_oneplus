.class final enum Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;
.super Ljava/lang/Enum;
.source "TouchFocusExposureUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/TouchFocusExposureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

.field public static final enum EXPOSURE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

.field public static final enum FOCUS:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

.field public static final enum FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    const-string v1, "EXPOSURE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->EXPOSURE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    .line 67
    new-instance v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    const-string v1, "FOCUS"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    .line 68
    new-instance v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    const-string v1, "FOCUS_EXPOSURE_COMBINE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    sget-object v1, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->EXPOSURE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->FOCUS_EXPOSURE_COMBINE:Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->$VALUES:[Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->$VALUES:[Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    invoke-virtual {v0}, [Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/ui/TouchFocusExposureUI$TriggerType;

    return-object v0
.end method
