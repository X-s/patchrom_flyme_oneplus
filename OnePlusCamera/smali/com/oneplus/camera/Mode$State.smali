.class public final enum Lcom/oneplus/camera/Mode$State;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/Mode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/Mode$State;

.field public static final enum DISABLED:Lcom/oneplus/camera/Mode$State;

.field public static final enum ENTERED:Lcom/oneplus/camera/Mode$State;

.field public static final enum ENTERING:Lcom/oneplus/camera/Mode$State;

.field public static final enum EXITED:Lcom/oneplus/camera/Mode$State;

.field public static final enum EXITING:Lcom/oneplus/camera/Mode$State;

.field public static final enum RELEASED:Lcom/oneplus/camera/Mode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/oneplus/camera/Mode$State;

    const-string/jumbo v1, "ENTERING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    .line 41
    new-instance v0, Lcom/oneplus/camera/Mode$State;

    const-string/jumbo v1, "ENTERED"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v0, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    .line 45
    new-instance v0, Lcom/oneplus/camera/Mode$State;

    const-string/jumbo v1, "EXITING"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    .line 48
    sput-object v0, Lcom/oneplus/camera/Mode$State;->EXITING:Lcom/oneplus/camera/Mode$State;

    .line 49
    new-instance v0, Lcom/oneplus/camera/Mode$State;

    const-string/jumbo v1, "EXITED"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    .line 53
    new-instance v0, Lcom/oneplus/camera/Mode$State;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v0, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    .line 57
    new-instance v0, Lcom/oneplus/camera/Mode$State;

    const-string/jumbo v1, "RELEASED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    .line 60
    sput-object v0, Lcom/oneplus/camera/Mode$State;->RELEASED:Lcom/oneplus/camera/Mode$State;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/Mode$State;

    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITING:Lcom/oneplus/camera/Mode$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/Mode$State;->RELEASED:Lcom/oneplus/camera/Mode$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/Mode$State;->$VALUES:[Lcom/oneplus/camera/Mode$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/oneplus/camera/Mode$State;, "Lcom/oneplus/camera/Mode<TT;>.State;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/Mode$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/oneplus/camera/Mode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Mode$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/Mode$State;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oneplus/camera/Mode$State;->$VALUES:[Lcom/oneplus/camera/Mode$State;

    return-object v0
.end method
