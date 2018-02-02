.class public final enum Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;
.super Ljava/lang/Enum;
.source "CaptureModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchCaptureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

.field public static final enum CLICK_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

.field public static final enum CLICK_MODE_INDICATOR:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

.field public static final enum SLIDE_ON_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

.field public static final enum SLIDE_ON_PREVIEW:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    const-string/jumbo v1, "SLIDE_ON_PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_PREVIEW:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    .line 444
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    const-string/jumbo v1, "SLIDE_ON_CAPTURE_MODES_PANEL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    .line 445
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    const-string/jumbo v1, "CLICK_CAPTURE_MODES_PANEL"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->CLICK_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    .line 446
    new-instance v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    const-string/jumbo v1, "CLICK_MODE_INDICATOR"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->CLICK_MODE_INDICATOR:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    .line 441
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_PREVIEW:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->CLICK_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->CLICK_MODE_INDICATOR:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->$VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 441
    const-class v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->$VALUES:[Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    return-object v0
.end method
