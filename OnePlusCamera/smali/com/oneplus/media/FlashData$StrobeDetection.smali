.class public final enum Lcom/oneplus/media/FlashData$StrobeDetection;
.super Ljava/lang/Enum;
.source "FlashData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/media/FlashData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrobeDetection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/media/FlashData$StrobeDetection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/media/FlashData$StrobeDetection;

.field public static final enum NO_STROBE:Lcom/oneplus/media/FlashData$StrobeDetection;

.field public static final enum STROBE_DETECTION:Lcom/oneplus/media/FlashData$StrobeDetection;

.field public static final enum STROBE_NO_DETECTION:Lcom/oneplus/media/FlashData$StrobeDetection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/oneplus/media/FlashData$StrobeDetection;

    const-string/jumbo v1, "NO_STROBE"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/media/FlashData$StrobeDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/media/FlashData$StrobeDetection;->NO_STROBE:Lcom/oneplus/media/FlashData$StrobeDetection;

    .line 39
    new-instance v0, Lcom/oneplus/media/FlashData$StrobeDetection;

    const-string/jumbo v1, "STROBE_NO_DETECTION"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/media/FlashData$StrobeDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/media/FlashData$StrobeDetection;->STROBE_NO_DETECTION:Lcom/oneplus/media/FlashData$StrobeDetection;

    .line 40
    new-instance v0, Lcom/oneplus/media/FlashData$StrobeDetection;

    const-string/jumbo v1, "STROBE_DETECTION"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/media/FlashData$StrobeDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/media/FlashData$StrobeDetection;->STROBE_DETECTION:Lcom/oneplus/media/FlashData$StrobeDetection;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/media/FlashData$StrobeDetection;

    sget-object v1, Lcom/oneplus/media/FlashData$StrobeDetection;->NO_STROBE:Lcom/oneplus/media/FlashData$StrobeDetection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/media/FlashData$StrobeDetection;->STROBE_NO_DETECTION:Lcom/oneplus/media/FlashData$StrobeDetection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/media/FlashData$StrobeDetection;->STROBE_DETECTION:Lcom/oneplus/media/FlashData$StrobeDetection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/media/FlashData$StrobeDetection;->$VALUES:[Lcom/oneplus/media/FlashData$StrobeDetection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/media/FlashData$StrobeDetection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/oneplus/media/FlashData$StrobeDetection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/FlashData$StrobeDetection;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/media/FlashData$StrobeDetection;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oneplus/media/FlashData$StrobeDetection;->$VALUES:[Lcom/oneplus/media/FlashData$StrobeDetection;

    return-object v0
.end method
