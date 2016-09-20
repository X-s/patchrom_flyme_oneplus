.class public final enum Lcom/oneplus/base/component/ComponentState;
.super Ljava/lang/Enum;
.source "ComponentState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/base/component/ComponentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/base/component/ComponentState;

.field public static final enum INITIALIZING:Lcom/oneplus/base/component/ComponentState;

.field public static final enum NEW:Lcom/oneplus/base/component/ComponentState;

.field public static final enum RELEASED:Lcom/oneplus/base/component/ComponentState;

.field public static final enum RELEASING:Lcom/oneplus/base/component/ComponentState;

.field public static final enum RUNNING:Lcom/oneplus/base/component/ComponentState;


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
    new-instance v0, Lcom/oneplus/base/component/ComponentState;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/component/ComponentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentState;->NEW:Lcom/oneplus/base/component/ComponentState;

    .line 15
    new-instance v0, Lcom/oneplus/base/component/ComponentState;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/base/component/ComponentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentState;->INITIALIZING:Lcom/oneplus/base/component/ComponentState;

    .line 19
    new-instance v0, Lcom/oneplus/base/component/ComponentState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/base/component/ComponentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentState;->RUNNING:Lcom/oneplus/base/component/ComponentState;

    .line 23
    new-instance v0, Lcom/oneplus/base/component/ComponentState;

    const-string v1, "RELEASING"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/base/component/ComponentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentState;->RELEASING:Lcom/oneplus/base/component/ComponentState;

    .line 27
    new-instance v0, Lcom/oneplus/base/component/ComponentState;

    const-string v1, "RELEASED"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/base/component/ComponentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/component/ComponentState;->RELEASED:Lcom/oneplus/base/component/ComponentState;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentState;

    sget-object v1, Lcom/oneplus/base/component/ComponentState;->NEW:Lcom/oneplus/base/component/ComponentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/base/component/ComponentState;->INITIALIZING:Lcom/oneplus/base/component/ComponentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/base/component/ComponentState;->RUNNING:Lcom/oneplus/base/component/ComponentState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/base/component/ComponentState;->RELEASING:Lcom/oneplus/base/component/ComponentState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/base/component/ComponentState;->RELEASED:Lcom/oneplus/base/component/ComponentState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/base/component/ComponentState;->$VALUES:[Lcom/oneplus/base/component/ComponentState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/base/component/ComponentState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/base/component/ComponentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/component/ComponentState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/base/component/ComponentState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/base/component/ComponentState;->$VALUES:[Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v0}, [Lcom/oneplus/base/component/ComponentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/component/ComponentState;

    return-object v0
.end method
