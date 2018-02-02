.class public final enum Lcom/oneplus/io/Storage$Type;
.super Ljava/lang/Enum;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/io/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/io/Storage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/io/Storage$Type;

.field public static final enum INTERNAL:Lcom/oneplus/io/Storage$Type;

.field public static final enum SD_CARD:Lcom/oneplus/io/Storage$Type;

.field public static final enum UNKNOWN:Lcom/oneplus/io/Storage$Type;

.field public static final enum USB:Lcom/oneplus/io/Storage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/oneplus/io/Storage$Type;

    const-string/jumbo v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/io/Storage$Type;-><init>(Ljava/lang/String;I)V

    .line 16
    sput-object v0, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    .line 17
    new-instance v0, Lcom/oneplus/io/Storage$Type;

    const-string/jumbo v1, "SD_CARD"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/io/Storage$Type;-><init>(Ljava/lang/String;I)V

    .line 20
    sput-object v0, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    .line 21
    new-instance v0, Lcom/oneplus/io/Storage$Type;

    const-string/jumbo v1, "USB"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/io/Storage$Type;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lcom/oneplus/io/Storage$Type;->USB:Lcom/oneplus/io/Storage$Type;

    .line 25
    new-instance v0, Lcom/oneplus/io/Storage$Type;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/io/Storage$Type;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/oneplus/io/Storage$Type;->UNKNOWN:Lcom/oneplus/io/Storage$Type;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/io/Storage$Type;

    sget-object v1, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/io/Storage$Type;->USB:Lcom/oneplus/io/Storage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/io/Storage$Type;->UNKNOWN:Lcom/oneplus/io/Storage$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/io/Storage$Type;->$VALUES:[Lcom/oneplus/io/Storage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/io/Storage$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/oneplus/io/Storage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/Storage$Type;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/io/Storage$Type;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/oneplus/io/Storage$Type;->$VALUES:[Lcom/oneplus/io/Storage$Type;

    return-object v0
.end method
