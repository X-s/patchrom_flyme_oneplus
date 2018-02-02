.class final enum Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
.super Ljava/lang/Enum;
.source "OptionsPanelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OptionsPanelButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum MORE:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum PHOTO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum SELF_TIMER:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string/jumbo v1, "PHOTO_RESOLUTION"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 101
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string/jumbo v1, "VIDEO_RESOLUTION"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 102
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string/jumbo v1, "SELF_TIMER"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 103
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string/jumbo v1, "GRID"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 104
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string/jumbo v1, "MORE"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->$VALUES:[Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;->$VALUES:[Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    return-object v0
.end method
