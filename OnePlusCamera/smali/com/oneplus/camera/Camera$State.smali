.class public final enum Lcom/oneplus/camera/Camera$State;
.super Ljava/lang/Enum;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/Camera$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/Camera$State;

.field public static final enum CLOSED:Lcom/oneplus/camera/Camera$State;

.field public static final enum CLOSING:Lcom/oneplus/camera/Camera$State;

.field public static final enum OPENED:Lcom/oneplus/camera/Camera$State;

.field public static final enum OPENING:Lcom/oneplus/camera/Camera$State;

.field public static final enum UNAVAILABLE:Lcom/oneplus/camera/Camera$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 790
    new-instance v0, Lcom/oneplus/camera/Camera$State;

    const-string/jumbo v1, "OPENING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    .line 793
    sput-object v0, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    .line 794
    new-instance v0, Lcom/oneplus/camera/Camera$State;

    const-string/jumbo v1, "OPENED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    .line 797
    sput-object v0, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    .line 798
    new-instance v0, Lcom/oneplus/camera/Camera$State;

    const-string/jumbo v1, "CLOSING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    .line 801
    sput-object v0, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    .line 802
    new-instance v0, Lcom/oneplus/camera/Camera$State;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    .line 805
    sput-object v0, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    .line 806
    new-instance v0, Lcom/oneplus/camera/Camera$State;

    const-string/jumbo v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    .line 809
    sput-object v0, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    .line 788
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/camera/Camera$State;

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/camera/Camera$State;->$VALUES:[Lcom/oneplus/camera/Camera$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/Camera$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 788
    const-class v0, Lcom/oneplus/camera/Camera$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/Camera$State;
    .locals 1

    .prologue
    .line 788
    sget-object v0, Lcom/oneplus/camera/Camera$State;->$VALUES:[Lcom/oneplus/camera/Camera$State;

    return-object v0
.end method
