.class public final enum Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
.super Ljava/lang/Enum;
.source "CaptureButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

.field public static final enum NORMAL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

.field public static final enum SMALL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->NORMAL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 54
    new-instance v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->SMALL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->NORMAL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->SMALL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->$VALUES:[Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->$VALUES:[Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    invoke-virtual {v0}, [Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    return-object v0
.end method
