.class final enum Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;
.super Ljava/lang/Enum;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CaptureButtonFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

.field public static final enum CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

.field public static final enum CAPTURE_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

.field public static final enum NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

.field public static final enum PAUSE_RESUME_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 156
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    const-string/jumbo v1, "CAPTURE_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 157
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    const-string/jumbo v1, "CAPTURE_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 158
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    const-string/jumbo v1, "PAUSE_RESUME_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->PAUSE_RESUME_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->PAUSE_RESUME_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->$VALUES:[Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    const-class v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->$VALUES:[Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    return-object v0
.end method
