.class final enum Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
.super Ljava/lang/Enum;
.source "ManualModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

.field public static final enum FADE_IN:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

.field public static final enum FADE_IN_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

.field public static final enum FADE_OUT_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

.field public static final enum NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    const-string/jumbo v1, "FADE_IN"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .line 343
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    const-string/jumbo v1, "FADE_IN_FROM_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .line 344
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    const-string/jumbo v1, "FADE_OUT_FROM_BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_OUT_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .line 345
    new-instance v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    .line 340
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_OUT_FROM_BOTTOM:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->$VALUES:[Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    const-class v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->$VALUES:[Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    return-object v0
.end method
