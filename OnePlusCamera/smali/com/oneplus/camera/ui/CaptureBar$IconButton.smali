.class public final enum Lcom/oneplus/camera/ui/CaptureBar$IconButton;
.super Ljava/lang/Enum;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureBar$IconButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureBar$IconButton;

.field public static final enum FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

.field public static final enum FLASH:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

.field public static final enum SMILE_CAPTURE:Lcom/oneplus/camera/ui/CaptureBar$IconButton;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    const-string/jumbo v1, "FACE_BEAUTY"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureBar$IconButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    .line 294
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    const-string/jumbo v1, "SMILE_CAPTURE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureBar$IconButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->SMILE_CAPTURE:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    .line 295
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    const-string/jumbo v1, "FLASH"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/CaptureBar$IconButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->FLASH:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    .line 291
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->SMILE_CAPTURE:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->FLASH:Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->$VALUES:[Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureBar$IconButton;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 291
    const-class v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureBar$IconButton;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$IconButton;->$VALUES:[Lcom/oneplus/camera/ui/CaptureBar$IconButton;

    return-object v0
.end method
