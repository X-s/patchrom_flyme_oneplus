.class public final enum Lcom/oneplus/api/constants/Ret;
.super Ljava/lang/Enum;
.source "Ret.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/api/constants/Ret;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/api/constants/Ret;

.field public static final enum FAIL:Lcom/oneplus/api/constants/Ret;

.field public static final enum SUCCESS:Lcom/oneplus/api/constants/Ret;


# instance fields
.field private code:Ljava/lang/String;

.field private des:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lcom/oneplus/api/constants/Ret;

    const-string v1, "SUCCESS"

    const-string v2, "1"

    const-string v3, "\u6210\u529f"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oneplus/api/constants/Ret;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/Ret;->SUCCESS:Lcom/oneplus/api/constants/Ret;

    .line 18
    new-instance v0, Lcom/oneplus/api/constants/Ret;

    const-string v1, "FAIL"

    const-string v2, "0"

    const-string v3, "\u5931\u8d25"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oneplus/api/constants/Ret;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/Ret;->FAIL:Lcom/oneplus/api/constants/Ret;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/api/constants/Ret;

    sget-object v1, Lcom/oneplus/api/constants/Ret;->SUCCESS:Lcom/oneplus/api/constants/Ret;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/api/constants/Ret;->FAIL:Lcom/oneplus/api/constants/Ret;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/api/constants/Ret;->$VALUES:[Lcom/oneplus/api/constants/Ret;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "des"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/oneplus/api/constants/Ret;->code:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/oneplus/api/constants/Ret;->des:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static getRet(Ljava/lang/String;)Lcom/oneplus/api/constants/Ret;
    .locals 7
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p0, :cond_1

    const-string v5, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    invoke-static {}, Lcom/oneplus/api/constants/Ret;->values()[Lcom/oneplus/api/constants/Ret;

    move-result-object v4

    .line 48
    .local v4, "rets":[Lcom/oneplus/api/constants/Ret;
    move-object v0, v4

    .local v0, "arr$":[Lcom/oneplus/api/constants/Ret;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 49
    .local v3, "ret":Lcom/oneplus/api/constants/Ret;
    invoke-virtual {v3}, Lcom/oneplus/api/constants/Ret;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    .end local v0    # "arr$":[Lcom/oneplus/api/constants/Ret;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ret":Lcom/oneplus/api/constants/Ret;
    .end local v4    # "rets":[Lcom/oneplus/api/constants/Ret;
    :goto_1
    return-object v3

    .line 48
    .restart local v0    # "arr$":[Lcom/oneplus/api/constants/Ret;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "ret":Lcom/oneplus/api/constants/Ret;
    .restart local v4    # "rets":[Lcom/oneplus/api/constants/Ret;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "arr$":[Lcom/oneplus/api/constants/Ret;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "ret":Lcom/oneplus/api/constants/Ret;
    .end local v4    # "rets":[Lcom/oneplus/api/constants/Ret;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/api/constants/Ret;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/oneplus/api/constants/Ret;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/api/constants/Ret;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/api/constants/Ret;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/oneplus/api/constants/Ret;->$VALUES:[Lcom/oneplus/api/constants/Ret;

    invoke-virtual {v0}, [Lcom/oneplus/api/constants/Ret;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/api/constants/Ret;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/api/constants/Ret;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/api/constants/Ret;->des:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oneplus/api/constants/Ret;->code:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oneplus/api/constants/Ret;->des:Ljava/lang/String;

    .line 83
    return-void
.end method
