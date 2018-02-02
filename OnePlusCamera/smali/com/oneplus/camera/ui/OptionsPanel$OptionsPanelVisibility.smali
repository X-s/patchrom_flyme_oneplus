.class public final enum Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;
.super Ljava/lang/Enum;
.source "OptionsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/OptionsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionsPanelVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

.field public static final enum GONE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

.field public static final enum UNKNOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

.field public static final enum VISIBLE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    const-string/jumbo v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->VISIBLE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    .line 60
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    const-string/jumbo v1, "GONE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->GONE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    .line 61
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->UNKNOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->VISIBLE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->GONE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->UNKNOWN:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->$VALUES:[Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->$VALUES:[Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    return-object v0
.end method
