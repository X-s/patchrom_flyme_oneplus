.class public final enum Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;
.super Ljava/lang/Enum;
.source "TunerConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/utillty/TunerConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

.field public static final enum NONE:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

.field public static final enum RENAME:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

.field public static final enum SAVE:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->NONE:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    new-instance v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    const-string v1, "SAVE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->SAVE:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    new-instance v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    const-string v1, "RENAME"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->RENAME:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    sget-object v1, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->NONE:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->SAVE:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->RENAME:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->$VALUES:[Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->$VALUES:[Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    invoke-virtual {v0}, [Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    return-object v0
.end method
