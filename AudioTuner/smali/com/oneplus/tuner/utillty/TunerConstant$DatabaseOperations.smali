.class public final enum Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;
.super Ljava/lang/Enum;
.source "TunerConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/utillty/TunerConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DatabaseOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

.field public static final enum DELETE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

.field public static final enum INSERT:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

.field public static final enum NONE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

.field public static final enum UPDATE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->NONE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    new-instance v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->DELETE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    new-instance v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->UPDATE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    new-instance v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->INSERT:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    sget-object v1, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->NONE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->DELETE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->UPDATE:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->INSERT:Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->$VALUES:[Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->$VALUES:[Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    invoke-virtual {v0}, [Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/tuner/utillty/TunerConstant$DatabaseOperations;

    return-object v0
.end method
