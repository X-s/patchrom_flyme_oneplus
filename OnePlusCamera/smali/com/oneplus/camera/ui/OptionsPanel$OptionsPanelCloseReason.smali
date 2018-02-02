.class public final enum Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;
.super Ljava/lang/Enum;
.source "OptionsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/OptionsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionsPanelCloseReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

.field public static final enum MANUALMODE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

.field public static final enum NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

.field public static final enum REVIEWING:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

.field public static final enum SELFTIMER_COUNT_DOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

.field public static final enum UNKNOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->UNKNOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    .line 38
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    const-string/jumbo v1, "NOT_SUPPORTED_IN_CAPTURE_MODE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    .line 39
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    const-string/jumbo v1, "REVIEWING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->REVIEWING:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    .line 40
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    const-string/jumbo v1, "MANUALMODE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->MANUALMODE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    .line 41
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    const-string/jumbo v1, "SELFTIMER_COUNT_DOWN"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->SELFTIMER_COUNT_DOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->UNKNOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->REVIEWING:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->MANUALMODE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->SELFTIMER_COUNT_DOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->$VALUES:[Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->$VALUES:[Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    return-object v0
.end method
