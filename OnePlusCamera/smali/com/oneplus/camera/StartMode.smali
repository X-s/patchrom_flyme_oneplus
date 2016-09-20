.class public final enum Lcom/oneplus/camera/StartMode;
.super Ljava/lang/Enum;
.source "StartMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/StartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/StartMode;

.field public static final enum NORMAL:Lcom/oneplus/camera/StartMode;

.field public static final enum NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

.field public static final enum NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

.field public static final enum SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

.field public static final enum SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

.field public static final enum SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/oneplus/camera/StartMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    .line 15
    new-instance v0, Lcom/oneplus/camera/StartMode;

    const-string v1, "NORMAL_PHOTO"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    .line 19
    new-instance v0, Lcom/oneplus/camera/StartMode;

    const-string v1, "NORMAL_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    .line 23
    new-instance v0, Lcom/oneplus/camera/StartMode;

    const-string v1, "SECURE_PHOTO"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    .line 27
    new-instance v0, Lcom/oneplus/camera/StartMode;

    const-string v1, "SERVICE_PHOTO"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    .line 31
    new-instance v0, Lcom/oneplus/camera/StartMode;

    const-string v1, "SERVICE_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/StartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/StartMode;

    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/StartMode;->$VALUES:[Lcom/oneplus/camera/StartMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/StartMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/StartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/StartMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/StartMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/StartMode;->$VALUES:[Lcom/oneplus/camera/StartMode;

    invoke-virtual {v0}, [Lcom/oneplus/camera/StartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/StartMode;

    return-object v0
.end method
