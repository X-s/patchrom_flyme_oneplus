.class final enum Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
.super Ljava/lang/Enum;
.source "QtiApnProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ApnProfileTypeModem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_LBS:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_MMS:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_TETHERED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_UNSPECIFIED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;


# instance fields
.field id:I

.field serviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 36
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    const-string/jumbo v1, "PROFILE_TYPE_UNSPECIFIED"

    .line 37
    const-string/jumbo v2, "default"

    .line 36
    invoke-direct {v0, v1, v6, v4, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 37
    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 38
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    const-string/jumbo v1, "PROFILE_TYPE_MMS"

    const-string/jumbo v2, "mms"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 39
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    const-string/jumbo v1, "PROFILE_TYPE_LBS"

    const-string/jumbo v2, "supl"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 40
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    const-string/jumbo v1, "PROFILE_TYPE_TETHERED"

    const-string/jumbo v2, "dun"

    const/16 v3, 0x40

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v7

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "i"    # I
    .param p4, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->id:I

    .line 47
    iput-object p4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->serviceType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static getApnProfileTypeModem(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .locals 1
    .param p0, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string/jumbo v0, "default"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0

    .line 62
    :cond_0
    const-string/jumbo v0, "mms"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0

    .line 64
    :cond_1
    const-string/jumbo v0, "supl"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0

    .line 66
    :cond_2
    const-string/jumbo v0, "dun"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0

    .line 70
    :cond_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->$VALUES:[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method


# virtual methods
.method public getDataServiceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getid()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->id:I

    return v0
.end method
