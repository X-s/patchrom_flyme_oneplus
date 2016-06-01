.class public final enum Lcom/oneplus/camera/ui/CaptureButtons$Button;
.super Ljava/lang/Enum;
.source "CaptureButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureButtons$Button;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureButtons$Button;

.field public static final enum PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/oneplus/camera/ui/CaptureButtons$Button;

    const-string v1, "PRIMARY"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureButtons$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureButtons$Button;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/ui/CaptureButtons$Button;->$VALUES:[Lcom/oneplus/camera/ui/CaptureButtons$Button;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureButtons$Button;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons$Button;->$VALUES:[Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-virtual {v0}, [Lcom/oneplus/camera/ui/CaptureButtons$Button;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/ui/CaptureButtons$Button;

    return-object v0
.end method
