.class public final enum Lcom/oneplus/camera/KeyEventHandler$KeyResult;
.super Ljava/lang/Enum;
.source "KeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/KeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/KeyEventHandler$KeyResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/KeyEventHandler$KeyResult;

.field public static final enum HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

.field public static final enum HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

.field public static final enum NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    const-string/jumbo v1, "NOT_HANDLED"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 16
    new-instance v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    const-string/jumbo v1, "HANDLED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 20
    new-instance v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    const-string/jumbo v1, "HANDLED_AND_PASS_TO_SYSTEM"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/KeyEventHandler$KeyResult;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->$VALUES:[Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->$VALUES:[Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method
