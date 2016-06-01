.class public final enum Lcom/oneplus/camera/PhotoCaptureState;
.super Ljava/lang/Enum;
.source "PhotoCaptureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/PhotoCaptureState;

.field public static final enum CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

.field public static final enum PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

.field public static final enum READY:Lcom/oneplus/camera/PhotoCaptureState;

.field public static final enum REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

.field public static final enum STARTING:Lcom/oneplus/camera/PhotoCaptureState;

.field public static final enum STOPPING:Lcom/oneplus/camera/PhotoCaptureState;


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
    new-instance v0, Lcom/oneplus/camera/PhotoCaptureState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    .line 15
    new-instance v0, Lcom/oneplus/camera/PhotoCaptureState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    .line 19
    new-instance v0, Lcom/oneplus/camera/PhotoCaptureState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    .line 23
    new-instance v0, Lcom/oneplus/camera/PhotoCaptureState;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    .line 27
    new-instance v0, Lcom/oneplus/camera/PhotoCaptureState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    .line 31
    new-instance v0, Lcom/oneplus/camera/PhotoCaptureState;

    const-string v1, "REVIEWING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/PhotoCaptureState;

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/PhotoCaptureState;->$VALUES:[Lcom/oneplus/camera/PhotoCaptureState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/PhotoCaptureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/PhotoCaptureState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/PhotoCaptureState;->$VALUES:[Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, [Lcom/oneplus/camera/PhotoCaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/PhotoCaptureState;

    return-object v0
.end method
