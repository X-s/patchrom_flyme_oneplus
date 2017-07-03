.class public final enum Lcom/oneplus/gallery/crop/CropModeType;
.super Ljava/lang/Enum;
.source "CropModeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/crop/CropModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/crop/CropModeType;

.field public static final enum FREE:Lcom/oneplus/gallery/crop/CropModeType;

.field public static final enum RATIO_16x9:Lcom/oneplus/gallery/crop/CropModeType;

.field public static final enum RATIO_1x1:Lcom/oneplus/gallery/crop/CropModeType;

.field public static final enum RATIO_3x2:Lcom/oneplus/gallery/crop/CropModeType;

.field public static final enum RATIO_4x3:Lcom/oneplus/gallery/crop/CropModeType;

.field public static final enum RATIO_9x16:Lcom/oneplus/gallery/crop/CropModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/oneplus/gallery/crop/CropModeType;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/crop/CropModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeType;->FREE:Lcom/oneplus/gallery/crop/CropModeType;

    .line 5
    new-instance v0, Lcom/oneplus/gallery/crop/CropModeType;

    const-string v1, "RATIO_1x1"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/crop/CropModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_1x1:Lcom/oneplus/gallery/crop/CropModeType;

    .line 6
    new-instance v0, Lcom/oneplus/gallery/crop/CropModeType;

    const-string v1, "RATIO_4x3"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/crop/CropModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_4x3:Lcom/oneplus/gallery/crop/CropModeType;

    .line 7
    new-instance v0, Lcom/oneplus/gallery/crop/CropModeType;

    const-string v1, "RATIO_3x2"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery/crop/CropModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_3x2:Lcom/oneplus/gallery/crop/CropModeType;

    .line 8
    new-instance v0, Lcom/oneplus/gallery/crop/CropModeType;

    const-string v1, "RATIO_16x9"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/gallery/crop/CropModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_16x9:Lcom/oneplus/gallery/crop/CropModeType;

    .line 9
    new-instance v0, Lcom/oneplus/gallery/crop/CropModeType;

    const-string v1, "RATIO_9x16"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_9x16:Lcom/oneplus/gallery/crop/CropModeType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/gallery/crop/CropModeType;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeType;->FREE:Lcom/oneplus/gallery/crop/CropModeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_1x1:Lcom/oneplus/gallery/crop/CropModeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_4x3:Lcom/oneplus/gallery/crop/CropModeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_3x2:Lcom/oneplus/gallery/crop/CropModeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_16x9:Lcom/oneplus/gallery/crop/CropModeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_9x16:Lcom/oneplus/gallery/crop/CropModeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeType;->$VALUES:[Lcom/oneplus/gallery/crop/CropModeType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/crop/CropModeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/oneplus/gallery/crop/CropModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/crop/CropModeType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/crop/CropModeType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeType;->$VALUES:[Lcom/oneplus/gallery/crop/CropModeType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/crop/CropModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/crop/CropModeType;

    return-object v0
.end method
