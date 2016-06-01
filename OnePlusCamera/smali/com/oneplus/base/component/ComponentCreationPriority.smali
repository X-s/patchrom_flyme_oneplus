.class public final enum Lcom/oneplus/base/component/ComponentCreationPriority;
.super Ljava/lang/Enum;
.source "ComponentCreationPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/base/component/ComponentCreationPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/base/component/ComponentCreationPriority;

.field public static final enum HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

.field public static final enum LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

.field public static final enum LOW:Lcom/oneplus/base/component/ComponentCreationPriority;

.field public static final enum NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

.field public static final enum ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/oneplus/base/component/ComponentCreationPriority;

    const-string v1, "LAUNCH"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/component/ComponentCreationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    .line 15
    new-instance v0, Lcom/oneplus/base/component/ComponentCreationPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/base/component/ComponentCreationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    .line 19
    new-instance v0, Lcom/oneplus/base/component/ComponentCreationPriority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/base/component/ComponentCreationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    .line 23
    new-instance v0, Lcom/oneplus/base/component/ComponentCreationPriority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/base/component/ComponentCreationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LOW:Lcom/oneplus/base/component/ComponentCreationPriority;

    .line 27
    new-instance v0, Lcom/oneplus/base/component/ComponentCreationPriority;

    const-string v1, "ON_DEMAND"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/base/component/ComponentCreationPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentCreationPriority;

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->LOW:Lcom/oneplus/base/component/ComponentCreationPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->$VALUES:[Lcom/oneplus/base/component/ComponentCreationPriority;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/base/component/ComponentCreationPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/component/ComponentCreationPriority;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/base/component/ComponentCreationPriority;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->$VALUES:[Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {v0}, [Lcom/oneplus/base/component/ComponentCreationPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/component/ComponentCreationPriority;

    return-object v0
.end method
