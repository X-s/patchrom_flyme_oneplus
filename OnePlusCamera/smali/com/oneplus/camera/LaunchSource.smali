.class public final enum Lcom/oneplus/camera/LaunchSource;
.super Ljava/lang/Enum;
.source "LaunchSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/LaunchSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/LaunchSource;

.field public static final enum GESTURE:Lcom/oneplus/camera/LaunchSource;

.field public static final enum NORMAL:Lcom/oneplus/camera/LaunchSource;

.field public static final enum POWER_KEY:Lcom/oneplus/camera/LaunchSource;

.field public static final enum WIGGLE:Lcom/oneplus/camera/LaunchSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/camera/LaunchSource;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/LaunchSource;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/camera/LaunchSource;->NORMAL:Lcom/oneplus/camera/LaunchSource;

    .line 12
    new-instance v0, Lcom/oneplus/camera/LaunchSource;

    const-string/jumbo v1, "WIGGLE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/LaunchSource;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/camera/LaunchSource;->WIGGLE:Lcom/oneplus/camera/LaunchSource;

    .line 16
    new-instance v0, Lcom/oneplus/camera/LaunchSource;

    const-string/jumbo v1, "POWER_KEY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/LaunchSource;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/camera/LaunchSource;->POWER_KEY:Lcom/oneplus/camera/LaunchSource;

    .line 20
    new-instance v0, Lcom/oneplus/camera/LaunchSource;

    const-string/jumbo v1, "GESTURE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/LaunchSource;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/oneplus/camera/LaunchSource;->GESTURE:Lcom/oneplus/camera/LaunchSource;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/LaunchSource;

    sget-object v1, Lcom/oneplus/camera/LaunchSource;->NORMAL:Lcom/oneplus/camera/LaunchSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/LaunchSource;->WIGGLE:Lcom/oneplus/camera/LaunchSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/LaunchSource;->POWER_KEY:Lcom/oneplus/camera/LaunchSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/LaunchSource;->GESTURE:Lcom/oneplus/camera/LaunchSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/LaunchSource;->$VALUES:[Lcom/oneplus/camera/LaunchSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/LaunchSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/LaunchSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/LaunchSource;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/LaunchSource;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/LaunchSource;->$VALUES:[Lcom/oneplus/camera/LaunchSource;

    return-object v0
.end method
