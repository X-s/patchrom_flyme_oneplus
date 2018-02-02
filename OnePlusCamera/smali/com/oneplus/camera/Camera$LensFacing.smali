.class public final enum Lcom/oneplus/camera/Camera$LensFacing;
.super Ljava/lang/Enum;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LensFacing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/Camera$LensFacing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/Camera$LensFacing;

.field public static final enum BACK:Lcom/oneplus/camera/Camera$LensFacing;

.field public static final enum BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

.field public static final enum BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

.field public static final enum FRONT:Lcom/oneplus/camera/Camera$LensFacing;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 593
    new-instance v0, Lcom/oneplus/camera/Camera$LensFacing;

    const-string/jumbo v1, "BACK"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/Camera$LensFacing;-><init>(Ljava/lang/String;I)V

    .line 596
    sput-object v0, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    .line 597
    new-instance v0, Lcom/oneplus/camera/Camera$LensFacing;

    const-string/jumbo v1, "BACK_WIDE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/Camera$LensFacing;-><init>(Ljava/lang/String;I)V

    .line 600
    sput-object v0, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    .line 601
    new-instance v0, Lcom/oneplus/camera/Camera$LensFacing;

    const-string/jumbo v1, "BACK_TELE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/Camera$LensFacing;-><init>(Ljava/lang/String;I)V

    .line 604
    sput-object v0, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    .line 605
    new-instance v0, Lcom/oneplus/camera/Camera$LensFacing;

    const-string/jumbo v1, "FRONT"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/Camera$LensFacing;-><init>(Ljava/lang/String;I)V

    .line 608
    sput-object v0, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    .line 591
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/Camera$LensFacing;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/Camera$LensFacing;->$VALUES:[Lcom/oneplus/camera/Camera$LensFacing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/Camera$LensFacing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 591
    const-class v0, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$LensFacing;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/Camera$LensFacing;
    .locals 1

    .prologue
    .line 591
    sget-object v0, Lcom/oneplus/camera/Camera$LensFacing;->$VALUES:[Lcom/oneplus/camera/Camera$LensFacing;

    return-object v0
.end method
