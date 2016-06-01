.class public final enum Lcom/oneplus/api/constants/MessageCodes;
.super Ljava/lang/Enum;
.source "MessageCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/api/constants/MessageCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum ACCOUNT_NULL:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum METHOD_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum METHOD_NULL:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum PHONENUM_NULL:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum PHONE_CODE_NULL:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum REQUEST_FAIL:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum REQUEST_NULL:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum RESPONSE_FORMAT_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum RESPONSE_NEWINSTALL:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum RESPONSE_PARSE_EXCEPTION:Lcom/oneplus/api/constants/MessageCodes;

.field public static final enum URL_NULL:Lcom/oneplus/api/constants/MessageCodes;


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 18
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "REQUEST_NULL"

    const-string v2, "001"

    const-string v3, "Request is null."

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->REQUEST_NULL:Lcom/oneplus/api/constants/MessageCodes;

    .line 19
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "REQUEST_FAIL"

    const-string v2, "001"

    const-string v3, "Http Request fail."

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->REQUEST_FAIL:Lcom/oneplus/api/constants/MessageCodes;

    .line 20
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "URL_NULL"

    const-string v2, "002"

    const-string v3, "URL is null."

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->URL_NULL:Lcom/oneplus/api/constants/MessageCodes;

    .line 21
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "METHOD_NULL"

    const-string v2, "003"

    const-string v3, "Request method is null."

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->METHOD_NULL:Lcom/oneplus/api/constants/MessageCodes;

    .line 22
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "METHOD_NONSURPORT"

    const-string v2, "004"

    const-string v3, "Request method is not surport."

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->METHOD_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

    .line 23
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "RESPONSE_NEWINSTALL"

    const/4 v2, 0x5

    const-string v3, "005"

    const-string v4, "New Response install exception."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->RESPONSE_NEWINSTALL:Lcom/oneplus/api/constants/MessageCodes;

    .line 24
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "RESPONSE_FORMAT_NONSURPORT"

    const/4 v2, 0x6

    const-string v3, "006"

    const-string v4, "Response data format is not surport."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->RESPONSE_FORMAT_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

    .line 25
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "RESPONSE_PARSE_EXCEPTION"

    const/4 v2, 0x7

    const-string v3, "007"

    const-string v4, "Parse Response data exception."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->RESPONSE_PARSE_EXCEPTION:Lcom/oneplus/api/constants/MessageCodes;

    .line 28
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "ACCOUNT_NULL"

    const/16 v2, 0x8

    const-string v3, "101"

    const-string v4, "account is null."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->ACCOUNT_NULL:Lcom/oneplus/api/constants/MessageCodes;

    .line 29
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "PHONENUM_NULL"

    const/16 v2, 0x9

    const-string v3, "102"

    const-string v4, "phone number is null."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->PHONENUM_NULL:Lcom/oneplus/api/constants/MessageCodes;

    .line 30
    new-instance v0, Lcom/oneplus/api/constants/MessageCodes;

    const-string v1, "PHONE_CODE_NULL"

    const/16 v2, 0xa

    const-string v3, "103"

    const-string v4, "phone code is null."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/api/constants/MessageCodes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->PHONE_CODE_NULL:Lcom/oneplus/api/constants/MessageCodes;

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/oneplus/api/constants/MessageCodes;

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->REQUEST_NULL:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->REQUEST_FAIL:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->URL_NULL:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->METHOD_NULL:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->METHOD_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/api/constants/MessageCodes;->RESPONSE_NEWINSTALL:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oneplus/api/constants/MessageCodes;->RESPONSE_FORMAT_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oneplus/api/constants/MessageCodes;->RESPONSE_PARSE_EXCEPTION:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oneplus/api/constants/MessageCodes;->ACCOUNT_NULL:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oneplus/api/constants/MessageCodes;->PHONENUM_NULL:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oneplus/api/constants/MessageCodes;->PHONE_CODE_NULL:Lcom/oneplus/api/constants/MessageCodes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/api/constants/MessageCodes;->$VALUES:[Lcom/oneplus/api/constants/MessageCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/oneplus/api/constants/MessageCodes;->code:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/oneplus/api/constants/MessageCodes;->msg:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/api/constants/MessageCodes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/oneplus/api/constants/MessageCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/api/constants/MessageCodes;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/api/constants/MessageCodes;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/oneplus/api/constants/MessageCodes;->$VALUES:[Lcom/oneplus/api/constants/MessageCodes;

    invoke-virtual {v0}, [Lcom/oneplus/api/constants/MessageCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/api/constants/MessageCodes;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/api/constants/MessageCodes;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/api/constants/MessageCodes;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oneplus/api/constants/MessageCodes;->code:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oneplus/api/constants/MessageCodes;->msg:Ljava/lang/String;

    .line 70
    return-void
.end method
