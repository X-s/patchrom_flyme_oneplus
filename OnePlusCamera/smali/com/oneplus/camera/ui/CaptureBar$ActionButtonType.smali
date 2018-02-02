.class final enum Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;
.super Ljava/lang/Enum;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

.field public static final enum FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

.field public static final enum HDR_HQ:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

.field public static final enum MANUAL_MODE_CUSTOM:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

.field public static final enum RAW:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

.field public static final enum RESOLUTION:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

.field public static final enum SELF_TIMER:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 499
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    const-string/jumbo v1, "SELF_TIMER"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->SELF_TIMER:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    .line 500
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    const-string/jumbo v1, "RESOLUTION"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->RESOLUTION:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    .line 501
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    const-string/jumbo v1, "FACE_BEAUTY"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    .line 502
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    const-string/jumbo v1, "HDR_HQ"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->HDR_HQ:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    .line 503
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    const-string/jumbo v1, "MANUAL_MODE_CUSTOM"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->MANUAL_MODE_CUSTOM:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    .line 504
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    const-string/jumbo v1, "RAW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->RAW:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    .line 497
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->SELF_TIMER:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->RESOLUTION:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->HDR_HQ:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->MANUAL_MODE_CUSTOM:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->RAW:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->$VALUES:[Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 497
    const-class v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;
    .locals 1

    .prologue
    .line 497
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->$VALUES:[Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    return-object v0
.end method
