.class public final enum Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
.super Ljava/lang/Enum;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

.field public static final enum CARDTYPE_2G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

.field public static final enum CARDTYPE_3G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

.field public static final enum CARDTYPE_4G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

.field public static final enum UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 61
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    const-string/jumbo v1, "CARDTYPE_2G"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_2G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    const-string/jumbo v1, "CARDTYPE_3G"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;-><init>(Ljava/lang/String;I)V

    .line 62
    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_3G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    const-string/jumbo v1, "CARDTYPE_4G"

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_4G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_2G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_3G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_4G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object v0
.end method
